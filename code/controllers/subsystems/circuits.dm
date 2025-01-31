//
// This is for custom circuits, mostly the initialization of global properties about them.
// Might make this also process them in the future if its better to do that than using the obj ticker.
//
SUBSYSTEM_DEF(circuit)
	/* Bastion of Endeavor Translation
	name = "Circuit"
	*/
	name = "Микросхемы"
	// End of Bastion of Endeavor Translation
	init_order = INIT_ORDER_CIRCUIT
	flags = SS_NO_FIRE
	var/list/all_components = list()								// Associative list of [component_name]:[component_path] pairs
	var/list/cached_components = list()								// Associative list of [component_path]:[component] pairs
	var/list/all_assemblies = list()								// Associative list of [assembly_name]:[assembly_path] pairs
	var/list/cached_assemblies = list()								// Associative list of [assembly_path]:[assembly] pairs
	var/list/all_circuits = list()									// Associative list of [circuit_name]:[circuit_path] pairs
	var/list/circuit_fabricator_recipe_list = list()				// Associative list of [category_name]:[list_of_circuit_paths] pairs
//	var/cost_multiplier = MINERAL_MATERIAL_AMOUNT / 10 // Each circuit cost unit is 200cm3

/datum/controller/subsystem/circuit/Recover()
	flags |= SS_NO_INIT // Make extra sure we don't initialize twice.

/datum/controller/subsystem/circuit/Initialize(timeofday)
	circuits_init()
	return ..()

/datum/controller/subsystem/circuit/proc/circuits_init()
	//Cached lists for free performance
	for(var/obj/item/integrated_circuit/IC as anything in typesof(/obj/item/integrated_circuit))
		var/path = IC
		all_components[initial(IC.name)] = path // Populating the component lists
		cached_components[path] = new path

		if(!(initial(IC.spawn_flags) & (IC_SPAWN_DEFAULT | IC_SPAWN_RESEARCH)))
			continue

		var/category = initial(IC.category_text)
		if(!circuit_fabricator_recipe_list[category])
			circuit_fabricator_recipe_list[category] = list()
		var/list/category_list = circuit_fabricator_recipe_list[category]
		category_list += IC // Populating the fabricator categories

	for(var/obj/item/device/electronic_assembly/A as anything in typesof(/obj/item/device/electronic_assembly))
		var/path = A
		all_assemblies[initial(A.name)] = path
		cached_assemblies[path] = new path


	/* Bastion of Endeavor Translation
	circuit_fabricator_recipe_list["Assemblies"] = list(
	*/
	circuit_fabricator_recipe_list["Сборки"] = list(
	// End of Bastion of Endeavor Translation
		/obj/item/device/electronic_assembly/default,
		/obj/item/device/electronic_assembly/calc,
		/obj/item/device/electronic_assembly/clam,
		/obj/item/device/electronic_assembly/simple,
		/obj/item/device/electronic_assembly/hook,
		/obj/item/device/electronic_assembly/pda,
		/obj/item/device/electronic_assembly/tiny/default,
		/obj/item/device/electronic_assembly/tiny/cylinder,
		/obj/item/device/electronic_assembly/tiny/scanner,
		/obj/item/device/electronic_assembly/tiny/hook,
		/obj/item/device/electronic_assembly/tiny/box,
		/obj/item/device/electronic_assembly/medium/default,
		/obj/item/device/electronic_assembly/medium/box,
		/obj/item/device/electronic_assembly/medium/clam,
		/obj/item/device/electronic_assembly/medium/medical,
		/obj/item/device/electronic_assembly/medium/gun,
		/obj/item/device/electronic_assembly/medium/radio,
		/obj/item/device/electronic_assembly/large/default,
		/obj/item/device/electronic_assembly/large/scope,
		/obj/item/device/electronic_assembly/large/terminal,
		/obj/item/device/electronic_assembly/large/arm,
		/obj/item/device/electronic_assembly/large/tall,
		/obj/item/device/electronic_assembly/large/industrial,
		/obj/item/device/electronic_assembly/drone/default,
		/obj/item/device/electronic_assembly/drone/arms,
		/obj/item/device/electronic_assembly/drone/secbot,
		/obj/item/device/electronic_assembly/drone/medbot,
		/obj/item/device/electronic_assembly/drone/genbot,
		/obj/item/device/electronic_assembly/drone/android,
		/obj/item/device/electronic_assembly/wallmount/tiny,
		/obj/item/device/electronic_assembly/wallmount/light,
		/obj/item/device/electronic_assembly/wallmount,
		/obj/item/device/electronic_assembly/wallmount/heavy,
		/obj/item/weapon/implant/integrated_circuit,
		/obj/item/clothing/under/circuitry,
		/obj/item/clothing/gloves/circuitry,
		/obj/item/clothing/glasses/circuitry,
		/obj/item/clothing/shoes/circuitry,
		/obj/item/clothing/head/circuitry,
		/obj/item/clothing/ears/circuitry,
		/obj/item/clothing/suit/circuitry
		)

	/* Bastion of Endeavor Translation
	circuit_fabricator_recipe_list["Tools"] = list(
	*/
	circuit_fabricator_recipe_list["Инструменты"] = list(
	// End of Bastion of Endeavor Translation
		/obj/item/device/integrated_electronics/wirer,
		/obj/item/device/integrated_electronics/debugger,
		/obj/item/device/integrated_electronics/detailer
		)
