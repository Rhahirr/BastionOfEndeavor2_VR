var/global/list/basic_cases_list_ru = list(
	RUGENDER = "", \
	NCASE = "", \
	GCASE = "", \
	DCASE = "", \
	ACASE = "", \
	ICASE = "", \
	PCASE = "")

var/global/list/self_cases_list_ru = list(
	RUGENDER = null, \
	NCASE = null, \
	GCASE = "себя", \
	DCASE = "себе", \
	ACASE = "себя", \
	ICASE = "собой", \
	PCASE = "себе")
/datum
	var/list/case_blueprint_ru = list()
	var/list/cases_ru = list()
	var/number_lock_ru
	var/always_plural_ru

// This is one of the core procs. It handles the grammar cases of words and uses them in messages. Secondary is for "subtype" cases.
// input - the atom we're getting the form for, case - the case in question, secondary is needed for nested case lists, force_mode gets singular/plural forms, self_check is the user that interacts with the input
/proc/case_ru(atom/input, case = "case", self_check = null, secondary = null, force_mode="normal")
	if(!input)
		return
	if(input == self_check)
		if(case == NCASE) // I can't think of a situation where this happens, but if it does, something is seriously fucked.
			log_grammar_ru("ОШИБКА: self_check с именительным падежом! Ввод: [input]")
			error("ОШИБКА: self_check с именительным падежом! Ввод: [input]")
		return self_cases_list_ru[case]
	if(!(istype(input, /atom)) || !(istype(input, /datum)))
		log_grammar_ru("ОШИБКА: Проку case_ru передан не атом/датум! Ввод: [input]")
		error("Проку case_ru передан не атом/датум! Ввод: [input]")
		return input
	if(input.number_lock_ru == "singular")
		return return_case_ru(input, case, secondary)
	if(input.number_lock_ru == "plural")
		return return_case_ru(input, "plural_[case]", secondary)
	if(force_mode == "normal")							// normal mode: most items in singular, always_plural items in plural
		return return_case_ru(input, "[input.always_plural_ru? "plural_" : ""][case]", secondary)
	else if (force_mode == "singular")					// singular mode: most items in singular, always_plural items in singular
		return return_case_ru(input, case, secondary)
	else if (force_mode == "plural")						// plural mode: most items in plural, always_plural items in plural
		return return_case_ru(input, "plural_[case]", secondary)
	return input.name

/proc/return_case_ru(atom/input, case = "case", secondary)
	if(!secondary) secondary = "basic"
	if(input.cases_ru[secondary][case])
		return input.cases_ru[secondary][case]
	return input.name

// A more faithful version of BYOND's capitalize() proc.
/proc/cap_ru(atom/input, var/case = NCASE)
	return "[capitalize(case_ru(input, case))]"

// The following procs are aliases for other procs to make localization less painful.
// A little weird to have this many procs, sure, but these will be called often enough to warrant this. Sanity check for input is done in the actual procs.
/proc/ncase_ru(var/input, var/user, var/secondary = null, var/force_mode="normal")
	return case_ru(input, NCASE, user, secondary, force_mode)

/proc/gcase_ru(var/input, var/user, var/secondary = null, var/force_mode="normal")
	return case_ru(input, GCASE, user, secondary, force_mode)

/proc/dcase_ru(var/input, var/user, var/secondary = null, var/force_mode="normal")
	return case_ru(input, DCASE, user, secondary, force_mode)

/proc/acase_ru(var/input, var/user, var/secondary = null, var/force_mode="normal")
	return case_ru(input, ACASE, user, secondary, force_mode)

/proc/icase_ru(var/input, var/user, var/secondary = null, var/force_mode="normal")
	return case_ru(input, ICASE, user, secondary, force_mode)

/proc/pcase_ru(var/input, var/user, var/secondary = null, var/force_mode="normal")
	return case_ru(input, PCASE, user, secondary, force_mode)

