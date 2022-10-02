// The following code is where most of the grammar magic happens.

#define NCASE "ncase"
#define GCASE "gcase"
#define DCASE "dcase"
#define ACASE "acase"
#define ICASE "icase"
#define PCASE "pcase"
#define RUGENDER "rugender"
#define PLURAL_NCASE "plural_ncase"
#define PLURAL_GCASE "plural_gcase"
#define PLURAL_DCASE "plural_dcase"
#define PLURAL_ACASE "plural_acase"
#define PLURAL_ICASE "plural_icase"
#define PLURAL_PCASE "plural_pcase"
#define PLURAL_RUGENDER "plural_rugender"

/world
	name = "Bastion of Endeavor - RU/18+/HRP/PB"

// Cases are needed for proper russian grammar in the game. Added as a list that can be freely expanded.
// This only seems to work with New(), which is alright but might turn into a mess when used with decls.
// This list by itself, however, is a helpful way of having all atoms and datums carry all information that is relevant to russian grammar.
/atom
	cases_ru = new /list()

/area
	var/prep_override_ru = FALSE // This allows us to have different prepositions for areas. ON the deck, IN the room, etc.
	var/area_fancy_name_ru // This is a WIP that will let us have shorter area names that can be used for APCs and such.

// Certain datums need cases too.
// Reagents want to have cases, but will default to "glass of something".
/datum/reagent
	cases_ru = new /list()

/datum/reagent/New()
	..()
	cases_ru["glass"] = new /list()
	cases_ru["glass"][RUGENDER] = "male"
	cases_ru["glass"][NCASE] = "стакан с чем-то"
	cases_ru["glass"][GCASE] = "стакана с чем-то"
	cases_ru["glass"][DCASE] = "стакану с чем-то"
	cases_ru["glass"][ACASE] = "стакан с чем-то"
	cases_ru["glass"][ICASE] = "стаканом с чем-то"
	cases_ru["glass"][PCASE] = "стакане с чем-то"

/datum/material
	var/case_override_ru // Case override handles the order of words in material stacks. By default, Material + Sheet. If set to TRUE, Sheet of Material.
	var/name_override_ru // Required for other objects made with materials. Glass Table (by default), Table of Reinforced Glass (custom).
	cases_ru = new /list() // Same as earlier cases.

// Fairly self-explanatory.
/datum/material/New()
	..()
	cases_ru["sheet_singular"] = new /list()
	cases_ru["sheet_singular"][RUGENDER] = "male"
	cases_ru["sheet_singular"][NCASE] = "лист"
	cases_ru["sheet_singular"][GCASE] = "листа"
	cases_ru["sheet_singular"][DCASE] = "листу"
	cases_ru["sheet_singular"][ACASE] = "лист"
	cases_ru["sheet_singular"][ICASE] = "листом"
	cases_ru["sheet_singular"][PCASE] = "листе"
	cases_ru["sheet_plural"] = new /list()
	cases_ru["sheet_plural"][RUGENDER] = "plural"
	cases_ru["sheet_plural"][NCASE] = "листы"
	cases_ru["sheet_plural"][GCASE] = "листов"
	cases_ru["sheet_plural"][DCASE] = "листам"
	cases_ru["sheet_plural"][ACASE] = "листы"
	cases_ru["sheet_plural"][ICASE] = "листами"
	cases_ru["sheet_plural"][PCASE] = "листах"

/obj/item/weapon/reagent_containers/food/snacks
	var/foodtype_ru // Handles the appropriate verb for various types of meals.

/obj/effect/decal/cleanable/blood/New()
	..()
	cases_ru["dry"] = new /list()
	cases_ru["dry"][RUGENDER] = "female"
	cases_ru["dry"][NCASE] = "засохшая кровь"
	cases_ru["dry"][GCASE] = "засохшей крови"
	cases_ru["dry"][DCASE] = "засохшей крови"
	cases_ru["dry"][ACASE] = "засохшую кровь"
	cases_ru["dry"][ICASE] = "засохшей кровью"
	cases_ru["dry"][PCASE] = "засохшей крови"

// Work in progress, but it is likely that seeds are going to need this.
/datum/seed
	cases_ru = new /list()

/datum/seed/New()
	..()
	cases_ru[RUGENDER] = "male"
	cases_ru[NCASE] = "пакетик семян"
	cases_ru[GCASE] = "пакетика семян"
	cases_ru[DCASE] = "пакетику семян"
	cases_ru[ACASE] = "пакетик семян"
	cases_ru[ICASE] = "пакетиком семян"
	cases_ru[PCASE] = "пакетике семян"

/decl/flooring
	cases_ru = new /list()

/decl/xgm_gas
	cases_ru = new /list()

/datum/preferences
	var/list/cases = list()

// Alright, so. This is going to be absolutely atrocious, but for the sake of looking polished in Russian, this must all be done.
// The following code gives the supply packs a specific var that will be tossed into the cases of the crate itself.
/datum/supply_pack
	cases_ru = new /list() // The cases to be used when interacting with the datum itself.
	var/supply_pack_name_ru // This is likely to only ever be under the genitive case!

// Should the worst happen and the need to override the template arises, all of this should be safe to override with New().
/datum/supply_pack/New()
	..()
	cases_ru["containername"] = new /list()
	cases_ru["containername"][RUGENDER] = "male"
	cases_ru["containername"][NCASE] = "ящик от [supply_pack_name_ru]"
	cases_ru["containername"][GCASE] = "ящика от [supply_pack_name_ru]"
	cases_ru["containername"][DCASE] = "ящику от [supply_pack_name_ru]"
	cases_ru["containername"][ACASE] = "ящик от [supply_pack_name_ru]"
	cases_ru["containername"][ICASE] = "ящиком от [supply_pack_name_ru]"
	cases_ru["containername"][PCASE] = "ящике от [supply_pack_name_ru]"
	containername = "Ящик от [supply_pack_name_ru]"

/mob/self_user // This is a placeholder that comes in handy in verb_ru's that have the user as the target.

/mob/self_user/New()
	..()
	cases_ru[GCASE] = "себя"
	cases_ru[DCASE] = "себе"
	cases_ru[ACASE] = "себя"
	cases_ru[ICASE] = "собой"
	cases_ru[PCASE] = "себе"

// This proc handles the appropriate numeral word depending on the, well, number.
/proc/count_ru(var/input, single_text = "единица", few_text = "единицы", many_text = "единиц", override = 0)
	var/output
	if(istype(input, /list))
		var/list/input_list = input
		output = input_list.len
	else output = input
	if(findtext_char(num2text(output), ".")) 			// if its a floating number
		return "[override? "" : "[output] "][few_text]" // then apparently we dont bother with it because russian makes no sense
	var/a = round(output) % 100
	var/b = text2num(copytext_char(num2text(output), -1, 0)) // kinda ugly but we want that floating point
	if (a > 10 && a < 20) return "[override? "" : "[output] "][many_text]"
	if (b > 1 && b < 5) return "[override? "" : "[output] "][few_text]"
	if (b == 1) return "[override? "" : "[output] "][single_text]"
	return "[override? "" : "[output] "][many_text]"

// Backs up cases before changing them.
/atom/proc/storecase_ru(atom/input)
	input.cases_ru["initial"] = deepCopyList(input.cases_ru)
	return

// Adds something to the end of all cases of an atom, as well as changes its rugender element.
/atom/proc/appendcase_ru(atom/input, content)
	storecase_ru(input)
	for(var/case in input.cases_ru)
		if(case == RUGENDER) input.cases_ru[case] = input.cases_ru["initial"][case]
		input.cases_ru[case] += content
	return

// Reverts the grammar cases of an atom to their backed up state.
/atom/proc/restorecase_ru(atom/input)
	input.cases_ru = deepCopyList(input.cases_ru["initial"])
	return

// In theory, this should be able to quickly set up the cases for things without having to copypaste the code for cases lists.
// It looks a little ugly, since its a lazy way of only assigning the essential cases.
/datum/proc/assigncases_ru(var/list/cases)
	cases_ru = deepCopyList(cases)
	return

// Dispenses an appropriately formatted string depending on the material and what it's used on.
/proc/matadj_ru(datum/material, case = "case", gender = "gender", input = "", pre = " из ")
	var/datum/material/mat = material
	var/adjective = ""
	adjective = mat.cases_ru["adj_[gender]"][case]
	if(mat.name_override_ru) return "[input][pre]" + mat.cases_ru["display_name"][GCASE]
	else return "[adjective][(input)? " [input]" : ""]"

// Has anyone ever stopped to question why the verb is always "buckle" even when you interact with a bed?
// This proc may look awful, but it adds an immense amount of clarity in russian, as the actual verb used largely depends on the context and the target.
/proc/buckleverb_ru(obj/seat, mob/user, tense = "present", mob/target)
	var/who
	if(target)
		who = acase_ru(target)
	else
		who = "Вас"
	if(istype(seat, /obj/structure/bed/chair/shuttle) || istype(seat, /obj/structure/bed/chair/bay/shuttle))
		switch(tense)
			//buckle
			if("present") return "[verb_ru(user, "пристёгива;ет;ет;ет;ют;;")] [who] к [dcase_ru(seat)]"
			if("self") return "[verb_ru(user, "пристегнул;ся;ась;ось;ись;;")] к [dcase_ru(seat)]"
			if("past") return "[verb_ru(user, "пристегнул;;а;о;и;;")] [who] к [dcase_ru(seat)]"
			if("participle") return "[verb_ru(user, "пристёгнут;;а;о;ы;;")] к [dcase_ru(seat)]"
			if("action") return "пристёгиваете [who] к [dcase_ru(seat)]"
			if("indefinite") return "пристегнуть [who] к [dcase_ru(seat)]"
			if("you") return "пристегнулись к [dcase_ru(seat)]"
			//unbuckle
			if("upresent") return "[verb_ru(user, "отстёгива;ет;ет;ет;ют;;")] [who] от [gcase_ru(seat)]"
			if("uself") return "[verb_ru(user, "отстегнул;ся;ась;ось;ись;;")] от [gcase_ru(seat)]"
			if("upast") return "[verb_ru(user, "отстегнул;;а;о;и;;")] [who] от [gcase_ru(seat)]"
			if("uyou") return "отстегнулись от [gcase_ru(seat)]"
	else if(istype(seat, /obj/structure/bed/chair/comfy))
		switch(tense)
			//buckle
			if("present") return "[verb_ru(user, "усажива;ет;ет;ет;ют;;")] [who] [prep_ru(seat, "в")] [acase_ru(seat)]"
			if("self") return "[verb_ru(user, "сад;ит;ит;ит;ят;ся;")] [prep_ru(seat, "в")] [acase_ru(seat)]"
			if("past") return "[verb_ru(user, "посадил;;а;о;и;;")] [who] [prep_ru(seat, "в")] [acase_ru(seat)]"
			if("participle") return "[verb_ru(user, "сид;ит;ит;ит;ят;;")] [prep_ru(seat, "в")] [pcase_ru(seat)]"
			if("action") return "усаживаете [who] [prep_ru(seat, "в")] [acase_ru(seat)]"
			if("indefinite") return "усадить [who] [prep_ru(seat, "в")] [acase_ru(seat)]"
			if("you") return "сели [prep_ru(seat, "в")] [acase_ru(seat)]"
			//unbuckle
			if("upresent") return "[verb_ru(user, "поднима;ет;ет;ет;ют;;")] [who] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("uself") return "[verb_ru(user, "вста;ёт;ёт;ёт;ют;;")] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("upast") return "[verb_ru(user, "поднял;;а;о;и;;")] [who] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("uyou") return "встали [prep_ru(seat, "с")] [gcase_ru(seat)]"
	else if(istype(seat, /obj/structure/bed/chair))
		switch(tense)
			//buckle
			if("present") return "[verb_ru(user, "усажива;ет;ет;ет;ют;;")] [who] на [acase_ru(seat)]"
			if("self") return "[verb_ru(user, "сад;ит;ит;ит;ят;ся;")] на [acase_ru(seat)]"
			if("past") return "[verb_ru(user, "усадил;;а;о;и;;")] [who] на [acase_ru(seat)]"
			if("participle") return "[verb_ru(user, "сид;ит;ит;ит;ят;;")] на [pcase_ru(seat)]"
			if("action") return "усаживаете [who] на [acase_ru(seat)]"
			if("indefinite") return "усадить [who] на [acase_ru(seat)]"
			if("you") return "сели на [acase_ru(seat)]"
			//unbuckle
			if("upresent") return "[verb_ru(user, "поднима;ет;ет;ет;ют;;")] [who] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("uself") return "[verb_ru(user, "вста;ёт;ёт;ёт;ют;;")] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("upast") return "[verb_ru(user, "поднял;;а;о;и;;")] [who] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("uyou") return "встали [prep_ru(seat, "с")] [gcase_ru(seat)]"
	else if(istype(seat, /obj/structure/bed) || istype(seat, /obj/structure/dogbed))
		switch(tense)
			//buckle
			if("present") return "[verb_ru(user, "укладыва;ет;ет;ет;ют;;")] [who] на [acase_ru(seat)]"
			if("self") return "[verb_ru(user, "лож;ит;ит;ит;ат;ся;")] на [acase_ru(seat)]"
			if("past") return "[verb_ru(user, "положил;;а;о;и;;")] [who] на [acase_ru(seat)]"
			if("participle") return "[verb_ru(user, "леж;ит;ит;ит;ат;;")] на [pcase_ru(seat)]"
			if("action") return "укладываете [who] на [acase_ru(seat)]"
			if("indefinite") return "положить [who] на [acase_ru(seat)]"
			if("you") return "легли на [acase_ru(seat)]"
			//unbuckle
			if("upresent") return "[verb_ru(user, "поднима;ет;ет;ет;ют;;")] [who] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("uself") return "[verb_ru(user, "вста;ёт;ёт;ёт;ют;;")] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("upast") return "[verb_ru(user, "поднял;;а;о;и;;")] [who] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("uyou") return "встали [prep_ru(seat, "с")] [gcase_ru(seat)]"
	else
		switch(tense)
			//buckle
			if("present") return "[verb_ru(user, "усажива;ет;ет;ет;ют;;")] [who] на [acase_ru(seat)]"
			if("self") return "[verb_ru(user, "сад;ит;ит;ит;ат;ся;")] на [acase_ru(seat)]"
			if("past") return "[verb_ru(user, "усадил;;а;о;и;;")] [who] на [acase_ru(seat)]"
			if("participle") return "[verb_ru(user, "сид;ит;ит;ит;ят;;")] на [pcase_ru(seat)]"
			if("action") return "усаживаете [who] на [acase_ru(seat)]"
			if("indefinite") return "усадить [who] на [acase_ru(seat)]"
			if("you") return "сели на [acase_ru(seat)]"
			//unbuckle
			if("upresent") return "[verb_ru(user, "поднима;ет;ет;ет;ют;;")] [who] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("uself") return "[verb_ru(user, "вста;ёт;ёт;ёт;ют;;")] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("upast") return "[verb_ru(user, "поднял;;а;о;и;;")] [who] [prep_ru(seat, "с")] [gcase_ru(seat)]"
			if("uyou") return "встали [prep_ru(seat, "с")] [gcase_ru(seat)]"

// The following proc adjusts a preposition to be used before a word. The list of consonants is provided for this very cause.
var/global/list/consonants_ru = list("б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ")

/proc/prep_ru(atom/input, var/preposition = "", var/capital = 0)
	var/first_letter = lowertext(copytext_char(case_ru(input, NCASE), 1, 2))
	var/second_letter = lowertext(copytext_char(case_ru(input, NCASE), 2, 3))
	switch(preposition)
		if("с")
			var/list/c_letter = list("с", "ж", "з", "ш", "л", "р", "м", "в", "щ")
			for(var/let_s in c_letter)
				if (first_letter == "щ") return "[capital? "Со" : "со"]"
				else if (first_letter == let_s)
					for(var/cons_s in consonants_ru)
						if (second_letter == cons_s) return "[capital? "Со" : "со"]"
			return "[capital? "С" : "с"]"
		if("в")
			var/list/v_letter = list("в", "ф")
			for(var/let_v in v_letter)
				if (first_letter == let_v)
					for(var/cons_v in consonants_ru)
						if (second_letter == cons_v) return "[capital? "Во" : "в"]"
			return "[capital? "В" : "в"]"
		else
			log_grammar_ru("ОШИБКА: Проку prep_ru передан недопустимый предлог: [preposition].")
			error("Проку prep_ru передан недопустимый предлог: [preposition].")
			return "[capital? "[capitalize(preposition)]" : "[preposition]"]"

// Basically a better prep_ru
/proc/prep_adv_ru(atom/input, var/preposition = "", var/case = "gcase", var/capital = 0)
	return "[prep_ru(input, preposition, capital)] [case_ru(input, case)]"

// This is a simple proc that adds an apropriate ending to a verb depending on the user's gender. This is core.
/proc/gender_ru(input, base_verb = "", he_end = "", she_end = "а", it_end = "о", they_end = "и")
	var/gender_key = "male"
	if(istype(input, /mob/living/carbon/human))
		var/mob/user = input
		var/datum/gender/user_gender = gender_datums[user.get_visible_gender()]
		gender_key = user_gender.key
	else if (istype(input, /atom))
		var/atom/A = input
		gender_key = A.cases_ru[RUGENDER]
	switch(lowertext(gender_key))
		if("male") return "[base_verb][he_end]"
		if("мужской") return "[base_verb][he_end]" // forgot what these were needed for but oh well
		if("female") return "[base_verb][she_end]"
		if("женский") return "[base_verb][she_end]"
		if("neuter") return "[base_verb][it_end]"
		if("средний") return "[base_verb][it_end]"
		if("plural") return "[base_verb][they_end]"
		if("множественное число") return "[base_verb][they_end]"
	return "[base_verb][he_end]"

// An updated version of gender_ru that helps handle hardcoded messages, e.g. arrivals/cryo announcements and attack verbs.
// Input template: "base/m_ending/f_ending/n_ending/p_ending/extra_text/case". Case defines the target's case, or hides target if unspecified.
/proc/verb_ru(var/atom/verb_user, var/input, var/atom/target)
	var/list/message_list = splittext_char(input, ";")
	if(message_list.len == 1)
		return "[gender_ru(verb_user, input)]" // If the template is omitted, use the default verb endings.
	if(message_list.len < 6)
		log_grammar_ru("ОШИБКА: Глагол verb_ru не соответствует шаблону! Ввод: [input], проверка выдала [message_list.len].")
		error("Глагол verb_ru не соответствует шаблону! Ввод: [input], проверка выдала [message_list.len].")
		return message_list[1]
	var/who = message_list[7]
	if (findtext_char(input, "case"))
		who = case_ru(target, message_list[7])
	return "[gender_ru(verb_user, message_list[1], message_list[2], message_list[3], message_list[4], message_list[5])][who? " [who] " : ""][message_list[6]]"

// It looks silly, but it's very important for attack verbs that need custom cases that can't be provided with case_ru.
/proc/attack_prep_ru(var/att_prep, var/att_case, var/ncase, var/gcase, var/dcase, var/acase, var/icase, var/pcase, var/obj/target)
	if(target)
		return "[prep_ru(target, att_prep)] [case_ru(target, att_case)]"
	if(att_case == NCASE) return "[att_prep] [ncase]"
	if(att_case == GCASE) return "[att_prep] [gcase]"
	if(att_case == DCASE) return "[att_prep] [dcase]"
	if(att_case == ACASE) return "[att_prep] [acase]"
	if(att_case == ICASE) return "[att_prep] [icase]"
	if(att_case == PCASE) return "[att_prep] [pcase]"

// Handles the prep_override_ru var.
/proc/area_name_ru(var/area/input)
	if(!input.prep_override_ru) return "[prep_adv_ru(input, "в", PCASE)]"
	else return "на [pcase_ru(input)]"
