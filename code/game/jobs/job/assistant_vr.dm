//////////////////////////////////
//		Intern
//////////////////////////////////

/datum/job/intern
	/* Bastion of Endeavor Translation
	title = "Intern"
	*/
	title = "Стажёр"
	// End of Bastion of Endeavor Translation
	flag = INTERN
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = ENGSEC // Ran out of bits
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = -1
	spawn_positions = -1
	/* Bastion of Endeavor Translation
	supervisors = "the staff from the department you're interning in"
	*/
	supervisors = "Вы подчиняетесь сотрудникам отдела, за которым закреплены."
	// End of Bastion of Endeavor Translation
	selection_color = "#555555"
	economic_modifier = 2
	access = list()			//See /datum/job/intern/get_access()
	minimal_access = list()	//See /datum/job/intern/get_access()
	outfit_type = /decl/hierarchy/outfit/job/assistant/intern
	/* Bastion of Endeavor Translation
	alt_titles = list("Apprentice Engineer" = /datum/alt_title/intern_eng,
					  "Medical Intern" = /datum/alt_title/intern_med,
					  "Research Intern" = /datum/alt_title/intern_sci,
					  "Security Cadet" = /datum/alt_title/intern_sec,
					  "Jr. Cargo Tech" = /datum/alt_title/intern_crg,
					  "Jr. Explorer" = /datum/alt_title/intern_exp,
					  "Server" = /datum/alt_title/server,
					  "Assistant" = /datum/alt_title/assistant)
	job_description = "An Intern does whatever is requested of them, often doing so in process of learning \
						another job. Though they are part of the crew, they have no real authority."

	*/
	alt_titles = list("Помощник инженера" = /datum/alt_title/intern_eng,
					  "Врач-интерн" = /datum/alt_title/intern_med,
					  "Интерн-лаборант" = /datum/alt_title/intern_sci,
					  "Кадет службы безопасности" = /datum/alt_title/intern_sec,
					  "Младший грузчик" = /datum/alt_title/intern_crg,
					  "Младший исследователь" = /datum/alt_title/intern_exp,
					  "Официант" = /datum/alt_title/server,
					  "Ассистент" = /datum/alt_title/assistant)
	job_description = "Стажёр делает то, что от него попросят, чаще всего в процессе обучения определённой работе. \
						Хоть стажёр и является частью персонала, он не обладает никакой реальной властью на станции."
	// End of Bastion of Endeavor Translation
	timeoff_factor = 0 // Interns, noh
	requestable = FALSE

/datum/alt_title/intern_eng
	/* Bastion of Endeavor Translation
	title = "Apprentice Engineer"
	title_blurb = "An Apprentice Engineer attempts to provide whatever the Engineering department needs. They are not proper Engineers, and are \
					often in training to become an Engineer. An Apprentice Engineer has no real authority."
	*/
	title = "Помощник инженера"
	title_blurb = "Помощник инженера обязан выполнять поручения инженерного отдела. Он пока не является полноценным инженером, \
					но набирает знания, чтобы им стать. Помощник инженера не обладает никакой реальной властью на станции."
	// End of Bastion of Endeavor Translation
	title_outfit = /decl/hierarchy/outfit/job/assistant/engineer

/datum/alt_title/intern_med
	/* Bastion of Endeavor Translation
	title = "Medical Intern"
	title_blurb = "A Medical Intern attempts to provide whatever the Medical department needs. They are not proper Doctors, and are \
					often in training to become a Doctor. A Medical Intern has no real authority."
	*/
	title = "Врач-интерн"
	title_blurb = "Врач-интерн обязан выполнять поручения медицинского отдела. Он пока не является полноценным врачом, \
					но набирает знания, чтобы им стать. Врач-интерн не обладает никакой реальной властью на станции."
	// End of Bastion of Endeavor Translation
	title_outfit = /decl/hierarchy/outfit/job/assistant/medic

/datum/alt_title/intern_sci
	/* Bastion of Endeavor Translation
	title = "Research Intern"
	title_blurb = "A Research Intern attempts to provide whatever the Research department needs. They are not proper Scientists, and are \
					often in training to become a Scientist. A Research Intern has no real authority."
	*/
	title = "Интерн-лаборант"
	title_blurb = "Интерн-лаборант обязан выполнять поручения научного отдела. Он пока не является полноценным учёным, \
					но набирает знания, чтобы им стать. Лаборант не обладает никакой реальной властью на станции."
	// End of Bastion of Endeavor Translation
	title_outfit = /decl/hierarchy/outfit/job/assistant/scientist

/datum/alt_title/intern_sec
	/* Bastion of Endeavor Translation
	title = "Security Cadet"
	title_blurb = "A Security Cadet attempts to provide whatever the Security department needs. They are not proper Officers, and are \
					often in training to become an Officer. A Security Cadet has no real authority."
	*/
	title = "Кадет службы безопасности"
	title_blurb = "Кадет службы безопасности обязан выполнять поручения службы безопасности. Он пока не является полноценным офицером, \
					но набирает знания, чтобы им стать. Кадет службы безопасности не обладает никакой реальной властью на станции."
	// End of Bastion of Endeavor Translation
	title_outfit = /decl/hierarchy/outfit/job/assistant/officer

/datum/alt_title/intern_crg
	/* Bastion of Endeavor Translation
	title = "Jr. Cargo Tech"
	title_blurb = "A Jr. Cargo Tech attempts to provide whatever the Cargo department needs. They are not proper Cargo Technicians, and are \
					often in training to become a Cargo Technician. A Jr. Cargo Tech has no real authority."
	*/
	title = "Младший грузчик"
	title_blurb = "Младший грузчик обязан выполнять поручения грузового отдела. Он пока не является полноценным грузчиком, \
					но набирает знания, чтобы им стать. Младший грузчик не обладает никакой реальной властью на станции."
	// End of Bastion of Endeavor Translation
	title_outfit = /decl/hierarchy/outfit/job/assistant/cargo

/datum/alt_title/intern_exp
	/* Bastion of Endeavor Translation
	title = "Jr. Explorer"
	title_blurb = "A Jr. Explorer attempts to provide whatever the Exploration department needs. They are not proper Explorers, and are \
					often in training to become an Explorer. A Jr. Explorer has no real authority."
	*/
	title = "Младший исследователь"
	title_blurb = "Младший исследователь обязан выполнять поручения службы безопасности. Он пока не является полноценным исследователем, \
					но набирает знания, чтобы им стать. Младший исследователь не обладает никакой реальной властью на станции."
	// End of Bastion of Endeavor Translation
	title_outfit = /decl/hierarchy/outfit/job/assistant/explorer

/datum/alt_title/server
	/* Bastion of Endeavor Translation
	title = "Server"
	title_blurb = "A Server helps out kitchen and diner staff with various tasks, primarily food delivery. A Server has no real authority."
	*/
	title = "Официант"
	title_blurb = "Официант выполняет поручения на кухне и в баре, а также занимается доставкой еды. Официант не обладает никакой реальной властью на станции."
	// End of Bastion of Endeavor Translation
	title_outfit = /decl/hierarchy/outfit/job/service/server

/datum/alt_title/assistant
	/* Bastion of Endeavor Translation
	title = "Assistant"
	title_blurb = "An assistant helps out wherever they might be needed. They have no authority, but can volunteer to help if help is needed."
	*/
	title = "Ассистент"
	title_blurb = "Ассистент выполняет различные поручения. Он не обладает никакой реальной властью на станции, но может оказать помощь там, где она нужна."
	// End of Bastion of Endeavor Translation
	title_outfit = /decl/hierarchy/outfit/job/service/server

/datum/job/intern/New()
	..()
	if(config)
		total_positions = config.limit_interns
		spawn_positions = config.limit_interns

/datum/job/intern/get_access()
	if(config.assistant_maint)
		return list(access_maint_tunnels)
	else
		return list()


//////////////////////////////////
//		Visitor
//////////////////////////////////

/datum/job/assistant		// Visitor
	/* Bastion of Endeavor Translation
	title = USELESS_JOB
	supervisors = "nobody! You don't work here"
	job_description = "A Visitor is just there to visit the place. They have no real authority or responsibility."
	*/
	title = "Посетитель"
	supervisors = "Вы ни перед кем не отвечаете, так как даже тут не работаете!"
	job_description = "Посетитель - всего лишь гость на станции. У него нет никакой реальной власти, но при этом нету и каких-либо обязанностей."
	// End of Bastion of Endeavor Translation
	timeoff_factor = 0
	requestable = FALSE
	/* Bastion of Endeavor Translation
	alt_titles = list("Guest" = /datum/alt_title/guest, "Traveler" = /datum/alt_title/traveler)
	*/
	alt_titles = list("Гость" = /datum/alt_title/guest, "Путешественник" = /datum/alt_title/traveler)
	// End of Bastion of Endeavor Translation

/datum/job/assistant/New()
	..()
	if(config)
		total_positions = config.limit_visitors
		spawn_positions = config.limit_visitors

/datum/job/assistant/get_access()
	return list()

/datum/alt_title/guest
	/* Bastion of Endeavor Translation
	title = "Guest"
	*/
	title = "Гость"
	// End of Bastion of Endeavor Translation

/datum/alt_title/traveler
	/* Bastion of Endeavor Translation
	title = "Traveler"
	*/
	title = "Путешественник"
	// End of Bastion of Endeavor Translation
