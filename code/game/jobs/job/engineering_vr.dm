/datum/job/chief_engineer
	disallow_jobhop = TRUE
	pto_type = PTO_ENGINEERING
	dept_time_required = 60

	access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels,
			            access_teleporter, access_external_airlocks, access_atmospherics, access_emergency_storage, access_eva,
			            access_heads, access_construction,
			            access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload, access_gateway)

	minimal_access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels,
			            access_teleporter, access_external_airlocks, access_atmospherics, access_emergency_storage, access_eva,
			            access_heads, access_construction,
			            access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload, access_gateway)
	/* Bastion of Endeavor Translation
	alt_titles = list("Head Engineer" = /datum/alt_title/head_engineer, "Foreman" = /datum/alt_title/foreman, "Maintenance Manager" = /datum/alt_title/maintenance_manager)
	*/
	alt_titles = list("Главный механик" = /datum/alt_title/head_engineer, "Старший мастер" = /datum/alt_title/foreman, "Менеджер по техобслуживанию" = /datum/alt_title/maintenance_manager)
	// End of Bastion of Endeavor Translation

/datum/alt_title/head_engineer
	/* Bastion of Endeavor Translation
	title = "Head Engineer"
	*/
	title = "Главный механик"
	// End of Bastion of Endeavor Translation

/datum/alt_title/foreman
	/* Bastion of Endeavor Translation
	title = "Foreman"
	*/
	title = "Старший мастер"
	// End of Bastion of Endeavor Translation

/datum/alt_title/maintenance_manager
	/* Bastion of Endeavor Translation
	title = "Maintenance Manager"
	*/
	title = "Менеджер по техобслуживанию"
	// End of Bastion of Endeavor Translation

/datum/job/chief_engineer/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Engine setup", "Construction project", "Repairs necessary", "Training crew")
	*/
	return list("Настройка двигателя", "Проект по строительству", "Ремонт станции", "Обучение персонала")
	// End of Bastion of Endeavor Translation


/datum/job/engineer
	pto_type = PTO_ENGINEERING
	/* Bastion of Endeavor Translation
	alt_titles = list("Maintenance Technician" = /datum/alt_title/maint_tech, "Engine Technician" = /datum/alt_title/engine_tech,
						"Electrician" = /datum/alt_title/electrician, "Construction Engineer" = /datum/alt_title/construction_engi, "Engineering Contractor" = /datum/alt_title/engineering_contractor)
	*/
	alt_titles = list("Техник по обслуживанию" = /datum/alt_title/maint_tech, "Наладчик двигателей" = /datum/alt_title/engine_tech,
						"Электрик" = /datum/alt_title/electrician, "Инженер-строитель" = /datum/alt_title/construction_engi, "Инженер-подрядчик" = /datum/alt_title/engineering_contractor)
	// End of Bastion of Endeavor Translation

/datum/alt_title/construction_engi
	/* Bastion of Endeavor Translation
	title = "Construction Engineer"
	title_blurb = "A Construction Engineer fulfills similar duties to other engineers, but usually occupies spare time with construction of extra facilities in dedicated areas or \
					as additions to station layout."
	*/
	title = "Инженер-строитель"
	title_blurb = "В обязанности инженера-строителя входит всё то же самое, что и у обычного инженера, однако своё свободное время стриотель проводит, как правило, \
					за созданием новых помещений или преобразованием существующих."
	// End of Bastion of Endeavor Translation

/datum/alt_title/engineering_contractor
	/* Bastion of Endeavor Translation
	title = "Engineering Contractor"
	title_blurb = "An Engineering Contractor fulfills similar duties to other engineers, but isn't directly employed by NT proper."
	*/
	title = "Инженер-подрядчик"
	title_blurb = "Инженер-подрядчик выполняет те же обязанности, что и обычные инженеры, однако не нанят НаноТрейсен на полную ставку."
	// End of Bastion of Endeavor Translation

/datum/job/engineer/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Engine setup", "Construction project", "Repairs necessary")
	*/
	return list("Настройка двигателя", "Проект по строительству", "Ремонт станции")
	// End of Bastion of Endeavor Translation




/datum/job/atmos
	spawn_positions = 3
	pto_type = PTO_ENGINEERING
	/* Bastion of Endeavor Translation
	alt_titles = list("Atmospheric Engineer" = /datum/alt_title/atmos_engi, "Atmospheric Maintainer" = /datum/alt_title/atmos_maint, "Disposals Technician" = /datum/alt_title/disposals_tech)
	*/
	alt_titles = list("Инженер-атмосферщик" = /datum/alt_title/atmos_engi, "Вентиляционный слесарь" = /datum/alt_title/atmos_maint, "Ремонтник системы сортировки" = /datum/alt_title/disposals_tech)
	// End of Bastion of Endeavor Translation

/datum/alt_title/atmos_maint
/* Bastion of Endeavor Translation
	title = "Atmospheric Maintainer"
*/
	title = "Вентиляционный слесарь"
// End of Bastion of Endeavor Translation

/datum/alt_title/atmos_engi
	/* Bastion of Endeavor Translation
	title = "Atmospheric Engineer"
	*/
	title = "Инженер-атмосферщик"
	// End of Bastion of Endeavor Translation

/datum/alt_title/disposals_tech
	/* Bastion of Endeavor Translation
	title = "Disposals Technician"
	title_blurb = "A Disposals Technician is an Atmospheric Technician still and can fulfill all the same duties, although specializes more in disposals delivery system's operations and configurations."
	*/
	title = "Ремонтник системы сортировки"
	title_blurb = "Ремонтник системы сортировки выполняет те же обязанности, что и атмосферный техник, но особенно специализируется в наладке системы сортировки и доставки."
	// End of Bastion of Endeavor Translation

/datum/job/atmos/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Construction project", "Repairs necessary")
	*/
	return list("Проект по строительству", "Ремонт станции")
	// End of Bastion of Endeavor Translation