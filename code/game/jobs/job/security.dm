//////////////////////////////////
//		Head of Security
//////////////////////////////////
/datum/job/hos
	/* Bastion of Endeavor Translation
	title = "Head of Security"
	*/
	title = "Глава службы безопасности"
	// End of Bastion of Endeavor Translation
	flag = HOS
	departments_managed = list(DEPARTMENT_SECURITY)
	departments = list(DEPARTMENT_SECURITY, DEPARTMENT_COMMAND)
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
	selection_color = "#8E2929"
	req_admin_notify = 1
	economic_modifier = 10
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimum_character_age = 25
	min_age_by_species = list(SPECIES_HUMAN_VATBORN = 14)
	minimal_player_age = 14
	ideal_character_age = 50
	ideal_age_by_species = list(SPECIES_HUMAN_VATBORN = 20)
	banned_job_species = list(SPECIES_TESHARI, SPECIES_DIONA, SPECIES_PROMETHEAN, SPECIES_ZADDAT, "digital", SPECIES_UNATHI, "mechanical")

	outfit_type = /decl/hierarchy/outfit/job/security/hos
	/* Bastion of Endeavor Translation
	job_description = "	The Head of Security manages the Security Department, keeping the station safe and making sure the rules are followed. They are expected to \
						keep the other Department Heads, and the rest of the crew, aware of developing situations that may be a threat. If necessary, the HoS may \
						perform the duties of absent Security roles, such as distributing gear from the Armory."
	*/
	job_description = "Глава службы безопасности отвечает за службу безопасности и обеспечивает на станции порядок и соблюдение правил. \
						От него ожидается своевременное информирование других Глав отделов, как и всего остального персонала, об угрозах на территории станции. \
						При необходимости Глава службы безопасности также может выполнять обязанности недостающего персонала СБ - например, выдачу снаряжения из Арсенала."
	// End of Bastion of Endeavor Translation
	/* Bastion of Endeavor Translation
	alt_titles = list("Security Commander" = /datum/alt_title/sec_commander, "Chief of Security" = /datum/alt_title/sec_chief)
	*/
	alt_titles = list("Командир службы безопасности" = /datum/alt_title/sec_commander, "Начальник службы безопасности" = /datum/alt_title/sec_chief)
	// End of Bastion of Endeavor Translation


// Head of Security Alt Titles
/datum/alt_title/sec_commander
	/* Bastion of Endeavor Translation
	title = "Security Commander"
	*/
	title = "Командир службы безопасности"
	// End of Bastion of Endeavor Translation

/datum/alt_title/sec_chief
	/* Bastion of Endeavor Translation
	title = "Chief of Security"
	*/
	title = "Начальник службы безопасности"
	// End of Bastion of Endeavor Translation

//////////////////////////////////
//			Warden
//////////////////////////////////
/datum/job/warden
	/* Bastion of Endeavor Translation
	title = "Warden"
	*/
	title = "Надзиратель брига"
	// End of Bastion of Endeavor Translation
	flag = WARDEN
	departments = list(DEPARTMENT_SECURITY)
	sorting_order = 1
	department_flag = ENGSEC
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 1
	spawn_positions = 1
	/* Bastion of Endeavor Translation
	supervisors = "the Head of Security"
	*/
	supervisors = "Вы отвечаете перед Главой службы безопасности."
	// End of Bastion of Endeavor Translation
	selection_color = "#601C1C"
	economic_modifier = 5
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 5
	banned_job_species = list(SPECIES_ZADDAT, SPECIES_PROMETHEAN, SPECIES_TESHARI, SPECIES_DIONA)

	outfit_type = /decl/hierarchy/outfit/job/security/warden
	/* Bastion of Endeavor Translation
	job_description = "The Warden watches over the physical Security Department, making sure the Brig and Armoury are secure and in order at all times. They oversee \
						prisoners that have been processed and brigged, and are responsible for their well being. The Warden is also in charge of distributing \
						Armoury gear in a crisis, and retrieving it when the crisis has passed. In an emergency, the Warden may be called upon to direct the \
						Security Department as a whole."
	*/
	job_description = "Надзиратель отвечает непосредственно за блок службы безопасности на станции и поддерживает порядок в Бриге и Арсенале. \
						Он наблюдает за заключёнными, отправленными в бриг, и отвечает за их безопасность и здоровье. \
						В случае чрезвычайного положения надзиратель распоряжается выдачей снаряжения из Арсенала и отвечает за его сбор, как только кризис минует. \
						При необходимости в случае экстренных ситуаций надзирателю разрешено управлять всем персоналом службы безопасности."
	// End of Bastion of Endeavor Translation

//////////////////////////////////
//			Detective
//////////////////////////////////
/datum/job/detective
	/* Bastion of Endeavor Translation
	title = "Detective"
	*/
	title = "Детектив"
	// End of Bastion of Endeavor Translation
	flag = DETECTIVE
	departments = list(DEPARTMENT_SECURITY)
	department_flag = ENGSEC
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 2
	spawn_positions = 2
	/* Bastion of Endeavor Translation
	supervisors = "the Head of Security"
	*/
	supervisors = "Вы отвечаете перед Главой службы безопасности."
	// End of Bastion of Endeavor Translation
	selection_color = "#601C1C"
	access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_eva, access_external_airlocks, access_brig) //Vorestation edit - access_brig
	minimal_access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_eva, access_external_airlocks)
	economic_modifier = 5
	minimal_player_age = 3
	banned_job_species = list(SPECIES_ZADDAT, SPECIES_PROMETHEAN, SPECIES_DIONA)

	outfit_type = /decl/hierarchy/outfit/job/security/detective
	/* Bastion of Endeavor Translation
	job_description = "A Detective works to help Security find criminals who have not properly been identified, through interviews and forensic work. \
						For crimes only witnessed after the fact, or those with no survivors, they attempt to piece together what they can from pure evidence."
	alt_titles = list("Forensic Technician" = /datum/alt_title/forensic_tech)
	*/
	job_description = "Детектив помогает службе безопасности идентифицировать преступников с помощью допросов и судебно-медицинской экспертизы. \
						Если о преступлении стало известно слишком поздно, и выживших не осталось, детектив старается собрать цепочку событий на основе оставшихся улик."
	alt_titles = list("Судмедэксперт" = /datum/alt_title/forensic_tech)
	// End of Bastion of Endeavor Translation

// Detective Alt Titles
/datum/alt_title/forensic_tech
	/* Bastion of Endeavor Translation
	title = "Forensic Technician"
	title_blurb = "A Forensic Technician works more with hard evidence and labwork than a Detective, but they share the purpose of solving crimes."
	*/
	title = "Судмедэксперт"
	title_blurb = "Судмедэксперт в основном занимается изучением улик в лаборатории, но точно так же помогает службе безопасности раскрывать преступления."
	// End of Bastion of Endeavor Translation
	title_outfit = /decl/hierarchy/outfit/job/security/detective/forensic

//////////////////////////////////
//		Security Officer
//////////////////////////////////
/datum/job/officer
	/* Bastion of Endeavor Translation
	title = "Security Officer"
	*/
	title = "Офицер службы безопасности"
	// End of Bastion of Endeavor Translation
	flag = OFFICER
	departments = list(DEPARTMENT_SECURITY)
	department_flag = ENGSEC
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 4
	spawn_positions = 4
	/* Bastion of Endeavor Translation
	supervisors = "the Head of Security"
	*/
	supervisors = "Вы отвечаете перед Главой службы безопасности."
	// End of Bastion of Endeavor Translation
	selection_color = "#601C1C"
	economic_modifier = 4
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 3
	banned_job_species = list(SPECIES_ZADDAT, SPECIES_TESHARI, SPECIES_DIONA)

	outfit_type = /decl/hierarchy/outfit/job/security/officer
	/* Bastion of Endeavor Translation
	job_description = "A Security Officer is concerned with maintaining the safety and security of the station as a whole, dealing with external threats and \
						apprehending criminals. A Security Officer is responsible for the health, safety, and processing of any prisoner they arrest. \
						No one is above the Law, not Security or Command."
	alt_titles = list("Junior Officer" = /datum/alt_title/junior_officer)
	*/
	job_description = "Офицер службы безопасности отвечает за безопасность персонала и порядок на территории станции. В его обязанности входит как защита станции от внешних угроз, \
						так и арест преступников. Офицер ответственен за безопасность и здоровье каждого арестованного, а также обязуется обеспечивать своевременное оформление всех сопутствующих документов. \
						Никто не превыше закона, даже служба безопасности и Командование."
	alt_titles = list("Младший офицер" = /datum/alt_title/junior_officer)
	// End of Bastion of Endeavor Translation

	min_age_by_species = list(SPECIES_PROMETHEAN = 3)

// Security Officer Alt Titles
/datum/alt_title/junior_officer
	/* Bastion of Endeavor Translation
	title = "Junior Officer"
	title_blurb = "A Junior Officer is an inexperienced Security Officer. They likely have training, but not experience, and are frequently \
					paired off with a more senior co-worker. Junior Officers may also be expected to take over the boring duties of other Officers \
					including patrolling the station or maintaining specific posts."
	*/
	title = "Младший офицер"
	title_blurb = "Младший офицер, вероятно, уже прошёл обучение, но не обладает достаточным опытом, чтобы считаться полноценным офицером. \
					Младший офицер нередко работает в паре с более опытным коллегой, или же выполняет наименее интересные задачи персонала службы безопасности \
					- например, патрулирование или наблюдение на отведённом ему посте."
	// End of Bastion of Endeavor Translation