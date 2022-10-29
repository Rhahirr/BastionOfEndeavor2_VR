//////////////////////////////////
//				AI
//////////////////////////////////
/datum/job/ai
	/* Bastion of Endeavor Translation
	title = "AI"
	*/
	title = "ИИ"
	// End of Bastion of Endeavor Translation
	flag = AI
	departments = list(DEPARTMENT_SYNTHETIC)
	sorting_order = 1 // Be above their borgs.
	department_flag = ENGSEC
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 0 // Not used for AI, see is_position_available below and modules/mob/living/silicon/ai/latejoin.dm
	spawn_positions = 1
	selection_color = "#3F823F"
	/* Bastion of Endeavor Translation
	supervisors = "your Laws"
	*/
	supervisors = "Вы подчиняетесь непосредственно своим Законам."
	// End of Bastion of Endeavor Translation
	req_admin_notify = 1
	minimal_player_age = 7
	account_allowed = 0
	economic_modifier = 0
	has_headset = FALSE
	assignable = FALSE
	mob_type = JOB_SILICON_AI
	outfit_type = /decl/hierarchy/outfit/job/silicon/ai
	/* Bastion of Endeavor Translation
	job_description = "The AI oversees the operation of the station and its crew, but has no real authority over them. \
						The AI is required to follow its Laws, and Lawbound Synthetics that are linked to it are expected to follow \
						the AI's commands, and their own Laws."
	*/
	job_description = "ИИ призван осуществлять надзор над работой станции и персонала, но не имеет над ними никакой реальной власти. \
						ИИ обязан подчиняться своим Законам; при этом ИИ способен отдавать приказы другим роботам, обладающими собственными Законами."
	// End of Bastion of Endeavor Translation

// AI procs
/datum/job/ai/equip(var/mob/living/carbon/human/H)
	if(!H)	return 0
	return 1

/datum/job/ai/is_position_available()
	return (empty_playable_ai_cores.len != 0)

/datum/job/ai/equip_preview(mob/living/carbon/human/H)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/straight_jacket(H), slot_wear_suit)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/cardborg(H), slot_head)
	return 1

//////////////////////////////////
//			Cyborg
//////////////////////////////////
/datum/job/cyborg
	/* Bastion of Endeavor Translation
	title = "Cyborg"
	*/
	title = "Киборг"
	// End of Bastion of Endeavor Translation
	flag = CYBORG
	departments = list(DEPARTMENT_SYNTHETIC)
	department_flag = ENGSEC
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 2
	spawn_positions = 2
	/* Bastion of Endeavor Translation
	supervisors = "your Laws and the AI"	//Nodrak
	*/
	supervisors = "Вы подчиняетесь непосредственно своим Законам и ИИ." //Nodrak
	// End of Bastion of Endeavor Translation
	selection_color = "#254C25"
	minimal_player_age = 1
	account_allowed = 0
	economic_modifier = 0
	has_headset = FALSE
	assignable = FALSE
	mob_type = JOB_SILICON_ROBOT
	outfit_type = /decl/hierarchy/outfit/job/silicon/cyborg
	/* Bastion of Endeavor Translation
	job_description = "A Cyborg is a mobile station synthetic, piloted by a cybernetically preserved brain. It is considered a person, but is still required \
						to follow its Laws."
	alt_titles = list("Robot" = /datum/alt_title/robot, "Drone" = /datum/alt_title/drone)
	*/
	job_description = "Киборг - подвижный синтетик, выполняющий обязанности на станции и управляемый кибернетизированным разумом. \
						Киборг считается самодостаточной личностью, однако несмотря на это обязан следовать своим Законам."
	alt_titles = list("Робот" = /datum/alt_title/robot, "Дрон" = /datum/alt_title/drone)
	// End of Bastion of Endeavor Translation

// Cyborg Alt Titles
/datum/alt_title/robot
	/* Bastion of Endeavor Translation
	title = "Robot"
	title_blurb = "A Robot is a mobile station synthetic, piloted by an advanced piece of technology called a Positronic Brain. It is considered a person, \
					legally, but is required to follow its Laws."
	*/
	title = "Робот"
	title_blurb = "Робот - подвижный синтетик, выполнящий обязанности на станции и управляемый такой продвинутой технологией, как позитронный мозг. \
					Робот считается самодостаточной личностью, однако несмотря на это обязан следовать своим Законам."
	// End of Bastion of Endeavor Translation

/datum/alt_title/drone
	/* Bastion of Endeavor Translation
	title = "Drone"
	title_blurb = "A Drone is a mobile station synthetic, piloted by a simple computer-based AI. As such, it is not a person, but rather an expensive and \
					and important piece of station property, and is expected to follow its Laws."
	*/
	title = "Дрон"
	title_blurb = "Дрон - подвижный синтетик, выполняющий обязанности на станции и управляемый примитивным искусственным интеллектом. \
					Он не считается самодостаточной личностью, а скорее является собственностью станции. От него ожидается повиновение своим Законам."
	// End of Bastion of Endeavor Translation

// Cyborg procs
/datum/job/cyborg/equip(var/mob/living/carbon/human/H)
	if(!H)	return 0
	return 1

/datum/job/cyborg/equip_preview(mob/living/carbon/human/H)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/cardborg(H), slot_wear_suit)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/cardborg(H), slot_head)
	return 1
