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
	..()
