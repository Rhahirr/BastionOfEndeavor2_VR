#define WHITELISTFILE "data/whitelist.txt"

var/list/whitelist = list()

/hook/startup/proc/loadWhitelist()
	if(config.usewhitelist)
		load_whitelist()
	return 1

/proc/load_whitelist()
	whitelist = file2list(WHITELISTFILE)
	if(!whitelist.len)	whitelist = null

/proc/check_whitelist(mob/M /*, var/rank*/)
	if(!whitelist)
		return 0
	return ("[M.ckey]" in whitelist)

/var/list/alien_whitelist = list()

/hook/startup/proc/loadAlienWhitelist()
	if(config.usealienwhitelist)
		load_alienwhitelist()
	return 1

/proc/load_alienwhitelist()
	var/text = file2text("config/alienwhitelist.txt")
	if (!text)
		/* Bastion of Endeavor Translation
		log_misc("Failed to load config/alienwhitelist.txt")
		*/
		log_misc("Не удалось загрузить config/alienwhitelist.txt")
		// End of Bastion of Endeavor Translation
	else
		/* Bastion of Endeavor Unicode Edit
		var/lines = splittext(text, "\n") // Now we've got a bunch of "ckey = something" strings in a list
		*/
		var/lines = splittext_char(text, "\n") // Now we've got a bunch of "ckey = something" strings in a list
		// End of Bastion of Endeavor Unicode Edit
		for(var/line in lines)
			/* Bastion of Endeavor Unicode Edit
			var/list/left_and_right = splittext(line, " - ") // Split it on the dash into left and right
			*/
			var/list/left_and_right = splittext_char(line, " - ") // Split it on the dash into left and right
			// End of Bastion of Endeavor Unicode Edit
			if(LAZYLEN(left_and_right) != 2)
				/* Bastion of Endeavor Translation
				warning("Alien whitelist entry is invalid: [line]") // If we didn't end up with a left and right, the line is bad
				*/
				warning("Недопустимая запись вайтлиста рас: [line]")
				// End of Bastion of Endeavor Translation
				continue
			var/key = left_and_right[1]
			if(key != ckey(key))
				/* Bastion of Endeavor Translation
				warning("Alien whitelist entry appears to have key, not ckey: [line]") // The key contains invalid ckey characters
				*/
				warning("Запись вайтлиста рас содержит кей вместо скея: [line]") // The key contains invalid ckey characters
				// End of Bastion of Endeavor Translation
				continue
			var/list/our_whitelists = alien_whitelist[key] // Try to see if we have one already and add to it
			if(!our_whitelists) // Guess this is their first/only whitelist entry
				our_whitelists = list()
				alien_whitelist[key] = our_whitelists
			our_whitelists += left_and_right[2]

/proc/is_alien_whitelisted(mob/M, var/datum/species/species)
	//They are admin or the whitelist isn't in use
	if(whitelist_overrides(M))
		return TRUE

	//You did something wrong
	if(!M || !species)
		return FALSE

	//The species isn't even whitelisted
	if(!(species.spawn_flags & SPECIES_IS_WHITELISTED))
		return TRUE

	//Search the whitelist
	var/list/our_whitelists = alien_whitelist[M.ckey]
	/* Bastion of Endeavor Translation
	if("All" in our_whitelists)
	*/
	if("Все" in our_whitelists)
	// End of Bastion of Endeavor Translation
		return TRUE
	if(species.name in our_whitelists)
		return TRUE

	// Go apply!
	return FALSE

/proc/is_lang_whitelisted(mob/M, var/datum/language/language)
	//They are admin or the whitelist isn't in use
	if(whitelist_overrides(M))
		return TRUE

	//You did something wrong
	if(!M || !language)
		return FALSE

	//The language isn't even whitelisted
	if(!(language.flags & WHITELISTED))
		return TRUE

	//Search the whitelist
	var/list/our_whitelists = alien_whitelist[M.ckey]
	/* Bastion of Endeavor Translation
	if("All" in our_whitelists)
	*/
	if("Все" in our_whitelists)
	// End of Bastion of Endeavor Translation
		return TRUE
	if(language.name in our_whitelists)
		return TRUE

	return FALSE

/proc/is_borg_whitelisted(mob/M, var/module)
	//They are admin or the whitelist isn't in use
	if(whitelist_overrides(M))
		return 1

	//You did something wrong
	if(!M || !module)
		return 0

	//Module is not even whitelisted
	if(!(module in whitelisted_module_types))
		return 1

	//If we have a loaded file, search it
	if(alien_whitelist)
		for (var/s in alien_whitelist)
			/* Bastion of Endeavor Unicode Edit
			if(findtext(s,"[M.ckey] - [module]"))
			*/
			if(findtext_char(s,"[M.ckey] - [module]"))
			// End of Bastion of Endeavor Unicode Edit
				return 1
			/* Bastion of Endeavor Translation
			if(findtext(s,"[M.ckey] - All"))
			*/
			if(findtext_char(s,"[M.ckey] - Все"))
			// End of Bastion of Endeavor Translation
				return 1

/proc/whitelist_overrides(mob/M)
	if(!config.usealienwhitelist)
		return TRUE
	if(check_rights(R_ADMIN|R_EVENT, 0, M))
		return TRUE

	return FALSE

#undef WHITELISTFILE
