// Weird grammar bullshit goes here
var/global/list/basic_cases_list_ru = list(
	RUGENDER = "", \
	NCASE = "", \
	GCASE = "", \
	DCASE = "", \
	ACASE = "", \
	ICASE = "", \
	PCASE = "")

/datum
	var/list/case_blueprint_ru
	var/list/cases_ru
	var/number_lock_ru
	var/always_plural_ru

/atom/New() // radical? yes. will it break things? won't know until we try.
	..()
	cases_ru = new /list()
	create_cases_ru()
	construct_cases_ru()

/datum/proc/create_cases_ru(var/subcase)
	if(subcase)
		cases_ru[subcase] = new /list()
		cases_ru[subcase] = basic_cases_list_ru
	else
		cases_ru.Add(basic_cases_list_ru)

/datum/proc/construct_cases_ru()
	if(isnull(case_blueprint_ru)) 	// if we're lacking a blueprint then it's probably unlocalized
		return						// so don't bother with it
	if(!(islist(case_blueprint_ru)))
		log_grammar_ru("Ошибка: шаблон [src.type] не в формате листа! [case_blueprint_ru]")
		error("Ошибка: шаблон падежей [src.type] не в формате листа! [case_blueprint_ru]")
		return
	else if (case_blueprint_ru.len == 0)
		return
	//log_grammar_ru("Производится сборка падежей для [src.type].")
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
		//log_grammar_ru("working_blueprint типа [src.type]: [working_blueprint.Join(", ")]")
		// let's store them here for now. makes the proc look a little less ugly
		var/list/template_list = list(RUGENDER = shortrugender2gender_ru(working_blueprint[1]), "wordbase" = working_blueprint[2])
		var/list/casekey_helper = list("casekey" = "")
		if(working_blueprint.len == 3)
			casekey_helper["casekey"] = working_blueprint[3]
			template_list.Add(casekey_helper)
		//template_list = "male", "безымянн;adj1a подарок&подарк;n3*a для проверки системы падежей", ""
		//log_grammar_ru("template_list типа [src.type]: [template_list.Join(", ")]")
		var/list/temp_cases_list = list(NCASE = "", GCASE = "", DCASE = "", ACASE = "", ICASE = "", PCASE = "", PLURAL_NCASE = "", PLURAL_GCASE = "", PLURAL_DCASE = "", PLURAL_ACASE = "", PLURAL_ICASE = "", PLURAL_PCASE = "") // our list of 6 basic grammar cases
		var/list/word_list = splittext_char(template_list["wordbase"], " ")								// now, let's break down the rest and separate the words
		// word_list = "безымянн;1a", "подарок&подарк;3*a", "для", "проверки", "падежей"
		//log_grammar_ru("word_list типа [src.type]: [word_list.Join(", ")]")
		for(var/j=1, j<=word_list.len, j++)												// alright, so for every word that we have in wordbase
			//log_grammar_ru("[word_list[j]]")
			if(findtext_char(word_list[j], ";"))										// if the word contains a ; that defines our word ending
				var/list/constructor_list = splittext_char(word_list[j], ";")			// then take it apart and store it in a list
				// constructor_list = 1) "безымянн", "adj1a" 2) "подарок&подарк", "n3*a"
				// what the next line does is creating a key that finds us a list of endings the word is supposed to use
				//log_grammar_ru("constructor_list типа [src.type]: [constructor_list.Join(", ")]")
				var/endings_key = "[template_list[RUGENDER]]_[constructor_list[2]]"
				if(case_repository_ru.Find(endings_key))
					var/string_to_fill = strip_accent_ru(case_repository_ru[endings_key])
					// string_to_fill = 1) ??? 2) "{{{основа}}};{{{основа1}}}а;{{{основа1}}}у;{{{основа}}};{{{основа1}}}ом;{{{основа1}}}е;{{{основа1}}}и;{{{основа1}}}ов;{{{основа1}}}ам;{{{основа1}}}и;{{{основа1}}}ами;{{{основа1}}}ах"
					var/list/word_bases_list = splittext_char(constructor_list[1], "&")
					// word_bases_list 1) "безымянн" 2) "подарок", "подарк"
					//log_grammar_ru("word_bases_list типа [src.type]: [word_bases_list.Join(", ")]")
					if(word_bases_list.len == 1)
						// not using regex here because it straight up doesnt work with unicode
						string_to_fill = replacetext_char(string_to_fill, "{{{основа}}}", word_bases_list[1])
						string_to_fill = replacetext_char(string_to_fill, "{{{основа1}}}", word_bases_list[1])
						string_to_fill = replacetext_char(string_to_fill, "{{{основа2}}}", word_bases_list[1])
						string_to_fill = replacetext_char(string_to_fill, "{{{основа3}}}", word_bases_list[1])
						string_to_fill = replacetext_char(string_to_fill, "{{{основа4}}}", word_bases_list[1])
						string_to_fill = replacetext_char(string_to_fill, "{{{основа5}}}", word_bases_list[1])
						//string_to_fill = replacetext_char(string_to_fill, regex("(\\{\\{\\{основ.*\\}\\}\\})", "g"), word_bases_list[1])
						//log_grammar_ru("string_to_fill типа [src.type]: [string_to_fill]")
					else
						var/z = 0
						for(var/word_base in word_bases_list)
							var/string_to_replace = "{{{основа[z==0? "" : z]}}}"
							string_to_fill = replacetext_char(string_to_fill, string_to_replace, "[word_bases_list[z+1]]")
							z++
						//log_grammar_ru("string_to_fill типа [src.type]: [string_to_fill]")
					// string_to_fill = "подарок;подарка;подарку;подарок;подарком;подарке;подарки;подарков;подаркам;подарки;подарками;подарках"
					var/list/complete_word_list = splittext_char(string_to_fill, ";")
					//log_grammar_ru("complete_word_list типа [src.type]: [complete_word_list.Join(", ")]")
					var/i = 0															// the reason im not using i in the for loop itself is that
					for(var/case in temp_cases_list)									// we want to refer to the case by its name
						//log_grammar_ru("Собираем падеж [case] типа [src.type].")
						i++																// but we also want a counting var
						// so for instance, temp_cases_list[GCASE] += "загадочн"+"ого"+""
						temp_cases_list[case] += "[complete_word_list[i]][j == word_list.len? "" : " "]"
				else
					log_grammar_ru("ОШИБКА: Ключ [endings_key] не найден. Шаблон [case_blueprint_ru[current_blueprint]] типа [src.type].")
					error("Ключ [endings_key] не найден. Шаблон [case_blueprint_ru[current_blueprint]] типа [src.type].")
					continue
			else																			// if the word doesn't contain a ;
				for(var/case_extra in temp_cases_list)											// then for every case it has
					temp_cases_list[case_extra] += "[word_list[j]][j == word_list.len? "" : " "]"	// just slap the word in and call it a day
		//log_grammar_ru("temp_cases_list типа [src.type]: [temp_cases_list.Join(", ")]")
		var/list/final_cases_list = list(RUGENDER = template_list[RUGENDER], PLURAL_RUGENDER = "plural")		// now just toss the rugender in
		final_cases_list.Add(temp_cases_list)											// and compile it into a final list
		//log_grammar_ru("final_case_list типа [src.type]: [final_cases_list.Join(", ")]")
		if(length_char(template_list["casekey"])>1)										// and if we happen to have a case key,
			returning_case_list[template_list["casekey"]] = final_cases_list			// then make into a nested list
		else																			// otherwise,
			returning_case_list = final_cases_list										// just dump the final list into the returning list
			//log_grammar_ru("returning_case_list типа [src.type]: [returning_case_list.Join(", ")]")
	src.assigncases_ru(returning_case_list)												// all that's left is to deepcopy the list into the datum's case_ru var
	//log_grammar_ru(cases_ru.Join(", "))
	/*if(successful_cases_ru.Find(src.type))
		return
	else
		successful_cases_ru += src.type
		log_grammar_ru("Завершена сборка падежей [case_ru(src, GCASE)] (тип [src.type], в.п. [case_ru(src, ACASE)])")
	*/

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
