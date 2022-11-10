// This is basically a copypaste of Spawn + Case Editor + Delete verbs
// this is incredibly convenient for debugging without having to find objects to click on
/client/proc/debug_cases_ru(var/object as text)
	set name = "Проверить падежи"
	set category = "Дебаг"
	set desc = "Заспавнить и проверить падежи объекта."
	var/list/types = typesof(/atom)
	var/list/matches = new()
	for(var/path in types)
		if(findtext("[path]", object))
			matches += path
	if(matches.len==0)
		return
	var/chosen
	if(matches.len==1)
		chosen = matches[1]
	else
		chosen = tgui_input_list(usr, "Выберите необходимый атом:", "Проверка падежей", matches)
		if(!chosen)
			return
	if(ispath(chosen,/turf))
		var/turf/T = get_turf(usr.loc)
		T.ChangeTurf(chosen)
	else
		var/atom/spawned = new chosen(usr.loc)
		var/msg = "<meta charset=\"UTF-8\">Падежи [chosen]:<HR>"
		msg += "<br>Шаблоны: [spawned.case_blueprint_ru.Join("<br>")]"
		if (spawned.always_plural_ru)
			msg += "<br>Этот атом используется в основном во множественном числе."
		if (spawned.number_lock_ru)
			if (spawned.number_lock_ru == "singular")
				msg += "<br>Этот атом склоняется ТОЛЬКО в единственном числе:"
			if (spawned.number_lock_ru == "plural")
				msg += "<br>Этот атом склоняется ТОЛЬКО во множественном числе:"
			msg += "<br>force_mode = \"normal\": [case_ru(spawned, NCASE)]"
			msg += "<br>force_mode = \"singular\": [case_ru(spawned, NCASE, force_mode = "singular")]"
			msg += "<br>force_mode = \"plural\": [case_ru(spawned, NCASE, force_mode = "plural")]"
		for (var/case in spawned.cases_ru)
			if(case == RUGENDER)
				msg += "<br>Род: [spawned.cases_ru[case]]"
				continue
			else if (case == PLURAL_RUGENDER)
				continue
			msg += "<br>[make_case_fancy_ru(case)]: [spawned.cases_ru[case]]"
		src << browse(msg,"window=src.type")
		vv_update_display(spawned, "deleted", VV_MSG_DELETED)
		qdel(spawned)
		if(!QDELETED(spawned))
			vv_update_display(spawned, "deleted", "")

/client/add_admin_verbs()
	if(holder)
		// verbs += /client/proc/edit_cases_ru // TODO CODE A PROPER EDITOR
		verbs += /client/proc/debug_cases_ru
		verbs += /client/proc/type2txt_ru
	..()

// the following is a helpful proc that lists out all the name vars of subtypes in a given typepath
// the intended application is to see what types within modules aren't localized yet
/client/proc/type2txt_ru()
	set name = "Вывести названия подтипов"
	set category = "Дебаг"
	var/typepath = tgui_input_text(usr, "Введите тип:", "Вывести названия подтипов")
	if(!typepath || ispath(typepath)) return
	var/list/types = typesof(typepath)
	var/dat = "<meta charset=\"UTF-8\">Подтипы [typepath]:<HR>"
	dat += "<body><table border=1 cellspacing=5><B><tr><th>Название</th><th>Тип</th><th>Шаблон</th><th>Род</th><th>И.П</th><th>Р.П</th><th>Д.П</th><th>В.П</th><th>Т.П</th><th>П.П</th><th>number_lock</th><th>always_plural</th></tr></B>"
	for(var/path in types)
		var/atom/item = new path
		dat += "<tr><td>[item]</td>" // имя
		dat += "<td>[item.type]</td>" // тип
		dat += "<td>[item.case_blueprint_ru? item.case_blueprint_ru[1] : "<b><span style='color: red;'>НЕТ</span></b>"]</td>" // шаблон
		dat += "<td>[item.cases_ru["rugender"]? item.cases_ru["rugender"] : "Нет"]</td>"
		dat += "<td>[ncase_ru(item)]</td>" // и.п
		dat += "<td>[gcase_ru(item)]</td>" // р.п
		dat += "<td>[dcase_ru(item)]</td>" // д.п
		dat += "<td>[acase_ru(item)]</td>" // в.п
		dat += "<td>[icase_ru(item)]</td>" // т.п
		dat += "<td>[pcase_ru(item)]</td>" // п.п
		dat += "<td>[item.number_lock_ru? number_lock_ru : "Нет"]</td>" // число
		dat += "<td>[item.always_plural_ru? always_plural_ru : "Нет"]</td></tr>" // мн. ч
		qdel(item)
	dat += "</table></body></html>"
	src << browse(dat,"window=src.type")