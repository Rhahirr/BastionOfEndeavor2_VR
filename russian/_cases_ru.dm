// This is one of the core procs. It handles the grammar cases of words and uses them in messages. Secondary is for "subtype" cases.
/proc/case_ru(atom/input, case = "case", secondary = null, force_mode="normal")
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
	if(secondary)
		if(input.cases_ru[secondary][case])
			return input.cases_ru[secondary][case]
	else
		if(input.cases_ru[case])
			return input.cases_ru[case]
		return input.name
	return input.name

// A more faithful version of BYOND's capitalize() proc.
/proc/cap_ru(atom/input, var/case = NCASE)
	return "[capitalize(case_ru(input, case))]"

// The following procs are aliases for other procs to make localization less painful.
// A little weird to have this many procs, sure, but these will be called often enough to warrant this. Sanity check for input is done in the actual procs.
/proc/ncase_ru(var/input)
	return case_ru(input, NCASE)

/proc/gcase_ru(var/input)
	return case_ru(input, GCASE)

/proc/dcase_ru(var/input)
	return case_ru(input, DCASE)

/proc/acase_ru(var/input)
	return case_ru(input, ACASE)

/proc/icase_ru(var/input)
	return case_ru(input, ICASE)

/proc/pcase_ru(var/input)
	return case_ru(input, PCASE)

// Basically a quick mechanical interaction message constructor for a multitude of usages. Also helps eliminate human errors in localization.
/proc/interact_ru(atom/user, var/use_verb, atom/target, var/case_user = NCASE, var/case_target = ACASE)
	if(target) return "[cap_ru(user, case_user)] [verb_ru(user, use_verb)] [case_ru(target, case_target)]"
	else return "[cap_ru(user, case_user)] [verb_ru(user, use_verb)]"

// An alias for verb_ru + case_ru; despite the naming, verb_ru is good for adjectives/pronouns too
/proc/concat_ru(var/word, atom/object, var/case = NCASE, var/capital = FALSE)
	if(capital) return "[capitalize(verb_ru(object, word))] [case_ru(object, case)]"
	else return "[verb_ru(object, word)] [case_ru(object, case)]"
