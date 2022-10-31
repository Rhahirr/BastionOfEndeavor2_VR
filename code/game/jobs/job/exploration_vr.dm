/obj/item/weapon/card/id/medical/sar
	/* Bastion of Endeavor Translation
	assignment = "Field Medic"
	rank = "Field Medic"
	*/
	assignment = "Полевой врач"
	rank = "Полевой врач"
	// End of Bastion of Endeavor Translation
	icon_state = "cyan"
	primary_color = rgb(47,189,189)
	secondary_color = rgb(127,223,223)

/obj/item/weapon/card/id/explorer
	/* Bastion of Endeavor Translation
	name = "identification card"
	desc = "A card issued to station exploration staff."
	*/
	name = "Идентификационная карта"
	desc = "Карта, выдаваемая членам экспедиционного отдела."
	// End of Bastion of Endeavor Translation
	icon_state = "cyan"
	primary_color = rgb(47,189,189)
	secondary_color = rgb(127,223,223)

/obj/item/weapon/card/id/explorer/head
	/* Bastion of Endeavor Translation
	name = "identification card"
	desc = "A card which represents discovery of the unknown."
	*/
	name = "Идентификационная карта"
	desc = "Карта, символизирующая тягу к неизведанному."
	case_blueprint_ru = list("жен#аутентификационн;adj1*a карт;n1a")
	// End of Bastion of Endeavor Translation
	icon_state = "cyanGold"
	primary_color = rgb(47,189,189)
	secondary_color = rgb(127,223,223)

/datum/department/planetside
	name = DEPARTMENT_PLANET
	color = "#bab421"
	sorting_order = 2 // Same as cargo in importance.



/datum/job/pathfinder
	/* Bastion of Endeavor Translation
	title = "Pathfinder"
	*/
	title = "Первопроходец"
	// End of Bastion of Endeavor Translation
	flag = PATHFINDER
	departments = list(DEPARTMENT_PLANET)
	departments_managed = list(DEPARTMENT_PLANET)
	sorting_order = 1 // above the other explorers
	department_flag = MEDSCI
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 1
	spawn_positions = 1
	/* Bastion of Endeavor Translation
	supervisors = "the Head of Personnel"
	*/
	supervisors = "Вы отвечаете перед Главой персонала."
	// End of Bastion of Endeavor Translation
	selection_color = "#d6d05c"
	economic_modifier = 8
	minimal_player_age = 7
	pto_type = PTO_EXPLORATION
	dept_time_required = 20

	access = list(access_eva, access_maint_tunnels, access_external_airlocks, access_pilot, access_explorer, access_gateway, access_pathfinder, access_RC_announce)
	minimal_access = list(access_eva, access_maint_tunnels, access_external_airlocks, access_pilot, access_explorer, access_gateway, access_pathfinder, access_RC_announce)
	outfit_type = /decl/hierarchy/outfit/job/pathfinder
	/* Bastion of Endeavor Translation
	job_description = "The Pathfinder's job is to lead and manage expeditions, and is the primary authority on all off-station expeditions."
	alt_titles = list("Expedition Lead" = /datum/alt_title/expedition_lead, "Exploration Manager" = /datum/alt_title/exploration_manager)
	*/
	job_description = "Работа Первопроходца заключается проведении экспедиций вне станции, в которых на него возлагается ответственность за свою команду."
	alt_titles = list("Глава экспедиций" = /datum/alt_title/expedition_lead, "Организатор экспедиций" = /datum/alt_title/exploration_manager)
	// End of Bastion of Endeavor Translation

/datum/alt_title/expedition_lead
	/* Bastion of Endeavor Translation
	title = "Expedition Lead"
	*/
	title = "Лидер экспедиций"
	// End of Bastion of Endeavor Translation

/datum/alt_title/exploration_manager
	/* Bastion of Endeavor Translation
	title = "Exploration Manager"
	*/
	title = "Экспедиционный менеджер"
	// End of Bastion of Endeavor Translation

/datum/job/pathfinder/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Training crew")
	*/
	return list("Обучение персонала")
	// End of Bastion of Endeavor Translation

/datum/job/explorer
	/* Bastion of Endeavor Translation: I absolutely hate this but oh well
	title = "Explorer"
	*/
	title = "Разведчик"
	// End of Bastion of Endeavor Translation
	flag = EXPLORER
	departments = list(DEPARTMENT_PLANET)
	department_flag = MEDSCI
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 3
	spawn_positions = 3
	/* Bastion of Endeavor Translation
	supervisors = "the Pathfinder and the Head of Personnel"
	*/
	supervisors = "Вы отвечаете перед Первопроходцем и Главой персонала."
	// End of Bastion of Endeavor Translation
	selection_color = "#999440"
	economic_modifier = 6
	pto_type = PTO_EXPLORATION
	access = list(access_explorer, access_external_airlocks, access_eva)
	minimal_access = list(access_explorer, access_external_airlocks, access_eva)
	outfit_type = /decl/hierarchy/outfit/job/explorer2
	/* Bastion of Endeavor Translation
	job_description = "An Explorer searches for interesting things, and returns them to the station."
	alt_titles = list("Surveyor" = /datum/alt_title/surveyor, "Offsite Scout" = /datum/alt_title/offsite_scout)
	*/
	job_description = "Разведчик занимается поиском интересных штучек, которые он после приносит на станцию. Кроме того, он принимает участие в полевых экспедициях совместно с полевым врачом и Первопроходцем."
	alt_titles = list("Изыскатель" = /datum/alt_title/surveyor, "Участник экспедиций" = /datum/alt_title/offsite_scout)
	// End of Bastion of Endeavor Translation

/datum/alt_title/surveyor
	/* Bastion of Endeavor Translation
	title = "Surveyor"
	*/
	title = "Изыскатель"
	// End of Bastion of Endeavor Translation

/datum/alt_title/offsite_scout
	/* Bastion of Endeavor Translation: I don't care, I'm done looking for synonyms and by the time this role is relevant upstream will just remove it
	title = "Offsite Scout"
	*/
	title = "Участник экспедиций"
	// End of Bastion of Endeavor Translation


/datum/job/sar
	/* Bastion of Endeavor Translation
	title = "Field Medic"
	*/
	title = "Полевой врач"
	// End of Bastion of Endeavor Translation
	flag = SAR
	departments = list(DEPARTMENT_PLANET, DEPARTMENT_MEDICAL)
	department_flag = MEDSCI
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 2
	spawn_positions = 2
	/* Bastion of Endeavor Translation
	supervisors = "the Pathfinder and the Chief Medical Officer"
	*/
	supervisors = "Вы отвечаете перед Первопроходцем и Главным врачом."
	// End of Bastion of Endeavor Translation
	selection_color = "#999440"
	economic_modifier = 6
	minimal_player_age = 3
	pto_type = PTO_EXPLORATION
	access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_chemistry, access_eva, access_maint_tunnels, access_external_airlocks, access_pilot)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_pilot)
	outfit_type = /decl/hierarchy/outfit/job/medical/sar
	/* Bastion of Endeavor Translation
	job_description = "A Field medic works as the field doctor of expedition teams."
	*/
	job_description = "Полевой врач обспечивает сохранность членов экспедиции."
	// End of Bastion of Endeavor Translation
	/* Bastion of Endeavor Translation
	alt_titles = list("Expedition Medic" = /datum/alt_title/expedition_medic, "Offsite Medic" = /datum/alt_title/offsite_medic)
	*/
	alt_titles = list("Экспедиционный медик" = /datum/alt_title/expedition_medic, "Экспедиционный санитар" = /datum/alt_title/offsite_medic)
	// End of Bastion of Endeavor Translation

/datum/alt_title/expedition_medic
	/* Bastion of Endeavor Translation
	title = "Expedition Medic"
	*/
	title = "Экспедиционный медик"
	// End of Bastion of Endeavor Translation

/datum/alt_title/offsite_medic
	/* Bastion of Endeavor Translation
	title = "Offsite Medic"
	*/
	title = "Экспедиционный санитар"
	// End of Bastion of Endeavor Translation
