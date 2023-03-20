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

/obj/item/organ/internal/brain/pariah_brain
	name = "Остатки мозга"
	desc = "Кто-то наступил на них? Такую жижу уже не превратить в киборга и не склонировать."
	case_blueprint_ru = list("муж#остаток&остатк;n3*a мозга")

/obj/item/organ/internal/brain/xeno
	name = "Мыслительный центр"
	desc = "Выглядит как огромный комок использованной жвачки."
	case_blueprint_ru = list("муж#мыслительн&мыслителен;adj1*a центр;n1a")

/obj/item/organ/internal/brain/slime
	name = "Слизневое ядро"
	desc = "Сложное органическое сплетение желе и кристаллообразных частиц."
	case_blueprint_ru = list("сред#слизнев;adj1a ядр&ядер;n1*d")

/obj/item/organ/internal/brain/golem
	name = "Свиток"
	desc = "Свёрнутый свиток, покрытый загадочными рунами."
	case_blueprint_ru = list("муж#свиток&свитк;n3*a")

/obj/item/organ/internal/brain/grey
	desc = "Кусочек сочного мяса из чьей-то головы. Правда, этот какой-то очень странный."

// eyes.dm
/obj/item/organ/internal/eyes
	name = "Глазные яблоки"
	case_blueprint_ru = list("сред#глазн;adj1bX яблок;n3a(1)")
	number_lock_ru = "plural"

/obj/item/organ/internal/eyes/robot
	name = "Фотодетекторы"
	number_lock_ru = "plural"
	case_blueprint_ru = list("муж#фотодетектор;n1a")

// heart.dm
/obj/item/organ/internal/heart
	name = "Сердце"
	case_blueprint_ru = list("сред#сердц&сердц&сердец;n5*c")

/obj/item/organ/internal/heart/machine
	name = "Гидравлический узел"
	case_blueprint_ru = list("муж#гидравлическ;adj3aX~ узел&узл;n1*b")

// intestine.dm
/obj/item/organ/internal/intestine
	name = "Кишки"
	case_blueprint_ru = list("жен#кишк&кишок;n3*b")
	number_lock_ru = "plural"

// kidneys.dm
/obj/item/organ/internal/kidneys
	name = "Почки"
	case_blueprint_ru = list("жен#почк&почек;n3*a")
	number_lock_ru = "plural"

// liver.dm
/obj/item/organ/internal/liver
	name = "Печень"
	case_blueprint_ru = list("жен#печен;n8a")

// lungs.dm
/obj/item/organ/internal/lungs
	name = "Лёгкие"
	case_blueprint_ru = list("сред#лёгк;n<п_(3a)>")
	number_lock_ru = "plural"

/obj/item/organ/internal/spleen
	name = "Селезёнка"
	case_blueprint_ru = list("жен#селезёнк&селезёнок;n3*a")

/obj/item/organ/internal/spleen/minor
	name = "Рудиментарная селезёнка"
	case_blueprint_ru = list("жен#рудиментарн;adj1a селезёнк&селезёнок;n3*a")

// stomach.dm
/obj/item/organ/internal/stomach
	name = "Желудок"
	case_blueprint_ru = list("муж#желудок&желудк;n3*a")

/obj/item/organ/internal/stomach/machine
	name = "Переработчик веществ"
	case_blueprint_ru = list("муж#переработчик;n3a веществ")

// voicebox.dm
/obj/item/organ/internal/voicebox
	name = "Гортань"
	case_blueprint_ru = list("жен#гортан;n8a")

/obj/item/organ/internal/voicebox/robot
	name = "Синтезатор речи"
	case_blueprint_ru = list("муж#синтезатор;n1a речи")
