/datum/job/hos
	disallow_jobhop = TRUE
	pto_type = PTO_SECURITY
	dept_time_required = 60

	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
						access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
						access_construction,
						access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
						access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
						access_construction,
						access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	/* Bastion of Endeavor Translation
	alt_titles = list("Security Commander" = /datum/alt_title/sec_commander, "Chief of Security" = /datum/alt_title/sec_chief, "Security Manager" = /datum/alt_title/security_manager)
	*/
	alt_titles = list("Командир службы безопасности" = /datum/alt_title/sec_commander, "Начальник службы безопасности" = /datum/alt_title/sec_chief, "Начальник охраны" = /datum/alt_title/security_manager)
	// End of Bastion of Endeavor Translation

/datum/alt_title/security_manager
	/* Bastion of Endeavor Translation
	title = "Security Manager"
	*/
	title = "Начальник охраны"
	// End of Bastion of Endeavor Translation

/datum/job/hos/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Wildlife management", "Forensic investigation", "Training crew")
	*/
	return list("Борьба с фауной", "Судебно-медицинская экспертиза", "Обучение персонала")
	// End of Bastion of Endeavor Translation


/datum/job/warden
	pto_type = PTO_SECURITY
	dept_time_required = 20
	/* Bastion of Endeavor Translation
	alt_titles = list("Brig Sentry" = /datum/alt_title/brig_sentry, "Armory Superintendent" = /datum/alt_title/armory_superintendent)
	*/
	alt_titles = list("Охранник брига" = /datum/alt_title/brig_sentry, "Заведующий арсеналом" = /datum/alt_title/armory_superintendent)
	// End of Bastion of Endeavor Translation

/datum/alt_title/brig_sentry
	/* Bastion of Endeavor Translation
	title = "Brig Sentry"
	*/
	title = "Охранник брига"
	// End of Bastion of Endeavor Translation

/datum/alt_title/armory_superintendent
	/* Bastion of Endeavor Translation
	title = "Armory Superintendent"
	*/
	title = "Заведующий арсеналом"
	// End of Bastion of Endeavor Translation

/datum/job/warden/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Wildlife management")
	*/
	return list("Борьба с фауной")
	// End of Bastion of Endeavor Translation


/datum/job/detective
	pto_type = PTO_SECURITY
	/* Bastion of Endeavor Translation
	alt_titles = list("Investigator" = /datum/alt_title/investigator, "Security Inspector" = /datum/alt_title/security_inspector, "Forensic Technician" = /datum/alt_title/forensic_tech)
	*/
	alt_titles = list("Следователь" = /datum/alt_title/investigator, "Криминалист" = /datum/alt_title/security_inspector, "Судмедэксперт" = /datum/alt_title/forensic_tech)
	// End of Bastion of Endeavor Translation

/datum/alt_title/investigator
	/* Bastion of Endeavor Translation
	title = "Investigator"
	*/
	title = "Следователь"
	// End of Bastion of Endeavor Translation

/datum/alt_title/security_inspector
	/* Bastion of Endeavor Translation
	title = "Security Inspector"
	*/
	title = "Криминалист"
	// End of Bastion of Endeavor Translation

/datum/job/detective/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Forensic investigation")
	*/
	return list("Судебно-медицинская экспертиза")
	// End of Bastion of Endeavor Translation


/datum/job/officer
	total_positions = 5
	spawn_positions = 5
	pto_type = PTO_SECURITY
	/* Bastion of Endeavor Translation: Apparently the security guard one is added twice on upstream, I fixed it
	alt_titles = list("Patrol Officer" = /datum/alt_title/patrol_officer, "Security Guard" = /datum/alt_title/security_guard,
						"Security Deputy" = /datum/alt_title/security_guard, "Junior Officer" = /datum/alt_title/junior_officer, "Security Contractor" = /datum/alt_title/security_contractor)
	*/
	alt_titles = list("Патрульный" = /datum/alt_title/patrol_officer, "Охранник" = /datum/alt_title/security_guard,
						"Помощник офицера" = /datum/alt_title/security_deputy, "Младший офицер" = /datum/alt_title/junior_officer, "Подрядчик службы безопасности" = /datum/alt_title/security_contractor)
	// End of Bastion of Endeavor Translation

/datum/alt_title/patrol_officer
	/* Bastion of Endeavor Translation
	title = "Patrol Officer"
	*/
	title = "Патрульный"
	// End of Bastion of Endeavor Translation

/datum/alt_title/security_guard
	/* Bastion of Endeavor Translation
	title = "Security Guard"
	*/
	title = "Охранник"
	// End of Bastion of Endeavor Translation

/datum/alt_title/security_deputy
	/* Bastion of Endeavor Translation
	title = "Security Deputy"
	*/
	title = "Помощник офицера"
	// End of Bastion of Endeavor Translation

/datum/alt_title/security_contractor
	/* Bastion of Endeavor Translation
	title = "Security Contractor"
	*/
	title = "Подрядчик службы безопасности"
	// End of Bastion of Endeavor Translation

/datum/job/officer/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Wildlife management")
	*/
	return list("Борьба с фауной")
	// End of Bastion of Endeavor Translation