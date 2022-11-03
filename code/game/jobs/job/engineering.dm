//////////////////////////////////
//		Chief Engineer
//////////////////////////////////
/datum/job/chief_engineer
	/* Bastion of Endeavor Translation
	title = "Chief Engineer"
	*/
	title = "Главный инженер"
	// End of Bastion of Endeavor Translation
	flag = CHIEF
	departments_managed = list(DEPARTMENT_ENGINEERING)
	departments = list(DEPARTMENT_ENGINEERING, DEPARTMENT_COMMAND)
	sorting_order = 2
	department_flag = ENGSEC
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 1
	spawn_positions = 1
	/* Bastion of Endeavor Translation
	supervisors = "the Site Manager"
	*/
	supervisors = "Вы отвечаете перед Менеджером объекта."
	// End of Bastion of Endeavor Translation
	selection_color = "#7F6E2C"
	req_admin_notify = 1
	economic_modifier = 10

	minimum_character_age = 25
	min_age_by_species = list(SPECIES_UNATHI = 70, "mechanical" = 10, SPECIES_HUMAN_VATBORN = 14)
	ideal_character_age = 50
	ideal_age_by_species = list(SPECIES_UNATHI = 140, "mechanical" = 20, SPECIES_HUMAN_VATBORN = 20)
	banned_job_species = list(SPECIES_TESHARI, SPECIES_DIONA, SPECIES_PROMETHEAN, SPECIES_ZADDAT, "digital")


	access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels,
			            access_teleporter, access_external_airlocks, access_atmospherics, access_emergency_storage, access_eva,
			            access_heads, access_construction, access_sec_doors,
			            access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload)
	minimal_access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels,
			            access_teleporter, access_external_airlocks, access_atmospherics, access_emergency_storage, access_eva,
			            access_heads, access_construction, access_sec_doors,
			            access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload)
	minimal_player_age = 7

	outfit_type = /decl/hierarchy/outfit/job/engineering/chief_engineer
	/* Bastion of Endeavor Translation
	job_description = "The Chief Engineer manages the Engineering Department, ensuring that the Engineers work on what needs to be done, handling distribution \
						of manpower as much as they handle hands-on operations and repairs. They are also expected to keep the rest of the station informed of \
						any structural threats to the station that may be hazardous to health or disruptive to work."
	*/
	job_description = "Главный инженер управляет инженерным отделом и распределяет задачи между своими подчинёнными. \
						От него также ожидается своевременное информирование персонала о структурных повреждениях на территории станции и прочих угрозах для здоровья и работоспособности персонала."
	// End of Bastion of Endeavor Translation

//////////////////////////////////
//			Engineer
//////////////////////////////////
/datum/job/engineer
	/* Bastion of Endeavor Translation
	title = "Engineer"
	*/
	title = "Инженер"
	// End of Bastion of Endeavor Translation
	flag = ENGINEER
	departments = list(DEPARTMENT_ENGINEERING)
	department_flag = ENGSEC
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 5
	spawn_positions = 5
	/* Bastion of Endeavor Translation
	supervisors = "the Chief Engineer"
	*/
	supervisors = "Вы отвечаете перед Главным инженером."
	// End of Bastion of Endeavor Translation
	selection_color = "#5B4D20"
	economic_modifier = 5
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics)
	minimal_access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction)
	/* Bastion of Endeavor Translation
	alt_titles = list("Maintenance Technician" = /datum/alt_title/maint_tech,
						"Engine Technician" = /datum/alt_title/engine_tech, "Electrician" = /datum/alt_title/electrician)
	*/
	alt_titles = list("Техник по обслуживанию" = /datum/alt_title/maint_tech,
						"Наладчик двигателей" = /datum/alt_title/engine_tech, "Электрик" = /datum/alt_title/electrician)
	// End of Bastion of Endeavor Translation

	minimal_player_age = 3
	min_age_by_species = list(SPECIES_PROMETHEAN = 2)

	outfit_type = /decl/hierarchy/outfit/job/engineering/engineer
	/* Bastion of Endeavor Translation
	job_description = "An Engineer keeps the station running. They repair damages, keep the atmosphere stable, and ensure that power is being \
						generated and distributed. On quiet shifts, they may be called upon to make cosmetic alterations to the station."
	*/
	job_description = "Инженер производит техническое обслуживание станции. Он занимается ремонтом повреждений, наладкой атмосферных показателей и обеспечением всей станции \
						электричеством. В свободное время инженеру позволено заниматься внесением в интерьер станции декоративных изменений."
	// End of Bastion of Endeavor Translation

// Engineer Alt Titles
/datum/alt_title/maint_tech
	/* Bastion of Endeavor Translation
	title = "Maintenance Technician"
	title_blurb = "A Maintenance Technician is generally a junior Engineer, and can be expected to run the mildly unpleasant or boring tasks that other \
					Engineers don't care to do."
	*/
	title = "Техник по обслуживанию"
	title_blurb = "Техник по обслуживанию, как правило, стоит чуть ниже инженеров и занимается преимущественно неприятными или неинтересными задачами, за которые не хотят браться они сами."
	// End of Bastion of Endeavor Translation

/datum/alt_title/engine_tech
	/* Bastion of Endeavor Translation
	title = "Engine Technician"
	title_blurb = "An Engine Technician tends to the engine, most commonly a Supermatter crystal. They are expected to be able to keep it stable, and \
					possibly even run it beyond normal tolerances."
	*/
	title = "Наладчик двигателей"
	title_blurb = "Наладчик двигателей занимается установкой и техобслуживанием двигателей - как правило, шара Теслы или кристалла суперматерии. \
					От наладчика ожидается поддерживание стабильных показателей при работе двигателя и, по возможности, повышение его мощности."
	// End of Bastion of Endeavor Translation

/datum/alt_title/electrician
	/* Bastion of Endeavor Translation
	title = "Electrician"
	title_blurb = "An Electrician's primary duty is making sure power is properly distributed thoughout the station, utilizing solars, substations, and other \
					methods to ensure every department has power in an emergency."
	*/
	title = "Электрик"
	title_blurb = "В обязанности электрика входит обеспечение станции электричеством и распределение энергии по её территории, а также работа с солнечными панелями и подстанциями \
					для обеспечения каждого отдела энергией в случае нештатных ситуаций."
	// End of Bastion of Endeavor Translation

//////////////////////////////////
//			Atmos Tech
//////////////////////////////////
/datum/job/atmos
	/* Bastion of Endeavor Translation
	title = "Atmospheric Technician"
	*/
	title = "Атмосферный техник"
	// End of Bastion of Endeavor Translation
	flag = ATMOSTECH
	departments = list(DEPARTMENT_ENGINEERING)
	department_flag = ENGSEC
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 3
	spawn_positions = 2
	/* Bastion of Endeavor Translation
	supervisors = "the Chief Engineer"
	*/
	supervisors = "Вы отвечаете перед Главным инженером."
	// End of Bastion of Endeavor Translation
	selection_color = "#5B4D20"
	economic_modifier = 5
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_external_airlocks)
	minimal_access = list(access_eva, access_engine, access_atmospherics, access_maint_tunnels, access_emergency_storage, access_construction, access_external_airlocks)

	minimal_player_age = 3
	min_age_by_species = list(SPECIES_PROMETHEAN = 2)

	outfit_type = /decl/hierarchy/outfit/job/engineering/atmos
	/* Bastion of Endeavor Translation
	job_description = "An Atmospheric Technician is primarily concerned with keeping the station's atmosphere breathable. They are expected to have a good \
						understanding of the pipes, vents, and scrubbers that move gasses around the station, and to be familiar with proper firefighting procedure."
	*/
	job_description = "Атмосферный техник, как правило, занимается поддержанием на территории станции оптимальных показателей воздуха, которым дышит персонал. \
						От него ожидается достойное понимание работы труб, вентиляции, скрубберов и газов, циркулирующих по станции, а также порядка действий в случае возникновения пожаров."
	// End of Bastion of Endeavor Translation
