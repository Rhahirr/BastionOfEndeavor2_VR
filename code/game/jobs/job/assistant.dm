//////////////////////////////////
//			Assistant
//////////////////////////////////
/datum/job/assistant
	/* Bastion of Endeavor Translation
	title = "Assistant"
	*/
	title = "Ассистент"
	// End of Bastion of Endeavor Translation
	flag = ASSISTANT
	departments = list(DEPARTMENT_CIVILIAN)
	sorting_order = -1
	department_flag = CIVILIAN
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	total_positions = -1
	spawn_positions = -1
	/* Bastion of Endeavor Translation
	supervisors = "absolutely everyone"
	*/
	supervisors = "Вы починяетесь каждому члену персонала."
	// End of Bastion of Endeavor Translation
	selection_color = "#515151"
	economic_modifier = 1
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()

	outfit_type = /decl/hierarchy/outfit/job/assistant
	/* Bastion of Endeavor Translation
	job_description = "An Assistant does whatever is requested of them. Though they are part of the crew, they have no real authority."
	*/
	job_description = "Ассистент выполняет различные поручения. Он не обладает никакой реальной властью на станции, но может оказать помощь там, где она нужна."
	// End of Bastion of Endeavor Translation
/*	alt_titles = list("Technical Assistant" = /datum/alt_title/tech_assist,
						"Medical Intern"= /datum/alt_title/med_intern, "Research Assistant" = /datum/alt_title/research_assist,
						"Visitor" = /datum/alt_title/visitor)
	)	*/	//VOREStation Removal: no alt-titles for visitors

/datum/job/assistant/get_access()
	if(config.assistant_maint)
		return list(access_maint_tunnels)
	else
		return list()

// Assistant Alt Titles
// Bastion of Endeavor Note: See no reason to localize these
/datum/alt_title/tech_assist
	title = "Technical Assistant"
	title_blurb = "A Technical Assistant attempts to provide whatever the Engineering department needs. They are not proper Engineers, and are \
					often in training to become an Engineer. A Technical Assistant has no real authority."

/datum/alt_title/med_intern
	title = "Medical Intern"
	title_blurb = "A Medical Intern attempts to provide whatever the Medical department needs. They are frequently asked to pay attention to \
					the suit sensors console. A Medical Intern has no real authority."

/datum/alt_title/research_assist
	title = "Research Assistant"
	title_blurb = "A Research Assistant attempts to assist anyone working in the Research department. They are expected to follow the instruction \
					of proper Research staff, as it is frequently a matter of safety. A Research Assistant has no real authority."

/datum/alt_title/visitor
	title = "Visitor"
	title_blurb = "A Visitor is anyone who has arrived on the station but does not have a specific job to do. Many off-duty crewmembers \
					who care to make use of the station's facilities arrive as Visitors. Properly registered Vistors are considered \
					to be part of the crew for most if not all purposes, but they have no real authority."
	title_outfit = /decl/hierarchy/outfit/job/assistant/visitor

/datum/alt_title/resident		// Just in case it makes a comeback
	title = "Resident"
	title_blurb = "A Resident is an individual who resides on the station, frequently in a different part of the station than what is seen. \
					They are considered to be part of the crew for most purposes, but have no real authority."
	title_outfit = /decl/hierarchy/outfit/job/assistant/resident
