///////////////////////////////////
//// Talon Jobs
/datum/department/talon
	name = DEPARTMENT_TALON
	short_name = "Talon"
	color = "#888888"
	sorting_order = -2
	assignable = FALSE
	visible = FALSE

/datum/job/talon_captain
	/* Bastion of Endeavor Translation
	title = "Talon Captain"
	*/
	title = "Капитан Когтя"
	// End of Bastion of Endeavor Translation
	flag = TALCAP
	department_flag = TALON
	departments_managed = list(DEPARTMENT_TALON)
	/* Bastion of Endeavor Translation
	job_description = "The captain's job is to generate profit through trade or other means such as salvage or even privateering."
	supervisors = "yourself"
	*/
	job_description = "Работа капитана - получать выгоду через торговлю или иные методы, например сбор металлолома или даже пиратство."
	supervisors = "Вы работаете сами на себя."
	// End of Bastion of Endeavor Translation
	outfit_type = /decl/hierarchy/outfit/job/talon_captain

	offmap_spawn = TRUE
	/* Bastion of Endeavor Translation
	faction = "Station" //Required for SSjob to allow people to join as it
	*/
	faction = "Станция" //Required for SSjob to allow people to join as it
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_TALON)
	total_positions = 1
	spawn_positions = 1
	selection_color = "#999999"
	economic_modifier = 7
	minimal_player_age = 14
	playtime_only = TRUE
	pto_type = PTO_TALON
	timeoff_factor = 1
	dept_time_required = 60
	access = list(access_talon)
	minimal_access = list(access_talon)
	/* Bastion of Endeavor Translation
	alt_titles = list("Talon Commander" = /datum/alt_title/talon_commander)
	*/
	alt_titles = list("Командир Когтя" = /datum/alt_title/talon_commander)
	// End of Bastion of Endeavor Translation

/datum/alt_title/talon_commander
	/* Bastion of Endeavor Translation
	title = "Talon Commander"
	*/
	title = "Командир Когтя"
	// End of Bastion of Endeavor Translation

/datum/job/talon_doctor
	/* Bastion of Endeavor Translation
	title = "Talon Doctor"
	*/
	title = "Врач Когтя"
	// End of Bastion of Endeavor Translation
	flag = TALDOC
	department_flag = TALON
	/* Bastion of Endeavor Translation
	job_description = "The doctor's job is to make sure the crew of the ITV Talon remain in good health and to monitor them when away from the ship."
	supervisors = "the ITV Talon's captain"
	*/
	job_description = "Работа врача заключается в поддержании здоровья членов экипажа НТС Коготь и мониторингом их состояния вне корабля."
	supervisors = "Вы отвечаете перед капитаном НТС Коготь."
	// End of Bastion of Endeavor Translation
	outfit_type = /decl/hierarchy/outfit/job/talon_doctor

	offmap_spawn = TRUE
	/* Bastion of Endeavor Translation
	faction = "Station" //Required for SSjob to allow people to join as it
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_TALON)
	total_positions = 1
	spawn_positions = 1
	selection_color = "#aaaaaa"
	economic_modifier = 5
	minimal_player_age = 14
	playtime_only = TRUE
	pto_type = PTO_TALON
	timeoff_factor = 1
	access = list(access_talon)
	minimal_access = list(access_talon)
	/* Bastion of Endeavor Translation
	alt_titles = list("Talon Medic" = /datum/alt_title/talon_medic)
	*/
	alt_titles = list("Медик Когтя" = /datum/alt_title/talon_medic)
	// End of Bastion of Endeavor Translation

/datum/alt_title/talon_medic
	/* Bastion of Endeavor Translation
	title = "Talon Medic"
	*/
	title = "Медик  Когтя"
	// End of Bastion of Endeavor Translation


/datum/job/talon_engineer
	/* Bastion of Endeavor Translation
	title = "Talon Engineer"
	*/
	title = "Инженер Когтя"
	// End of Bastion of Endeavor Translation
	flag = TALENG
	department_flag = TALON
	/* Bastion of Endeavor Translation
	job_description = "The engineer's job is to ensure the ITV Talon remains in tip-top shape and to repair any damage as well as manage the shields."
	supervisors = "the ITV Talon's captain"
	*/
	job_description = "Работа инженера заключается в поддержании целостности и сохранности НТС Коготь, ремонте всяческих повреждений и управлении щитами."
	supervisors = "Вы отвечаете перед капитаном НТС Коготь."
	// End of Bastion of Endeavor Translation
	outfit_type = /decl/hierarchy/outfit/job/talon_engineer

	offmap_spawn = TRUE
	/* Bastion of Endeavor Translation
	faction = "Station" //Required for SSjob to allow people to join as it
	*/
	faction = "Станция" //Required for SSjob to allow people to join as it
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_TALON)
	total_positions = 1
	spawn_positions = 1
	selection_color = "#aaaaaa"
	economic_modifier = 5
	minimal_player_age = 14
	playtime_only = TRUE
	pto_type = PTO_TALON
	timeoff_factor = 1
	access = list(access_talon)
	minimal_access = list(access_talon)
	/* Bastion of Endeavor Translation
	alt_titles = list("Talon Technician" = /datum/alt_title/talon_tech)
	*/
	alt_titles = list("Техник Когтя" = /datum/alt_title/talon_tech)
	// End of Bastion of Endeavor Translation

/datum/alt_title/talon_tech
	/* Bastion of Endeavor Translation
	title = "Talon Technician"
	*/
	title = "Техник Когтя"
	// End of Bastion of Endeavor Translation


/datum/job/talon_pilot
	/* Bastion of Endeavor Translation
	title = "Talon Pilot"
	*/
	title = "Пилот Когтя"
	// End of Bastion of Endeavor Translation
	flag = TALPIL
	department_flag = TALON
	/* Bastion of Endeavor Translation
	job_description = "The pilot's job is to fly the ITV Talon in the most efficient and profitable way possible."
	supervisors = "the ITV Talon's captain"
	*/
	job_description = "Работа пилота заключается в управлении НТС Коготь с максимальной эффективностью и выгодой."
	supervisors = "Вы отвечаете перед капитаном НТС Коготь."
	// End of Bastion of Endeavor Translation
	outfit_type = /decl/hierarchy/outfit/job/talon_pilot

	offmap_spawn = TRUE
	/* Bastion of Endeavor Translation
	faction = "Station" //Required for SSjob to allow people to join as it
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_TALON)
	total_positions = 1
	spawn_positions = 1
	selection_color = "#aaaaaa"
	economic_modifier = 5
	minimal_player_age = 14
	playtime_only = TRUE
	pto_type = PTO_TALON
	timeoff_factor = 1
	access = list(access_talon)
	minimal_access = list(access_talon)
	/* Bastion of Endeavor Translation
	alt_titles = list("Talon Helmsman" = /datum/alt_title/talon_helmsman)
	*/
	alt_titles = list("Штурман Когтя" = /datum/alt_title/talon_helmsman)
	// End of Bastion of Endeavor Translation

/datum/alt_title/talon_helmsman
	/* Bastion of Endeavor Translation
	title = "Talon Helmsman"
	*/
	title = "Штурман Когтя"
	// End of Bastion of Endeavor Translation


/datum/job/talon_guard
	/* Bastion of Endeavor Translation
	title = "Talon Guard"
	*/
	title = "Охранник Когтя"
	// End of Bastion of Endeavor Translation
	flag = TALSEC
	department_flag = TALON
	/* Bastion of Endeavor Translation
	job_description = "The guard's job is to keep the crew of the ITV Talon safe and ensure the captain's wishes are carried out."
	supervisors = "the ITV Talon's captain"
	*/
	job_description = "Работа охранника заключается в обеспечении безопасности членов экипажа НТС Коготь и выполнении приказов капитана."
	supervisors = "the ITV Talon's captain"
	// End of Bastion of Endeavor Translation
	outfit_type = /decl/hierarchy/outfit/job/talon_security

	offmap_spawn = TRUE
	/* Bastion of Endeavor Translation
	faction = "Station" //Required for SSjob to allow people to join as it
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_TALON)
	total_positions = 1
	spawn_positions = 1
	selection_color = "#aaaaaa"
	economic_modifier = 5
	minimal_player_age = 14
	playtime_only = TRUE
	pto_type = PTO_TALON
	timeoff_factor = 1
	access = list(access_talon)
	minimal_access = list(access_talon)
	/* Bastion of Endeavor Translation
	alt_titles = list("Talon Security" = /datum/alt_title/talon_security)
	*/
	alt_titles = list("Офицер Когтя" = /datum/alt_title/talon_security)
	// End of Bastion of Endeavor Translation

/datum/alt_title/talon_security
	/* Bastion of Endeavor Translation
	title = "Talon Security"
	*/
	title = "Офицер Когтя"
	// End of Bastion of Endeavor Translation

/datum/job/talon_miner
	/* Bastion of Endeavor Translation
	title = "Talon Miner"
	*/
	title = "Шахтёр Когтя"
	// End of Bastion of Endeavor Translation
	flag = TALMIN
	department_flag = TALON
	/* Bastion of Endeavor Translation
	job_description = "The miner's job is to excavate ores and refine them for the Talon's use, as well as for trading."
	supervisors = "the ITV Talon's captain"
	*/
	job_description = "Работа шахтёра заключается в добыче и обработке руд для нужд корабля, а также торговли."
	supervisors = "Вы отвечаете перед капитаном НТС Коготь."
	// End of Bastion of Endeavor Translation
	outfit_type = /decl/hierarchy/outfit/job/talon_miner

	offmap_spawn = TRUE
	/* Bastion of Endeavor Translation
	faction = "Station" //Required for SSjob to allow people to join as it
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_TALON)
	total_positions = 1
	spawn_positions = 1
	selection_color = "#aaaaaa"
	economic_modifier = 5
	minimal_player_age = 14
	playtime_only = TRUE
	pto_type = PTO_TALON
	timeoff_factor = 1
	access = list(access_talon)
	minimal_access = list(access_talon)
	/* Bastion of Endeavor Translation
	alt_titles = list("Talon Excavator" = /datum/alt_title/talon_excavator)
	*/
	alt_titles = list("Землекоп Когтя" = /datum/alt_title/talon_excavator)
	// End of Bastion of Endeavor Translation

/datum/alt_title/talon_excavator
	/* Bastion of Endeavor Translation
	title = "Talon Excavator"
	*/
	title = "Землекоп Когтя"
	// End of Bastion of Endeavor Translation

//////////////////////TALON OUTFITS//////////////////////

/decl/hierarchy/outfit/job/talon_captain
	name = OUTFIT_JOB_NAME("Talon Captain")

	id_type = /obj/item/weapon/card/id/talon/captain
	id_slot = slot_wear_id
	pda_type = null

	l_ear = /obj/item/device/radio/headset/talon
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/rank/talon/command
	shoes = /obj/item/clothing/shoes/brown
	backpack = /obj/item/weapon/storage/backpack/talon
	satchel_one = /obj/item/weapon/storage/backpack/satchel/talon
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/talon

/decl/hierarchy/outfit/job/talon_pilot
	name = OUTFIT_JOB_NAME("Talon Pilot")

	id_type = /obj/item/weapon/card/id/talon/pilot
	id_slot = slot_wear_id
	pda_type = null
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_COMPREHENSIVE_SURVIVAL

	l_ear = /obj/item/device/radio/headset/talon
	shoes = /obj/item/clothing/shoes/black
	head = /obj/item/clothing/head/pilot_vr/talon
	uniform = /obj/item/clothing/under/rank/talon/pilot
	suit = /obj/item/clothing/suit/storage/toggle/bomber/pilot
	gloves = /obj/item/clothing/gloves/fingerless
	glasses = /obj/item/clothing/glasses/fakesunglasses/aviator
	uniform_accessories = list(/obj/item/clothing/accessory/storage/webbing/pilot1 = 1)
	backpack = /obj/item/weapon/storage/backpack/talon
	satchel_one = /obj/item/weapon/storage/backpack/satchel/talon
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/talon

/decl/hierarchy/outfit/job/talon_doctor
	name = OUTFIT_JOB_NAME("Talon Doctor")
	hierarchy_type = /decl/hierarchy/outfit/job

	id_type = /obj/item/weapon/card/id/talon/doctor
	id_slot = slot_wear_id
	pda_type = null

	l_ear = /obj/item/device/radio/headset/talon
	shoes = /obj/item/clothing/shoes/white
	backpack = /obj/item/weapon/storage/backpack/medic
	satchel_one = /obj/item/weapon/storage/backpack/satchel/med
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/med
	uniform = /obj/item/clothing/under/rank/talon/proper
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	l_hand = /obj/item/weapon/storage/firstaid/regular
	r_pocket = /obj/item/device/flashlight/pen
	backpack = /obj/item/weapon/storage/backpack/talon
	satchel_one = /obj/item/weapon/storage/backpack/satchel/talon
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/talon

/decl/hierarchy/outfit/job/talon_security
	name = OUTFIT_JOB_NAME("Talon Security")
	hierarchy_type = /decl/hierarchy/outfit/job

	id_type = /obj/item/weapon/card/id/talon/officer
	id_slot = slot_wear_id
	pda_type = null
	backpack_contents = list(/obj/item/weapon/handcuffs = 1)

	l_ear = /obj/item/device/radio/headset/talon
	gloves = /obj/item/clothing/gloves/black
	shoes = /obj/item/clothing/shoes/boots/jackboots
	backpack = /obj/item/weapon/storage/backpack/security
	satchel_one = /obj/item/weapon/storage/backpack/satchel/sec
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/sec
	uniform = /obj/item/clothing/under/rank/talon/security
	l_pocket = /obj/item/device/flash
	backpack = /obj/item/weapon/storage/backpack/talon
	satchel_one = /obj/item/weapon/storage/backpack/satchel/talon
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/talon

/decl/hierarchy/outfit/job/talon_engineer
	name = OUTFIT_JOB_NAME("Talon Engineer")
	hierarchy_type = /decl/hierarchy/outfit/job

	id_type = /obj/item/weapon/card/id/talon/engineer
	id_slot = slot_wear_id
	pda_type = null
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

	l_ear = /obj/item/device/radio/headset/talon
	belt = /obj/item/weapon/storage/belt/utility/full
	shoes = /obj/item/clothing/shoes/boots/workboots
	r_pocket = /obj/item/device/t_scanner
	backpack = /obj/item/weapon/storage/backpack/industrial
	satchel_one = /obj/item/weapon/storage/backpack/satchel/eng
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/engi
	uniform = /obj/item/clothing/under/rank/talon/basic
	belt = /obj/item/weapon/storage/belt/utility/atmostech
	backpack = /obj/item/weapon/storage/backpack/talon
	satchel_one = /obj/item/weapon/storage/backpack/satchel/talon
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/talon

/decl/hierarchy/outfit/job/talon_miner
	name = OUTFIT_JOB_NAME("Talon Miner")
	hierarchy_type = /decl/hierarchy/outfit/job

	id_type = /obj/item/weapon/card/id/talon/miner
	id_slot = slot_wear_id
	pda_type = null
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

	l_ear = /obj/item/device/radio/headset/talon
	shoes = /obj/item/clothing/shoes/boots/workboots
	r_pocket = /obj/item/weapon/storage/bag/ore
	l_pocket = /obj/item/weapon/tool/crowbar
	uniform = /obj/item/clothing/under/rank/talon/basic
	backpack = /obj/item/weapon/storage/backpack/talon
	satchel_one = /obj/item/weapon/storage/backpack/satchel/talon
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/talon
