/obj/item/organ/internal/lungs
	name = "lungs"
	icon_state = "lungs"
	gender = PLURAL
	organ_tag = O_LUNGS
	parent_organ = BP_TORSO

/obj/item/organ/internal/lungs/process()
	..()

	if(!owner)
		return

	//VOREStation Edit Start Lungs were a surprisingly lethal cause of bloodloss.
	if(is_broken())
		if(prob(4))
			/* Bastion of Endeavor Translation
			spawn owner?.custom_emote(VISIBLE_MESSAGE, "coughs up a large amount of blood!")
			*/
			spawn owner?.custom_emote(VISIBLE_MESSAGE, "[verb_ru(owner, "отхаркнул")] большим количеством крови!")
			// End of Bastion of Endeavor Translation
			var/bleeding_rng = rand(3,5)
			owner.drip(bleeding_rng)
		if(prob(8)) //This is a medical emergency. Will kill within minutes unless exceedingly lucky.
			/* Bastion of Endeavor Translation
			spawn owner?.custom_emote(VISIBLE_MESSAGE, "gasps for air!")
			*/
			spawn owner?.custom_emote(VISIBLE_MESSAGE, "[verb_ru(owner, "задыха;ется;ется;ется;ются;")]!")
			// End of Bastion of Endeavor Translation
			owner.AdjustLosebreath(15)

	else if(is_bruised()) //Only bruised? That's an annoyance and can cause some more damage (via brainloss due to oxyloss)
		if(prob(2)) //But let's not kill people too quickly.
			/* Bastion of Endeavor Translation
			spawn owner?.custom_emote(VISIBLE_MESSAGE, "coughs up a small amount of blood!")
			*/
			spawn owner?.custom_emote(VISIBLE_MESSAGE, "[verb_ru(owner, "отхаркнул")] кровью!")
			// End of Bastion of Endeavor Translation
			var/bleeding_rng = rand(1,2)
			owner.drip(bleeding_rng)
		if(prob(4)) //Get to medical quickly. but shouldn't kill without exceedingly bad RNG.
			/* Bastion of Endeavor Translation
			spawn owner?.custom_emote(VISIBLE_MESSAGE, "gasps for air!")
			*/
			spawn owner?.custom_emote(VISIBLE_MESSAGE, "[verb_ru(owner, "задыха;ется;ется;ется;ются;")]!")
			// End of Bastion of Endeavor Translation
			owner.AdjustLosebreath(10) //Losebreath is a DoT that does 1:1 damage and prevents oxyloss healing via breathing.
	//VOREStation Edit End

	if(owner.internal_organs_by_name[O_BRAIN]) // As the brain starts having Trouble, the lungs start malfunctioning.
		var/obj/item/organ/internal/brain/Brain = owner.internal_organs_by_name[O_BRAIN]
		if(Brain.get_control_efficiency() <= 0.8)
			if(prob(4 / max(0.1,Brain.get_control_efficiency())))
				/* Bastion of Endeavor Translation
				spawn owner?.custom_emote(VISIBLE_MESSAGE, "gasps for air!")
				*/
				spawn owner?.custom_emote(VISIBLE_MESSAGE, "[verb_ru(owner, "задыха;ется;ется;ется;ются;")]!")
				// End of Bastion of Endeavor Translation
				owner.AdjustLosebreath(round(3 / max(0.1,Brain.get_control_efficiency())))

/obj/item/organ/internal/lungs/proc/rupture()
	if(owner)
		var/obj/item/organ/external/parent = owner.get_organ(parent_organ)
		if(istype(parent))
			/* Bastion of Endeavor Translation
			owner.custom_pain("You feel a stabbing pain in your [parent.name]!", 50)
			*/
			owner.custom_pain("Вы чувствуете острую боль в [concat_ru("сво;ём;ей;ём;их;", parent, PCASE)]!", 50)
			// End of Bastion of Endeavor Translation
	bruise()

/obj/item/organ/internal/lungs/handle_germ_effects()
	. = ..() //Up should return an infection level as an integer
	if(!. || !owner) return

	//Bacterial pneumonia
	if (. >= 1)
		if(prob(5))
			owner.emote("cough")
	if (. >= 2)
		if(prob(1))
			/* Bastion of Endeavor Translation
			owner.custom_pain("You suddenly feel short of breath and take a sharp, painful breath!",1)
			*/
			owner.custom_pain("Вам резко начало не хватать воздуха, и Вы делаете тяжёлый, больной вдох!",1)
			// End of Bastion of Endeavor Translation
			owner.adjustOxyLoss(30) //Look it's hard to simulate low O2 perfusion okay

/obj/item/organ/internal/lungs/grey
	icon_state = "lungs_grey"

/obj/item/organ/internal/lungs/grey/colormatch/New()
	..()
	var/mob/living/carbon/human/H = null
	spawn(15)
		if(owner && ishuman(owner))
			H = owner
			color = H.species.blood_color
