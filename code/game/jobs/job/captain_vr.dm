/datum/job/captain
	disallow_jobhop = TRUE
	pto_type = PTO_CIVILIAN
	dept_time_required = 80 //Pending something more complicated
	/* Bastion of Endeavor Translation
	alt_titles = list("Overseer"= /datum/alt_title/overseer, "Facility Director" = /datum/alt_title/facility_director, "Chief Supervisor" = /datum/alt_title/chief_supervisor,
						"Captain" = /datum/alt_title/captain)
	*/
	alt_titles = list("Смотритель"= /datum/alt_title/overseer, "Директор комплекса" = /datum/alt_title/facility_director, "Главный супервайзер" = /datum/alt_title/chief_supervisor,
						"Капитан" = /datum/alt_title/captain)
	// End of Bastion of Endeavor Translation

/datum/alt_title/facility_director
	/* Bastion of Endeavor Translation
	title = "Facility Director"
	*/
	title = "Директор комплекса"
	// End of Bastion of Endeavor Translation

/datum/alt_title/chief_supervisor
	/* Bastion of Endeavor Translation
	title = "Chief Supervisor"
	*/
	title = "Главный супервайзер"
	// End of Bastion of Endeavor Translation

/datum/alt_title/captain
	/* Bastion of Endeavor Translation
	title = "Captain"
	*/
	title = "Капитан"
	// End of Bastion of Endeavor Translation

/datum/job/captain/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Training crew")
	*/
	return list("Обучение персонала")
	// End of Bastion of Endeavor Translation

/datum/job/hop
	disallow_jobhop = TRUE
	pto_type = PTO_CIVILIAN
	departments = list(DEPARTMENT_COMMAND, DEPARTMENT_CIVILIAN)
	departments_managed = list(DEPARTMENT_CIVILIAN, DEPARTMENT_CARGO, DEPARTMENT_PLANET)
	dept_time_required = 60

	/* Bastion of Endeavor Translation: Yeah the last one doesn't match but there's no consequences to this and I'm out of ideas
	alt_titles = list("Crew Resources Officer" = /datum/alt_title/cro, "Deputy Manager" = /datum/alt_title/deputy_manager, "Staff Manager" = /datum/alt_title/staff_manager,
						"Facility Steward" = /datum/alt_title/facility_steward)
	*/
	alt_titles = list("Директор по персоналу" = /datum/alt_title/cro, "Заместитель директора" = /datum/alt_title/deputy_manager, "Управляющий персоналом" = /datum/alt_title/staff_manager,
						"Инженер по кадрам" = /datum/alt_title/facility_steward)
	// End of Bastion of Endeavor Translation

	access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_clown, access_tomfoolery, access_mime, access_keycard_auth, access_gateway, access_entertainment)
	minimal_access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_clown, access_tomfoolery, access_mime, access_keycard_auth, access_gateway, access_entertainment)

/datum/alt_title/deputy_manager
	/* Bastion of Endeavor Translation
	title = "Deputy Manager"
	*/
	title = "Заместитель директора"
	// End of Bastion of Endeavor Translation

/datum/alt_title/staff_manager
	/* Bastion of Endeavor Translation
	title = "Staff Manager"
	*/
	title = "Управляющий персоналом"
	// End of Bastion of Endeavor Translation

/datum/alt_title/facility_steward
	/* Bastion of Endeavor Translation
	title = "Facility Steward"
	*/
	title = "Инженер по кадрам"
	// End of Bastion of Endeavor Translation

/datum/job/hop/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("ID modification", "Training crew")
	*/
	return list("Изменение ID-карты", "Обучение персонала")
	// End of Bastion of Endeavor Translation


/datum/job/secretary
	disallow_jobhop = TRUE
	pto_type = PTO_CIVILIAN
	/* Bastion of Endeavor Translation: Unsure about the liason one but ok
	alt_titles = list("Command Liaison" = /datum/alt_title/command_liaison, "Command Assistant" = /datum/alt_title/command_assistant, "Command Intern" = /datum/alt_title/command_intern,
						"Bridge Secretary" = /datum/alt_title/bridge_secretary, "Bridge Assistant" = /datum/alt_title/bridge_assistant)
	*/
	alt_titles = list("Офицер связи командования" = /datum/alt_title/command_liaison, "Ассистент командования" = /datum/alt_title/command_assistant, "Стажёр командования" = /datum/alt_title/command_intern,
						"Секретарь мостика" = /datum/alt_title/bridge_secretary, "Ассистент мостика" = /datum/alt_title/bridge_assistant)
	// End of Bastion of Endeavor Translation

/datum/alt_title/command_liaison
	/* Bastion of Endeavor Translation
	title = "Command Liaison"
	*/
	title = "Офицер связи командования"
	// End of Bastion of Endeavor Translation

/datum/alt_title/command_assistant
	/* Bastion of Endeavor Translation
	title = "Command Assistant"
	*/
	title = "Ассистент командования"
	// End of Bastion of Endeavor Translation

/datum/alt_title/command_intern
	/* Bastion of Endeavor Translation
	title = "Command Intern"
	*/
	title = "Стажёр командования"
	// End of Bastion of Endeavor Translation

/datum/alt_title/bridge_secretary
	/* Bastion of Endeavor Translation
	title = "Bridge Secretary"
	*/
	title = "Секретарь мостика"
	// End of Bastion of Endeavor Translation

/datum/alt_title/bridge_assistant
	/* Bastion of Endeavor Translation
	title = "Bridge Assistant"
	*/
	title = "Ассистент мостика"
	// End of Bastion of Endeavor Translation
