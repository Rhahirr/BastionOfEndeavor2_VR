// appendix.dm
/obj/item/organ/internal/appendix
	name = "Аппендикс"
	case_blueprint_ru = list("муж#аппендикс;n1a")

// augment.dm
/obj/item/organ/internal/augment
	// realistically shouldn't be seen in game
	name = "Аугментация"
	case_blueprint_ru = list("жен#аугментаци;n7a")

// brain.dm
/obj/item/organ/internal/brain
	name = "Мозг"
	desc = "Кусочек сочного мяса из чьей-то головы."
	case_blueprint_ru = list("муж#мозг;n3c")
	attack_verb = list("ударил", "шлёпнул")

// voicebox.dm
/obj/item/organ/internal/voicebox
	name = "Гортань"
	case_blueprint_ru = list("жен#гортан;n8a")

/obj/item/organ/internal/voicebox/robot
	name = "Синтезатор речи"
	case_blueprint_ru = list("муж#синтезатор;n1a речи")
