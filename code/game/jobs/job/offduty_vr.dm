//
// "Off-duty" jobs are for people who want to do nothing and have earned it.
//

/datum/job/offduty_civilian
	/* Bastion of Endeavor Translation: I really don't like this one given that this is a service role and the wording is weird
	title = "Off-duty Worker"
	*/
	title = "Работник на отгуле"
	// End of Bastion of Endeavor Translation
	latejoin_only = TRUE
	timeoff_factor = -1
	total_positions = -1
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_OFFDUTY)
	/* Bastion of Endeavor Translation
	supervisors = "nobody! Enjoy your time off"
	*/
	supervisors = "Вы ни перед кем не отчитываетесь! Наслаждайтесь отдыхом."
	// End of Bastion of Endeavor Translation
	selection_color = "#9b633e"
	access = list(access_maint_tunnels)
	minimal_access = list(access_maint_tunnels)
	outfit_type = /decl/hierarchy/outfit/job/assistant/worker
	/* Bastion of Endeavor Translation
	job_description = "Off-duty crew has no responsibilities or authority and is just there to spend their well-deserved time off."
	*/
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."
	// End of Bastion of Endeavor Translation
	pto_type = PTO_CIVILIAN
	economic_modifier = 2

/datum/job/offduty_cargo
	/* Bastion of Endeavor Translation
	title = "Off-duty Cargo"
	*/
	title = "Грузчик на отгуле"
	// End of Bastion of Endeavor Translation
	latejoin_only = TRUE
	timeoff_factor = -1
	total_positions = -1
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_OFFDUTY)
	/* Bastion of Endeavor Translation
	supervisors = "nobody! Enjoy your time off"
	*/
	supervisors = "Вы ни перед кем не отчитываетесь! Наслаждайтесь отдыхом."
	// End of Bastion of Endeavor Translation
	selection_color = "#9b633e"
	access = list(access_maint_tunnels)
	minimal_access = list(access_maint_tunnels)
	outfit_type = /decl/hierarchy/outfit/job/assistant/cargo
	/* Bastion of Endeavor Translation
	job_description = "Off-duty crew has no responsibilities or authority and is just there to spend their well-deserved time off."
	*/
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."
	// End of Bastion of Endeavor Translation
	pto_type = PTO_CARGO
	economic_modifier = 2

/datum/job/offduty_engineering
	/* Bastion of Endeavor Translation
	title = "Off-duty Engineer"
	*/
	title = "Инженер на отгуле"
	// End of Bastion of Endeavor Translation
	latejoin_only = TRUE
	timeoff_factor = -1
	total_positions = -1
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_OFFDUTY)
	/* Bastion of Endeavor Translation
	supervisors = "nobody! Enjoy your time off"
	*/
	supervisors = "Вы ни перед кем не отчитываетесь! Наслаждайтесь отдыхом."
	// End of Bastion of Endeavor Translation
	selection_color = "#5B4D20"
	access = list(access_maint_tunnels, access_external_airlocks, access_construction)
	minimal_access = list(access_maint_tunnels, access_external_airlocks)
	outfit_type = /decl/hierarchy/outfit/job/assistant/engineer
	/* Bastion of Endeavor Translation
	job_description = "Off-duty crew has no responsibilities or authority and is just there to spend their well-deserved time off."
	*/
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."
	// End of Bastion of Endeavor Translation
	pto_type = PTO_ENGINEERING
	economic_modifier = 5

/datum/job/offduty_medical
	/* Bastion of Endeavor Translation
	title = "Off-duty Medic"
	*/
	title = "Врач на отгуле"
	// End of Bastion of Endeavor Translation
	latejoin_only = TRUE
	timeoff_factor = -1
	total_positions = -1
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_OFFDUTY)
	/* Bastion of Endeavor Translation
	supervisors = "nobody! Enjoy your time off"
	*/
	supervisors = "Вы ни перед кем не отчитываетесь! Наслаждайтесь отдыхом."
	// End of Bastion of Endeavor Translation
	selection_color = "#013D3B"
	access = list(access_maint_tunnels, access_external_airlocks)
	minimal_access = list(access_maint_tunnels, access_external_airlocks)
	outfit_type = /decl/hierarchy/outfit/job/assistant/medic
	/* Bastion of Endeavor Translation
	job_description = "Off-duty crew has no responsibilities or authority and is just there to spend their well-deserved time off."
	*/
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."
	// End of Bastion of Endeavor Translation
	pto_type = PTO_MEDICAL
	economic_modifier = 5

/datum/job/offduty_science
	/* Bastion of Endeavor Translation
	title = "Off-duty Scientist"
	*/
	title = "Учёный на отгуле"
	// End of Bastion of Endeavor Translation
	latejoin_only = TRUE
	timeoff_factor = -1
	total_positions = -1
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_OFFDUTY)
	/* Bastion of Endeavor Translation
	supervisors = "nobody! Enjoy your time off"
	*/
	supervisors = "Вы ни перед кем не отчитываетесь! Наслаждайтесь отдыхом."
	// End of Bastion of Endeavor Translation
	selection_color = "#633D63"
	access = list(access_maint_tunnels)
	minimal_access = list(access_maint_tunnels)
	outfit_type = /decl/hierarchy/outfit/job/assistant/scientist
	/* Bastion of Endeavor Translation
	job_description = "Off-duty crew has no responsibilities or authority and is just there to spend their well-deserved time off."
	*/
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."
	// End of Bastion of Endeavor Translation
	pto_type = PTO_SCIENCE
	economic_modifier = 5 

/datum/job/offduty_security
	/* Bastion of Endeavor Translation
	title = "Off-duty Officer"
	*/
	title = "Офицер на отгуле"
	// End of Bastion of Endeavor Translation
	latejoin_only = TRUE
	timeoff_factor = -1
	total_positions = -1
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_OFFDUTY)
	/* Bastion of Endeavor Translation
	supervisors = "nobody! Enjoy your time off"
	*/
	supervisors = "Вы ни перед кем не отчитываетесь! Наслаждайтесь отдыхом."
	// End of Bastion of Endeavor Translation
	selection_color = "#601C1C"
	access = list(access_maint_tunnels)
	minimal_access = list(access_maint_tunnels)
	outfit_type = /decl/hierarchy/outfit/job/assistant/officer
	/* Bastion of Endeavor Translation
	job_description = "Off-duty crew has no responsibilities or authority and is just there to spend their well-deserved time off."
	*/
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."
	// End of Bastion of Endeavor Translation
	pto_type = PTO_SECURITY
	economic_modifier = 4

/datum/job/offduty_exploration
	/* Bastion of Endeavor Translation
	title = "Off-duty Explorer"
	*/
	title = "Исследователь на отгуле"
	// End of Bastion of Endeavor Translation
	latejoin_only = TRUE
	timeoff_factor = -1
	total_positions = -1
	/* Bastion of Endeavor Translation
	faction = "Station"
	*/
	faction = "Станция"
	// End of Bastion of Endeavor Translation
	departments = list(DEPARTMENT_OFFDUTY)
	/* Bastion of Endeavor Translation
	supervisors = "nobody! Enjoy your time off"
	*/
	supervisors = "Вы ни перед кем не отчитываетесь! Наслаждайтесь отдыхом."
	// End of Bastion of Endeavor Translation
	selection_color = "#999440"
	access = list(access_maint_tunnels, access_external_airlocks)
	minimal_access = list(access_maint_tunnels, access_external_airlocks)
	outfit_type = /decl/hierarchy/outfit/job/assistant/explorer
	/* Bastion of Endeavor Translation
	job_description = "Off-duty crew has no responsibilities or authority and is just there to spend their well-deserved time off."
	*/
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."
	// End of Bastion of Endeavor Translation
	pto_type = PTO_EXPLORATION
	economic_modifier = 5
