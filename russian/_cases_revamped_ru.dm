// Weird grammar bullshit goes here
var/global/list/successful_cases_ru = list()

/atom/New() // radical? yes. will it break things? won't know until we try.
	..()
	cases_ru = new /list()
	create_cases_ru("basic")
	construct_cases_ru()

/datum/proc/create_cases_ru(var/subcase)
	if(subcase)
		cases_ru[subcase] = new /list()
		cases_ru[subcase] = basic_cases_list_ru
	else
		cases_ru.Add(basic_cases_list_ru)

/datum/proc/construct_cases_ru()
	var/enable_logging = FALSE
	var/enable_reporting = FALSE
	if(isnull(case_blueprint_ru)) 	// if we're lacking a blueprint then it's probably unlocalized
		return						// so don't bother with it
	if(!(islist(case_blueprint_ru)))
		log_grammar_ru("Ошибка: шаблон [src.type] не в формате листа! [case_blueprint_ru]")
		error("Ошибка: шаблон падежей [src.type] не в формате листа! [case_blueprint_ru]")
		return
	else if (case_blueprint_ru.len == 0)
		return
	if(enable_logging) log_grammar_ru("Производится сборка падежей для [src.type].")
	// муж#безымянн;1a подарок&подарк;3*a для проверки системы падежей
	var/list/returning_case_list = new /list()														// what we're going to be outputting, basically
	for(var/current_blueprint=1, current_blueprint<=case_blueprint_ru.len, current_blueprint++)		// so for every template in the list we are provided with
		var/list/working_blueprint = splittext_char(case_blueprint_ru[current_blueprint], "#") 		// let's break it down to grab the rugender, the words and the case key
		if(working_blueprint.len == 1 && (ticker.current_state >= GAME_STATE_INIT))																// if we're missing the gender its best to just drop the proc
			log_grammar_ru("ОШИБКА: не указан род/число шаблона [src.type]: [case_blueprint_ru[current_blueprint]]. Используем мужской род, ед.ч., по умолчанию.")
			error("Не указан род/число шаблона [src.type]: [case_blueprint_ru[current_blueprint]]. Используем мужской род, ед.ч., по умолчанию.")
			working_blueprint.Insert(1, "муж")															// except the show must go on and we'll just assume male gender as default
		else if (working_blueprint.len > 3)																// if we have more separators than we need, it's okay, but i'll want to clean it up
			log_grammar_ru("ВНИМАНИЕ: шаблон [src.type] содержит более двух разделителей: [case_blueprint_ru[current_blueprint]]")
			warning("Шаблон [src.type] содержит более двух разделителей: [case_blueprint_ru[current_blueprint]]")
		// working_blueprint = "муж", "безымянн;adj1a подарок&подарк;n3*a для проверки системы падежей", ""
		if(enable_logging) log_grammar_ru("working_blueprint: [working_blueprint.Join(", ")]")
		// let's store them here for now. makes the proc look a little less ugly
		var/list/template_list = list(RUGENDER = shortrugender2gender_ru(working_blueprint[1]), "wordbase" = working_blueprint[2])
		var/list/casekey_helper = list("casekey" = "")
		if(working_blueprint.len == 3)
			casekey_helper["casekey"] = working_blueprint[3]
			template_list.Add(casekey_helper)
		//template_list = "male", "безымянн;adj1a подарок&подарк;n3*a для проверки системы падежей", ""
		if(enable_logging) log_grammar_ru("template_list: [jointext(list_values(template_list), ", ")]")
		var/list/temp_cases_list = list(NCASE = "", GCASE = "", DCASE = "", ACASE = "", ICASE = "", PCASE = "", PLURAL_NCASE = "", PLURAL_GCASE = "", PLURAL_DCASE = "", PLURAL_ACASE = "", PLURAL_ICASE = "", PLURAL_PCASE = "") // our list of 6 basic grammar cases
		var/list/word_list = splittext_char(template_list["wordbase"], " ")								// now, let's break down the rest and separate the words
		// word_list = "безымянн;1a", "подарок&подарк;3*a", "для", "проверки", "падежей"
		if(enable_logging) log_grammar_ru("word_list: [word_list.Join(", ")]")
		for(var/j=1, j<=word_list.len, j++)												// alright, so for every word that we have in wordbase
			if(enable_logging) log_grammar_ru("Сборка окончаний для word_list [j]: [word_list[j]]")
			if(findtext_char(word_list[j], ";"))										// if the word contains a ; that defines our word ending
				var/list/constructor_list = splittext_char(word_list[j], ";")			// then take it apart and store it in a list
				// constructor_list = 1) "безымянн", "adj1a" 2) "подарок&подарк", "n3*a"
				// what the next line does is creating a key that finds us a list of endings the word is supposed to use
				if(enable_logging) log_grammar_ru("constructor_list: [constructor_list.Join(", ")]")
				var/endings_key = "[template_list[RUGENDER]]_[constructor_list[2]]"
				if(case_repository_ru.Find(endings_key))
					var/string_to_fill = strip_accent_ru(case_repository_ru[endings_key])
					// string_to_fill = 1) ??? 2) "{{{основа}}};{{{основа1}}}а;{{{основа1}}}у;{{{основа}}};{{{основа1}}}ом;{{{основа1}}}е;{{{основа1}}}и;{{{основа1}}}ов;{{{основа1}}}ам;{{{основа1}}}и;{{{основа1}}}ами;{{{основа1}}}ах"
					var/list/word_bases_list = splittext_char(constructor_list[1], "&")
					// word_bases_list 1) "безымянн" 2) "подарок", "подарк"
					if(enable_logging) log_grammar_ru("word_bases_list: [word_bases_list.Join(", ")]")
					if(word_bases_list.len == 1)
						// not using regex here because it straight up doesnt work with unicode
						string_to_fill = replacetext_char(string_to_fill, "{{{основа}}}", word_bases_list[1])
						string_to_fill = replacetext_char(string_to_fill, "{{{основа1}}}", word_bases_list[1])
						string_to_fill = replacetext_char(string_to_fill, "{{{основа2}}}", word_bases_list[1])
						string_to_fill = replacetext_char(string_to_fill, "{{{основа3}}}", word_bases_list[1])
						string_to_fill = replacetext_char(string_to_fill, "{{{основа4}}}", word_bases_list[1])
						string_to_fill = replacetext_char(string_to_fill, "{{{основа5}}}", word_bases_list[1])
						//string_to_fill = replacetext_char(string_to_fill, regex("(\\{\\{\\{основ.*\\}\\}\\})", "g"), word_bases_list[1])
						if(enable_logging) log_grammar_ru("string_to_fill: [string_to_fill]")
					else
						var/z = 0
						for(var/word_base in word_bases_list)
							var/string_to_replace = "{{{основа[z==0? "" : z]}}}"
							string_to_fill = replacetext_char(string_to_fill, string_to_replace, "[word_bases_list[z+1]]")
							z++
						if(enable_logging) log_grammar_ru("string_to_fill: [string_to_fill]")
					// string_to_fill = "подарок;подарка;подарку;подарок;подарком;подарке;подарки;подарков;подаркам;подарки;подарками;подарках"
					var/list/complete_word_list = splittext_char(string_to_fill, ";")
					if(enable_logging) log_grammar_ru("complete_word_list: [complete_word_list.Join(", ")]")
					var/i = 0															// the reason im not using i in the for loop itself is that
					for(var/case in temp_cases_list)									// we want to refer to the case by its name
						i++																// but we also want a counting var
						// so for instance, temp_cases_list[GCASE] += "загадочн"+"ого"+""
						temp_cases_list[case] += "[complete_word_list[i]][j == word_list.len? "" : " "]"
						// commenting this one out because takes too much space
						// if(enable_logging) log_grammar_ru("Собираем падеж [case]: [temp_cases_list[case]]")
				else
					log_grammar_ru("ОШИБКА: Ключ [endings_key] не найден. Шаблон [case_blueprint_ru[current_blueprint]].")
					error("Ключ [endings_key] не найден. Шаблон [case_blueprint_ru[current_blueprint]].")
					continue
			else																			// if the word doesn't contain a ;
				for(var/case_extra in temp_cases_list)											// then for every case it has
					temp_cases_list[case_extra] += "[word_list[j]][j == word_list.len? "" : " "]"	// just slap the word in and call it a day
		if(enable_logging) log_grammar_ru("temp_cases_list: [jointext(list_values(temp_cases_list), ", ")]")
		var/list/final_cases_list = list(RUGENDER = template_list[RUGENDER], PLURAL_RUGENDER = "plural")		// now just toss the rugender in
		final_cases_list.Add(temp_cases_list)											// and compile it into a final list
		if(enable_logging) log_grammar_ru("final_cases_list: [jointext(list_values(final_cases_list), ", ")]")
		if(!isnull(template_list["casekey"]))									// and if we happen to have a case key,
			returning_case_list[template_list["casekey"]] = final_cases_list			// then make into a nested list
		else
			returning_case_list["basic"] = final_cases_list
		if(enable_logging) log_grammar_ru("returning_case_list: [returning_case_list.Join(", ")]")
	src.cases_ru = deepCopyList(returning_case_list)											// all that's left is to deepcopy the list into the datum's case_ru var
	
	if(enable_logging)
		for(var/case_group in cases_ru)
			log_grammar_ru("[case_group]: [jointext(list_values(cases_ru[case_group]), ", ")]")
	if(successful_cases_ru.Find(src.type))
		return
	else
		successful_cases_ru += src.type
		if(enable_reporting) log_grammar_ru("Завершена сборка падежей [case_ru(src, GCASE)] (тип [src.type], в.п. [case_ru(src, ACASE)])")

/proc/shortrugender2gender_ru(var/rugender)
	switch(lowertext(rugender))
		if("муж") return MALE
		if("жен") return FEMALE
		if("сред") return NEUTER
		if("множ") return PLURAL
	return

// Since the templates have accentuation left intact for clarity purposes, this proc is meant to remove it when displaying text.
/proc/strip_accent_ru(var/text)
	text = replacetext_char(text, "а́", "а")
	text = replacetext_char(text, "е́", "е")
	text = replacetext_char(text, "и́", "и")
	text = replacetext_char(text, "о́", "о")
	text = replacetext_char(text, "у́", "у")
	text = replacetext_char(text, "ы́", "ы")
	text = replacetext_char(text, "э́", "э")
	text = replacetext_char(text, "ю́", "ю")
	text = replacetext_char(text, "я́", "я")
	return text

/proc/log_grammar_ru(text)
	if (config.log_debug)
		WRITE_LOG(grammar_log_ru, "ПАДЕЖИ: [text]")
	for(var/client/C in GLOB.admins)
		to_chat(C, "<span class='filter_debuglog'>ПАДЕЖИ: [text]</span>")

/obj/item/weapon/debug_ru
	name = "Безымянный подарок для проверки системы падежей"
	desc = "Что же внутри?"
	icon = 'icons/obj/storage.dmi'
	icon_state = "blue"
	case_blueprint_ru = list("муж#безымянн;adj1a подарок&подарк;n3*a для проверки системы падежей")

/proc/make_case_fancy_ru(var/text)
	switch(text)
		if(RUGENDER) return "Род"
		if(NCASE) return "Им. п. ед. ч."
		if(GCASE) return "Род. п. ед. ч."
		if(DCASE) return "Дат. п. ед. ч."
		if(ACASE) return "Вин. п. ед. ч."
		if(ICASE) return "Тв. п. ед. ч."
		if(PCASE) return "Пр. п. ед. ч."
		if(PLURAL_NCASE) return "Им. п. мн. ч."
		if(PLURAL_GCASE) return "Род. п. мн. ч."
		if(PLURAL_DCASE) return "Дат. п. мн. ч."
		if(PLURAL_ACASE) return "Вин. п. мн. ч."
		if(PLURAL_ICASE) return "Тв. п. мн. ч."
		if(PLURAL_PCASE) return "Пр. п. мн. ч."
	return
