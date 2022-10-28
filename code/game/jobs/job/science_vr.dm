/datum/job/rd
	disallow_jobhop = TRUE
	pto_type = PTO_SCIENCE
	dept_time_required = 60

	access = list(access_rd, access_heads, access_tox, access_genetics, access_morgue,
			            access_tox_storage, access_teleporter,
			            access_research, access_robotics, access_xenobiology, access_ai_upload, access_tech_storage,
			            access_RC_announce, access_keycard_auth, access_tcomsat, access_xenoarch, access_eva, access_network, access_xenobotany)
	minimal_access = list(access_rd, access_heads, access_tox, access_genetics, access_morgue,
			            access_tox_storage, access_teleporter,
			            access_research, access_robotics, access_xenobiology, access_ai_upload, access_tech_storage,
			            access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway, access_xenoarch, access_eva, access_network, access_xenobotany)
	/* Bastion of Endeavor Translation
	alt_titles = list("Research Supervisor" = /datum/alt_title/research_supervisor, "Research Manager" = /datum/alt_title/research_manager,
						"Head of Development" = /datum/alt_title/head_of_development,"Head Scientist" = /datum/alt_title/head_scientist)
	*/
	alt_titles = list("Научный руководитель" = /datum/alt_title/research_supervisor, "Менеджер научных проектов" = /datum/alt_title/research_manager,
						"Руководитель разработки" = /datum/alt_title/head_of_development,"Главный учёный" = /datum/alt_title/head_scientist)
	// End of Bastion of Endeavor Translation

/datum/alt_title/research_manager
	/* Bastion of Endeavor Translation
	title = "Research Manager"
	*/
	title = "Менеджер научных проектов"
	// End of Bastion of Endeavor Translation

/datum/alt_title/head_of_development
	/* Bastion of Endeavor Translation
	title = "Head of Development"
	*/
	title = "Руководитель разработки"
	// End of Bastion of Endeavor Translation

/datum/alt_title/head_scientist
	/* Bastion of Endeavor Translation
	title = "Head Scientist"
	*/
	title = "Главный учёный"
	// End of Bastion of Endeavor Translation

/datum/job/rd/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Repairs needed", "Training crew")
	*/
	return list("Ремонт и техобслуживание", "Обучение персонала")
	// End of Bastion of Endeavor Translation


/datum/job/scientist
	spawn_positions = 5
	pto_type = PTO_SCIENCE
	/* Bastion of Endeavor Translation
	alt_titles = list("Researcher" = /datum/alt_title/researcher, "Lab Assistant" = /datum/alt_title/lab_assistant, "Xenoarchaeologist" = /datum/alt_title/xenoarch,
						"Xenopaleontologist" = /datum/alt_title/xenopaleontologist, "Anomalist" = /datum/alt_title/anomalist, "Phoron Researcher" = /datum/alt_title/phoron_research,
						"Gas Physicist" = /datum/alt_title/gas_physicist, "Circuit Designer" = /datum/alt_title/circuit_designer, "Circuit Programmer" = /datum/alt_title/circuit_programmer)
	*/
	alt_titles = list("Экспериментататор" = /datum/alt_title/researcher, "Лаборант" = /datum/alt_title/lab_assistant, "Ксеноархеолог" = /datum/alt_title/xenoarch,
						"Ксенопалеонтолог" = /datum/alt_title/xenopaleontologist, "Исследователь аномалий" = /datum/alt_title/anomalist, "Исследователь форона" = /datum/alt_title/phoron_research,
						"Исследователь газов" = /datum/alt_title/gas_physicist, "Дизайнер микросхем" = /datum/alt_title/circuit_designer, "Программист микросхем" = /datum/alt_title/circuit_programmer)
	// End of Bastion of Endeavor Translation


	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology, access_xenoarch, access_xenobotany)
	minimal_access = list(access_tox, access_tox_storage, access_research, access_xenoarch)					// Unchanged (for now?), mostly here for reference

/datum/alt_title/researcher
	/* Bastion of Endeavor Translation
	title = "Researcher"
	*/
	title = "Экспериментатор"
	// End of Bastion of Endeavor Translation

/datum/alt_title/lab_assistant
/* Bastion of Endeavor Translation
	title = "Lab Assistant"
	title_blurb = "A Lab Assistant is a lower-level member of research staff, whose main purpose is to help scientists with their specialized work in more menial fashion, while also \
					learning the specializations in process."
*/
	title = "Лаборант"
	title_blurb = "Лаборант находится на нижней ступени научного отдела, и в его обязанности входит оказание другим учёным помощи с менее весёлой рутиной, \
					 в процессе чего он может набраться знаний в той или иной сфере."
// End of Bastion of Endeavor Translation

/datum/alt_title/xenopaleontologist
	/* Bastion of Endeavor Translation
	title = "Xenopaleontologist"
	title_blurb = "A Xenopaleontologist enters digsites in search of fossils and other ancient remants of alien life. These digsites are frequently in vacuum or other inhospitable \
					locations, and as such a Xenopaleontologist should be prepared to handle hostile evironmental conditions."
	*/
	title = "Ксенопалеонтолог"
	title_blurb = "Ксенопалеонтолог посещает места раскопок в поисках ископаемых и древних следов жизни на планетах. \
					Зачастую эти места находятся в вакууме и прочих небезопасных локациях, поэтому ксеноархеолог должен быть всегда готов дать отпор опасной среде"
	// End of Bastion of Endeavor Translation

/datum/alt_title/gas_physicist
	/* Bastion of Endeavor Translation
	title = "Gas Physicist"
	title_blurb = "A Gas Physicist is a specialist in various practical applications of gasses, but currently focuses their attention on phoron, and has knowledge of its practical uses and dangers. \
					Many Gas Physicists are interested in the combustability and explosive properties of gaseous phoron, as well as the specific hazards \
					of working with the substance in that state."
	*/
	title = "Исследователь газов"
	title_blurb = "Исследователь газов - специалист в сфере практического применения газов. На данный момент он изучает преимущественно форон и знаком как с его пользой, так и вредом. \
					Многие исследователи газов заинтересованы преимущественно во взрывчатых свойствах газообразного форона и знакомы с опасностями при работе с ним."
	// End of Bastion of Endeavor Translation

/datum/alt_title/circuit_designer
	/* Bastion of Endeavor Translation
	title = "Circuit Designer"
	title_blurb = "A Circuit Designer is a Scientist whose expertise is working with integrated circuits. They are familar with the workings and programming of those devices. \
				   They work to create various useful devices using the capabilities of integrated circuitry."
	*/
	title = "Дизайнер микросхем"
	title_blurb = "Дизайнер микросхем - это учёный, специализирующийся в сфере интегральных схем, обладающий знаниями о принципах их работы и навыками для их программирования. \
				   Его работа заключается в использовании их для создания различных полезных механизмов."
	// End of Bastion of Endeavor Translation

/datum/alt_title/circuit_programmer
	/* Bastion of Endeavor Translation
	title = "Circuit Programmer"
	title_blurb = "A Circuit Programmer is a Scientist whose expertise is working with integrated circuits. They are familar with the workings and programming of those devices. \
				   They work to create various useful devices using the capabilities of integrated circuitry."
	*/
	title = "Программист микросхем"
	title_blurb = "Программист микросхем - это учёный, специализирующийся в сфере интегральных схем, обладающий знаниями о принципах их работы и навыками для их программирования. \
				   Его работа заключается в использовании их для создания различных полезных механизмов."
	// End of Bastion of Endeavor Translation


/datum/job/xenobiologist
	spawn_positions = 3
	pto_type = PTO_SCIENCE
	/* Bastion of Endeavor Translation
	alt_titles = list("Xenozoologist" = /datum/alt_title/xenozoologist, "Xenoanthropologist" = /datum/alt_title/xenoanthropologist)
	*/
	alt_titles = list("Ксенозоолог" = /datum/alt_title/xenozoologist, "Ксеноантрополог" = /datum/alt_title/xenoanthropologist)
	// End of Bastion of Endeavor Translation

/datum/alt_title/xenozoologist
	/* Bastion of Endeavor Translation
	title = "Xenozoologist"
	*/
	title = "Ксенозоолог"
	// End of Bastion of Endeavor Translation

/datum/alt_title/xenoanthropologist
	/* Bastion of Endeavor Translation
	title = "Xenoanthropologist"
	title_blurb = "Xenoanthropologist still heavily focuses their study on alien lifeforms, but their specialty leans more towards fellow sapient beings than simple animals."
	*/
	title = "Ксеноантрополог"
	title_blurb = "Ксеноантрополог изучает инопланетные формы жизни, однако в первую очередь направляет свои усилия на исследование разумных форм жизни, а не простых зверей."
	// End of Bastion of Endeavor Translation


/datum/job/roboticist
	total_positions = 3
	pto_type = PTO_SCIENCE
	/* Bastion of Endeavor Translation
	alt_titles = list("Assembly Technician" = /datum/alt_title/assembly_tech, "Biomechanical Engineer" = /datum/alt_title/biomech, "Mechatronic Engineer" = /datum/alt_title/mech_tech)
	*/
	alt_titles = list("Техник-конструктор" = /datum/alt_title/assembly_tech, "Инженер-биомеханик" = /datum/alt_title/biomech, "Инженер-мехатроник" = /datum/alt_title/mech_tech)
	// End of Bastion of Endeavor Translation

/datum/alt_title/assembly_tech
	/* Bastion of Endeavor Translation
	title = "Assembly Technician"
	*/
	title = "Техник-конструктор"
	// End of Bastion of Endeavor Translation

/datum/job/roboticist/get_request_reasons()
	/* Bastion of Endeavor Translation
	return list("Repairs needed")
	*/
	return list("Ремонт и техобслуживание")
	// End of Bastion of Endeavor Translation

//////////////////////////////////
//			Xenobotanist
//////////////////////////////////
/datum/job/xenobotanist
	/* Bastion of Endeavor Translation
	title = "Xenobotanist"
	*/
	title = "Ксеноботаник"
	// End of Bastion of Endeavor Translation
	flag = XENOBOTANIST
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
	supervisors = "Вы отвечаете непосредственно перед Директором по исследованиям."
	// End of Bastion of Endeavor Translation
	selection_color = "#633D63"
	economic_modifier = 7
	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobotany, access_hydroponics)
	minimal_access = list(access_research, access_xenobotany, access_hydroponics, access_tox_storage)
	pto_type = PTO_SCIENCE

	minimal_player_age = 14

	outfit_type = /decl/hierarchy/outfit/job/science/xenobiologist
	/* Bastion of Endeavor Translation
	job_description = "A Xenobotanist grows and cares for a variety of abnormal, custom made, and frequently dangerous plant life. When the products of these plants \
					are both safe and beneficial to the station, they may choose to introduce it to the rest of the crew."
	alt_titles = list("Xenohydroponicist" = /datum/alt_title/xenohydroponicist, "Xenoflorist" = /datum/alt_title/xenoflorist)
	*/
	job_description = "Ксеноботаник занимается выращиванием и уходом за необыкновенными и зачастую вручную культивированными растениями. \
					Нередко работа с этими растениями бывает опасной, но может принести полезные и безопасные плоды."
	alt_titles = list("Ксенокультиватор" = /datum/alt_title/xenohydroponicist, "Ксенофлорист" = /datum/alt_title/xenoflorist)
	// End of Bastion of Endeavor Translation

/datum/alt_title/xenoflorist
	/* Bastion of Endeavor Translation
	title = "Xenoflorist"
	*/
	title = "Ксенофлорист"
	// End of Bastion of Endeavor Translation

/datum/alt_title/xenohydroponicist
	/* Bastion of Endeavor Translation
	title = "Xenohydroponicist"
	*/
	title = "Ксенокультиватор"
	// End of Bastion of Endeavor Translation