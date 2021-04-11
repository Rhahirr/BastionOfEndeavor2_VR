/datum/species
	//This is so that if a race is using the chimera revive they can't use it more than once.
	//Shouldn't really be seen in play too often, but it's case an admin event happens and they give a non chimera the chimera revive. Only one person can use the chimera revive at a time per race.
	//var/reviving = 0 //commented out 'cause moved to mob
	holder_type = /obj/item/weapon/holder/micro //This allows you to pick up crew
	min_age = 18
	descriptors = list()

	var/organic_food_coeff = 1
	var/synthetic_food_coeff = 0
	//var/vore_numbing = 0
	var/metabolism = 0.0015
	var/lightweight = FALSE //Oof! Nonhelpful bump stumbles.
	var/trashcan = FALSE //It's always sunny in the wrestling ring.
	var/eat_minerals = FALSE //HEAVY METAL DIET
	var/base_species = null // Unused outside of a few species
	var/selects_bodytype = FALSE // Allows the species to choose from body types like custom species can, affecting suit fitting and etcetera as you would expect.

	var/is_weaver = FALSE
	var/silk_production = FALSE
	var/silk_reserve = 100
	var/silk_max_reserve = 500
	var/silk_color = "#FFFFFF"

	var/list/traits = list()

/datum/species/proc/give_numbing_bite() //Holy SHIT this is hacky, but it works. Updating a mob's attacks mid game is insane.
	unarmed_attacks = list()
	unarmed_types += /datum/unarmed_attack/bite/sharp/numbing
	for(var/u_type in unarmed_types)
		unarmed_attacks += new u_type()

/datum/species/create_organs(var/mob/living/carbon/human/H)
	if(H.nif)
		var/type = H.nif.type
		var/durability = H.nif.durability
		var/list/nifsofts = H.nif.nifsofts
		var/list/nif_savedata = H.nif.save_data.Copy()
		..()

		var/obj/item/device/nif/nif = new type(H,durability,nif_savedata)
		nif.nifsofts = nifsofts
	else
		..()
/datum/species/proc/produceCopy(var/list/traits,var/mob/living/carbon/human/H, var/custom_base)	
	var/datum/species/S
	//If species allows custom base, and custom base is set, apply it, otherwise use default.
	if(selects_bodytype && custom_base)
		S = GLOB.all_species[custom_base]
	else
		S = GLOB.all_species[src.name]
	ASSERT(S)
	ASSERT(istype(H))
	var/datum/species/new_copy = new S.type()

	for(var/i in S.vars) //Thorough copy of species.
		if(new_copy.vars[i] != S.vars[i])
			//Skipping lists because they may contain more lists, copy those manually.
			//Also ignoring type var since it's read-only and will runtime.
			if(islist(vars[i]))
				continue
			new_copy.vars[i] = S.vars[i]

	for(var/organ in S.has_limbs) //Copy important organ data generated by species.
		var/list/organ_data = S.has_limbs[organ]
		new_copy.has_limbs[organ] = organ_data.Copy()

	new_copy.traits = traits

	//If you had traits, apply them
	if(new_copy.traits)
		for(var/trait in new_copy.traits)
			var/datum/trait/T = all_traits[trait]
			T.apply(new_copy, H)

	//Set up a mob
	H.species = new_copy
	H.icon_state = new_copy.get_bodytype()

	if(new_copy.holder_type)
		H.holder_type = new_copy.holder_type

	if(H.dna)
		H.dna.ready_dna(H)

	return new_copy


/datum/species/get_bodytype()
	return base_species