//////////////////////////////////
//		Research Director
//////////////////////////////////
/datum/job/rd
	/* Bastion of Endeavor Translation
	title = "Research Director"
	*/
	title = "Директор по исследованиям"
	// End of Bastion of Endeavor Translation
	flag = RD
	departments_managed = list(DEPARTMENT_RESEARCH)
	departments = list(DEPARTMENT_RESEARCH, DEPARTMENT_COMMAND)
	sorting_order = 2
	department_flag = MEDSCI
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
	selection_color = "#AD6BAD"
	req_admin_notify = 1
	economic_modifier = 15
	access = list(access_rd, access_heads, access_tox, access_genetics, access_morgue,
			            access_tox_storage, access_teleporter, access_sec_doors,
			            access_research, access_robotics, access_xenobiology, access_ai_upload, access_tech_storage,
			            access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway, access_xenoarch, access_network)
	minimal_access = list(access_rd, access_heads, access_tox, access_genetics, access_morgue,
			            access_tox_storage, access_teleporter, access_sec_doors,
			            access_research, access_robotics, access_xenobiology, access_ai_upload, access_tech_storage,
			            access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway, access_xenoarch, access_network)

	minimum_character_age = 25
	minimal_player_age = 14
	min_age_by_species = list(SPECIES_UNATHI = 70, "mechanical" = 10, SPECIES_HUMAN_VATBORN = 14)
	ideal_character_age = 50
	ideal_age_by_species = list(SPECIES_UNATHI = 140, "mechanical" = 20, SPECIES_HUMAN_VATBORN = 20)
	banned_job_species = list(SPECIES_TESHARI, SPECIES_DIONA, SPECIES_PROMETHEAN, SPECIES_ZADDAT, "digital")

	outfit_type = /decl/hierarchy/outfit/job/science/rd
	/* Bastion of Endeavor Translation
	job_description = "The Research Director manages and maintains the Research department. They are required to ensure the safety of the entire crew, \
						at least with regards to anything occuring in the Research department, and to inform the crew of any disruptions that \
						might originate from Research. The Research Director often has at least passing knowledge of most of the Research department, but \
						are encouraged to allow their staff to perform their own duties."
	alt_titles = list("Research Supervisor" = /datum/alt_title/research_supervisor)
	*/
	job_description = "Директор по исследованиям отвечает за работу научного отдела. От него трубется своевременно информировать персонал об угрозах, которые могут возникнуть в процессе работы научного отдела, \
						а также обеспечение безопасности всего персонала от них. Директор по исследованиям обладает знаниями о большей части научно-исследовательских процессов, \
						однако как правило распределяет задачи между своими подопечными."
	alt_titles = list("Научный руководитель" = /datum/alt_title/research_supervisor)
	// End of Bastion of Endeavor Translation


// Research Director Alt Titles
/datum/alt_title/research_supervisor
	/* Bastion of Endeavor Translation
	title = "Research Supervisor"
	*/
	title = "Научный руководитель"
	// End of Bastion of Endeavor Translation

//////////////////////////////////
//			Scientist
//////////////////////////////////
/datum/job/scientist
	/* Bastion of Endeavor Translation
	title = "Scientist"
	*/
	title = "Учёный"
	// End of Bastion of Endeavor Translation
	flag = SCIENTIST
	departments = list(DEPARTMENT_RESEARCH)
	department_flag = MEDSCI
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 5
	spawn_positions = 3
	/* Bastion of Endeavor Translation
	supervisors = "the Research Director"
	*/
	supervisors = "Вы отвечаете перед Директором по исследованиям."
	// End of Bastion of Endeavor Translation
	selection_color = "#633D63"
	economic_modifier = 7
	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology, access_xenoarch)
	minimal_access = list(access_tox, access_tox_storage, access_research, access_xenoarch)
	min_age_by_species = list(SPECIES_PROMETHEAN = 2)
	banned_job_species = list("digital")

	minimal_player_age = 14

	outfit_type = /decl/hierarchy/outfit/job/science/scientist
	/* Bastion of Endeavor Translation
	job_description = "A Scientist is a generalist working in the Research department, with general knowledge of the scientific process, as well as \
						the principles and requirements of Research and Development. They may also formulate experiments of their own devising, if \
						they find an appropriate topic."
	alt_titles = list("Xenoarchaeologist" = /datum/alt_title/xenoarch, "Anomalist" = /datum/alt_title/anomalist, \
						"Phoron Researcher" = /datum/alt_title/phoron_research)
	*/
	job_description = "Учёный - сотрудник научного отдела широкого профиля, обладающий общим пониманием проведения исследований и знанием принципов НИР. \
						При наличии желании и темы, учёному разрешается проводить собственные эксперименты и опыты."
	alt_titles = list("Ксеноархеолог" = /datum/alt_title/xenoarch, "Исследователь аномалий" = /datum/alt_title/anomalist, \
						"Исследователь форона" = /datum/alt_title/phoron_research)
	// End of Bastion of Endeavor Translation

// Scientist Alt Titles
/datum/alt_title/xenoarch
	/* Bastion of Endeavor Translation
	title = "Xenoarchaeologist"
	title_blurb = "A Xenoarchaeologist enters digsites in search of artifacts of alien origin. These digsites are frequently in vacuum or other inhospitable \
					locations, and as such a Xenoarchaeologist should be prepared to handle hostile evironmental conditions."
	*/
	title = "Ксеноархеолог"
	title_blurb = "Ксеноархелог занимается поиском артефактов инопланетного происхождения в местах раскопок. \
					Зачастую эти места находятся в вакууме и прочих небезопасных локациях, поэтому ксеноархеолог должен быть всегда готов дать отпор опасной среде."
	// End of Bastion of Endeavor Translation

/datum/alt_title/anomalist
	/* Bastion of Endeavor Translation
	title = "Anomalist"
	title_blurb = "An Anomalist is a Scientist whose expertise is analyzing alien artifacts. They are familar with the most common methods of testing artifact \
					function. They work closely with Xenoarchaeologists, or Miners, if either role is present."
	*/
	title = "Исследователь аномалий"
	title_blurb = "Исследователь аномалий специализируется на изучении артефактов инопланетного происхождения, и ему известны наиболее распространённые методы проведения опытов над ними. \
					Он тесно сотрудничает с ксеноархеологами и шахтёрами, если таковые имееются."
	// End of Bastion of Endeavor Translation

/datum/alt_title/phoron_research
	/* Bastion of Endeavor Translation
	title = "Phoron Researcher"
	title_blurb = "A Phoron Researcher is a specialist in the practical applications of phoron, and has knowledge of its practical uses and dangers. \
					Many Phoron Researchers are interested in the combustability and explosive properties of gaseous phoron, as well as the specific hazards \
					of working with the substance in that state."
	*/
	title = "Исследователь форона"
	title_blurb = "Исследователь форона - специалист в сфере практического применения форона, знакомый как с его пользой, так и вредом. \
					Многие исследователи форона заинтересованы преимущественно во взрывчатых свойствах газообразного форона и знакомы с опасностями при работе с ним."
	// End of Bastion of Endeavor Translation

//////////////////////////////////
//			Xenobiologist
//////////////////////////////////
/datum/job/xenobiologist
	/* Bastion of Endeavor Translation
	title = "Xenobiologist"
	*/
	title = "Ксенобиолог"
	// End of Bastion of Endeavor Translation
	flag = XENOBIOLOGIST
	departments = list(DEPARTMENT_RESEARCH)
	department_flag = MEDSCI
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 3
	spawn_positions = 2
	/* Bastion of Endeavor Translation
	supervisors = "the Research Director"
	*/
	supervisors = "Вы отвечаете перед Директором по исследованиям."
	// End of Bastion of Endeavor Translation
	selection_color = "#633D63"
	economic_modifier = 7
	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology, access_hydroponics)
	minimal_access = list(access_research, access_xenobiology, access_hydroponics, access_tox_storage)
	banned_job_species = list("digital")

	minimal_player_age = 14
	min_age_by_species = list(SPECIES_PROMETHEAN = 2)

	outfit_type = /decl/hierarchy/outfit/job/science/xenobiologist
	/* Bastion of Endeavor Translation
	job_description = "A Xenobiologist studies esoteric lifeforms, usually in the relative safety of their lab. They attempt to find ways to benefit \
						from the byproducts of these lifeforms, and their main subject at present is the Giant Slime."
	*/
	job_description = "Ксенобиолог изучает инопланетные формы жизни, обычно в пределах своей относительно безопасной лаборатории. \
						Он исследует методы практического применения продуктов их жизнедеятельности, и на данный момент их объектами исследования являются слизни."
	// End of Bastion of Endeavor Translation
/*VR edit start
	alt_titles = list("Xenobotanist" = /datum/alt_title/xenobot)

 Xenibiologist Alt Titles
/datum/alt_title/xenobot
	title = "Xenobotanist"
	title_blurb = "A Xenobotanist grows and cares for a variety of abnormal, custom made, and frequently dangerous plant life. When the products of these plants \
					is both safe and beneficial to the station, they may choose to introduce it to the rest of the crew."
VR edit end*/

//////////////////////////////////
//			Roboticist
//////////////////////////////////
/datum/job/roboticist
	/* Bastion of Endeavor Translation
	title = "Roboticist"
	*/
	title = "Робототехник"
	// End of Bastion of Endeavor Translation
	flag = ROBOTICIST
	departments = list(DEPARTMENT_RESEARCH)
	department_flag = MEDSCI
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = 2
	spawn_positions = 2
	/* Bastion of Endeavor Translation
	supervisors = "the Research Director"
	*/
	supervisors = "Вы отвечаете перед Директором по исследованиям."
	// End of Bastion of Endeavor Translation
	selection_color = "#633D63"
	economic_modifier = 5
	access = list(access_robotics, access_tox, access_tox_storage, access_tech_storage, access_morgue, access_research) //As a job that handles so many corpses, it makes sense for them to have morgue access.
	minimal_access = list(access_robotics, access_tech_storage, access_morgue, access_research) //As a job that handles so many corpses, it makes sense for them to have morgue access.
	minimal_player_age = 7
	min_age_by_species = list(SPECIES_PROMETHEAN = 2)
	banned_job_species = list("digital")

	outfit_type = /decl/hierarchy/outfit/job/science/roboticist
	/* Bastion of Endeavor Translation
	job_description = "A Roboticist maintains and repairs the station's synthetics, including crew with prosthetic limbs. \
						They can also assist the station by producing simple robots and even pilotable exosuits."
	alt_titles = list("Biomechanical Engineer" = /datum/alt_title/biomech, "Mechatronic Engineer" = /datum/alt_title/mech_tech)
	*/
	job_description = "Робототехник занимается обслуживанием и ремонтом синтетических форм жизни на станции, а также протезов членов персонала. \
						Более того, они могут помочь станции, создавая как простых роботов, так и пилотируемые экзокостюмы."
	alt_titles = list("Инженер-биомеханик" = /datum/alt_title/biomech, "Инженер-мехатроник" = /datum/alt_title/mech_tech)
	// End of Bastion of Endeavor Translation

// Roboticist Alt Titles
/datum/alt_title/biomech
	/* Bastion of Endeavor Translation
	title = "Biomechanical Engineer"
	title_blurb = "A Biomechanical Engineer primarily works on prosthetics, and the organic parts attached to them. They may have some \
					knowledge of the relatively simple surgical procedures used in making cyborgs and attaching prosthesis."
	*/
	title = "Инженер-биомеханик"
	title_blurb = "Инженер-биомеханик занимается, как правило, протезами, а также органическими частями тела, сращиваемых с ними. \
					У него есть примерное представление о простейших хирургических операциях, связанных с присоединением протезов и созданием киборгов."
	// End of Bastion of Endeavor Translation

/datum/alt_title/mech_tech
	/* Bastion of Endeavor Translation
	title = "Mechatronic Engineer"
	title_blurb = "A Mechatronic Engineer focuses on the construction and maintenance of Exosuits, and should be well versed in their use. \
					They may also be called upon to work on synthetics and prosthetics, if needed."
	*/
	title = "Инженер-мехатроник"
	title_blurb = "Инженер-мехатроник специализируется на строительстве экзокостюмов и управлении ими. \
					При необходимости он может также обслуживать протезы членов персонала и заниматься ремонтом синтетов."
	// End of Bastion of Endeavor Translation