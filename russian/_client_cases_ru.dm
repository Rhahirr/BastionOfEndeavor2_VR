// Bastion of Endeavor Addition -- handles the editing of grammatical cases for character names.

/datum/category_item/player_setup_item/general/cases
	name = "Падежи"
	sort_order = 7

/datum/category_item/player_setup_item/general/cases/load_character(savefile/S)
	S["cases_ncase"]	    >> pref.cases[NCASE]
	S["cases_gcase"]		>> pref.cases[GCASE]
	S["cases_dcase"]		>> pref.cases[DCASE]
	S["cases_acase"]		>> pref.cases[ACASE]
	S["cases_icase"]		>> pref.cases[ICASE]
	S["cases_pcase"]		>> pref.cases[PCASE]

/datum/category_item/player_setup_item/general/cases/save_character(var/savefile/S)
	S["cases_ncase"]		<< pref.cases[NCASE]
	S["cases_gcase"]		<< pref.cases[GCASE]
	S["cases_dcase"]		<< pref.cases[DCASE]
	S["cases_acase"]		<< pref.cases[ACASE]
	S["cases_icase"]		<< pref.cases[ICASE]
	S["cases_pcase"]		<< pref.cases[PCASE]

/datum/category_item/player_setup_item/general/cases/sanitize_character()
	if(!pref.cases[NCASE]) pref.cases[NCASE] = pref.real_name
	if(!pref.cases[GCASE]) pref.cases[GCASE] = pref.real_name
	if(!pref.cases[DCASE]) pref.cases[DCASE] = pref.real_name
	if(!pref.cases[ACASE]) pref.cases[ACASE] = pref.real_name
	if(!pref.cases[ICASE]) pref.cases[ICASE] = pref.real_name
	if(!pref.cases[PCASE]) pref.cases[PCASE] = pref.real_name

/datum/category_item/player_setup_item/general/cases/copy_to_mob(var/mob/living/carbon/human/character)
	// Bastion of Endeavor TODO: This will need some work after we get a proper case editor
	character.cases_ru["basic"] = list(RUGENDER = character.gender, NCASE = pref.cases[NCASE], GCASE = pref.cases[GCASE], DCASE = pref.cases[DCASE], ACASE = pref.cases[ACASE], ICASE = pref.cases[ICASE], PCASE = pref.cases[PCASE])
	character.cases_ru["real_name"] = list(RUGENDER = character.gender, NCASE = pref.cases[NCASE], GCASE = pref.cases[GCASE], DCASE = pref.cases[DCASE], ACASE = pref.cases[ACASE], ICASE = pref.cases[ICASE], PCASE = pref.cases[PCASE])

/datum/category_item/player_setup_item/general/cases/content(var/mob/user)
	. += "<a href='?src=\ref[src];cases=open'>Установить склонение имени</a><br/>"

/datum/category_item/player_setup_item/general/cases/OnTopic(var/href,var/list/href_list, var/mob/user)
	switch(href_list["cases"])
		if("open")
		if("general")
			var/msg = sanitize(input(usr,"Укажите склонение имени Вашего персонажа по падежам.","Склонение Имени",html_decode(pref.cases[href_list["cases"]])) as text|null, MAX_NAME_LEN)
			if(CanUseTopic(user))
				pref.cases[href_list["cases"]] = msg
		else
			var/msg = sanitize(input(usr,"Установите склонение имени в этом падеже.","Склонение Имени",html_decode(pref.cases[href_list["cases"]])) as text|null, MAX_NAME_LEN)
			if(CanUseTopic(user))
				pref.cases[href_list["cases"]] = msg
	SetCases(user)
	return TOPIC_HANDLED

/datum/category_item/player_setup_item/general/cases/proc/SetCases(mob/user)
	var/HTML = "<body>"
	HTML += "<tt><meta charset=\"utf-8\"><center>"
	HTML += "<b>Установите склонение имени персонажа</b> <hr />"
	HTML += "<br></center>"
	HTML += "<a href='?src=\ref[src];cases=ncase'>Именительный:</a> "
	HTML += TextPreview(pref.cases[NCASE])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];cases=gcase'>Родительный:</a> "
	HTML += TextPreview(pref.cases[GCASE])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];cases=dcase'>Дательный:</a> "
	HTML += TextPreview(pref.cases[DCASE])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];cases=acase'>Винительный:</a> "
	HTML += TextPreview(pref.cases[ACASE])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];cases=icase'>Творительный:</a> "
	HTML += TextPreview(pref.cases[ICASE])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];cases=pcase'>Предложный:</a> "
	HTML += TextPreview(pref.cases[PCASE])
	HTML += "<br>"
	HTML += "<hr />"
	HTML += "<tt>"
	user << browse(HTML, "window=cases;size=430x300")
	return
