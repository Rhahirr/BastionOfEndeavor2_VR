GLOBAL_VAR(ert_loaded)

/proc/consider_ert_load()
	if(!GLOB.ert_loaded)
		GLOB.ert_loaded = TRUE
		/* Bastion of Endeavor Translation
		var/datum/map_template/MT = SSmapping.map_templates["Special Area - ERT"]
		*/
		var/datum/map_template/MT = SSmapping.map_templates["Особая область - ГЭР"]
		// End of Bastion of Endeavor Translation
		if(!istype(MT))
			/* Bastion of Endeavor Translation
			error("ERT Area is not a valid map template!")
			*/
			error("Зона ГЭР не является допустимым шаблоном карты!")
			// End of Bastion of Endeavor Translation
		else
			MT.load_new_z(centered = TRUE)
			/* Bastion of Endeavor Translation
			log_and_message_admins("Loaded the ERT shuttle just now.")
			*/
			log_and_message_admins("загрузил шаттл ГЭР.")
			// End of Bastion of Endeavor Translation