SUBSYSTEM_DEF(assets)
	/* Bastion of Endeavor Translation
	name = "Assets"
	*/
	name = "Ассеты"
	// End of Bastion of Endeavor Translation
	init_order = INIT_ORDER_ASSETS
	flags = SS_NO_FIRE
	var/list/cache = list()
	var/list/preload = list()

/datum/controller/subsystem/assets/Initialize(timeofday)
	for(var/typepath in typesof(/datum/asset))
		var/datum/asset/A = typepath
		if (typepath != initial(A._abstract))
			get_asset_datum(typepath)

	preload = cache.Copy() //don't preload assets generated during the round

	for(var/client/C in GLOB.clients)
		addtimer(CALLBACK(GLOBAL_PROC, .proc/getFilesSlow, C, preload, FALSE), 10)
	return ..()