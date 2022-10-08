// The following procs are copies of already existing ones with _ru attached.
// Those are needed in order to implement grammar safely one step at a time without breaking things that rely on English.

/proc/dir2text_ru(direction)
	switch (direction)
		if (NORTH)  return "север"
		if (SOUTH)  return "юг"
		if (EAST)  return "восток"
		if (WEST)  return "запад"
		if (NORTHEAST)  return "северо-восток"
		if (SOUTHEAST)  return "юго-восток"
		if (NORTHWEST)  return "северо-запад"
		if (SOUTHWEST)  return "юго-запад"
		if (UP)  return "вверх"
		if (DOWN)  return "вниз"

/proc/text2dir_ru(direction)
	switch (uppertext(direction))
		if ("СЕВЕР")	return 1
		if ("ЮГ")	return 2
		if ("ВОСТОК")	return 4
		if ("ЗАПАД")	return 8
		if ("СЕВЕРО-ВОСТОК") return 5
		if ("СЕВЕРО-ЗАПАД") return 9
		if ("ЮГО-ВОСТОК") return 6
		if ("ЮГО-ЗАПАД") return 10

/proc/dirs2text_ru(direction)
	if(!direction)
		return ""
	var/list/dirs = list()
	if(direction & NORTH) dirs += "СЕВЕР"
	if(direction & SOUTH) dirs += "ЮГ"
	if(direction & EAST) dirs += "ВОСТОК"
	if(direction & WEST) dirs += "ЗАПАД"
	if(direction & UP) dirs += "ВВЕРХ"
	if(direction & DOWN) dirs += "ВНИЗ"
	return dirs.Join(" ")

// Map shenanigans. Please edit it to be more map reliant once map work is done.
/proc/command_name_ru(var/case)
	if(!istype(using_map))
		return
	switch(case)
		if(NCASE) return "Центральное Командование"
		if(GCASE) return "Центрального Командования"
		if(DCASE) return "Центральному Командованию"
		if(ACASE) return "Центральное Командование"
		if(ICASE) return "Центральным Командованием"
		if(PCASE) return "Центральном Командовании"
		else return using_map.boss_name

// Bastion of Endeavor Edit: We need station names under the case too. Bastion of Endeavor TODO: Change this to work with cases once we have map localization.
/proc/station_name_ru(var/case)
	if(!case && using_map.station_name)
		return using_map.station_name
	switch(case)
		// Научно-Исследовательская База НаноТрейсен
		if(NCASE) return "НИБ-НТ Адефагия"
		if(GCASE) return "НИБ-НТ Адефагии"
		if(DCASE) return "НИБ-НТ Адефагии"
		if(ACASE) return "НИБ-НТ Адефагию"
		if(ICASE) return "НИБ-НТ Адефагией"
		if(PCASE) return "НИБ-НТ Адефагии"
