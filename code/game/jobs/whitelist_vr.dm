var/list/job_whitelist = list()

/hook/startup/proc/loadJobWhitelist()
	load_jobwhitelist()
	return 1

/proc/load_jobwhitelist()
	var/text = file2text("config/jobwhitelist.txt")
	if (!text)
		/* Bastion of Endeavor Translation
		log_misc("Failed to load config/jobwhitelist.txt")
		*/
		log_misc("Не удалось загрузить config/jobwhitelist.txt")
		// End of Bastion of Endeavor Translation
	else
		job_whitelist = splittext(text, "\n")

/proc/is_job_whitelisted(mob/M, var/rank)
	var/datum/job/job = job_master.GetJob(rank)
	if(!job.whitelist_only)
		return 1
	if(rank == USELESS_JOB) //VOREStation Edit - Visitor not Assistant
		return 1
	if(check_rights(R_ADMIN, 0))
		return 1
	if(!job_whitelist)
		return 0
	if(M && rank)
		for (var/s in job_whitelist)
			/* Bastion of Endeavor Unicode Edit
			if(findtext(s,"[lowertext(M.ckey)] - [lowertext(rank)]"))
			*/
			if(findtext_char(s,"[lowertext(M.ckey)] - [lowertext(rank)]"))
			// End of Bastion of Endeavor Unicode Edit
				return 1
			/* Bastion of Endeavor Translation
			if(findtext(s,"[M.ckey] - All"))
			*/
			if(findtext_char(s,"[M.ckey] - Все"))
			// End of Bastion of Endeavor Translation
				return 1
	return 0

