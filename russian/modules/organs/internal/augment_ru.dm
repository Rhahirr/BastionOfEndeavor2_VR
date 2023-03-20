// armmounted.dm

/obj/item/organ/internal/augment/armmounted
	name = "Имплантируемая лазерная винтовка"
	desc = "Крупный имплантат, вживляемый в руку и болезненным методом раскладывающийся в лазерное оружие."
	case_blueprint_ru = list("жен#имплантируем;adj1a лазерн;adj1a винтовк&винтовк;n1*a")

/obj/item/organ/internal/augment/armmounted/taser
	name = "Имплантируемый электрошокер"
	desc = "Крупный имплантат, вживляемый в руку и болезненным методом раскладывающийся в шокирующее оружие."
	case_blueprint_ru = list("муж#имплантируем;adj1a шокер;n1a")
/obj/item/organ/internal/augment/armmounted/dartbow
	name = "Имплантируемый арбалет"
	desc = "Небольшой имплантат, вживляемый в руку, позволяющий стрелять дротиками через неизвестный механизм, раскладывающийся внутри плоти."
	case_blueprint_ru = list("муж#имплантируем;adj1a резонансн;adj1a анализатор;n1a")

/obj/item/organ/internal/augment/armmounted/hand
	name = "Имплантируемый резонансный анализатор"
	desc = "Аугментация, вживляемая в ладонь и позволяющая определить полезность предметов для научных исследований."
	case_blueprint_ru = list("муж#имплантируем;adj1a арбалет;n1a")

/obj/item/organ/internal/augment/armmounted/hand/sword
	name = "Имплантируемый энергетический меч"
	// for some reason this didnt have its own description
	desc = "Небольшой имплантат, вживляемый в ладонь и раскладывающийся в энергетический меч."
	case_blueprint_ru = list("муж#имплантируем;adj1a энергетическ;adj3aX~ меч;n4b")

/obj/item/organ/internal/augment/armmounted/hand/blade
	name = "Имплантируемый клинок"
	desc = "Небольшой имплантат, вживляемый в ладонь и раскладывающийся в небольшой, но опасный клинок."
	case_blueprint_ru = list("муж#имплантируем;adj1a клинок&клинк;n3*b")

/obj/item/organ/internal/augment/armmounted/shoulder
	name = "Плечевой имплантат"
	desc = "Крупный имплантат, вживляемый в руку. Внешне напоминает скелет."
	case_blueprint_ru = list("муж#плечев;adj1bX имплантат;n1a")

/obj/item/organ/internal/augment/armmounted/shoulder/surge
	name = "Мышечный разгонщик"
	case_blueprint_ru = list("муж#мышечн;adj1a разгонщик;n3a")

/obj/item/organ/internal/augment/armmounted/shoulder/blade
	name = "Имплантируемое лезвие"
	desc = "Крупный имплантат, вживляемый в руку и болезненным методом раскладывающийся в длинное лезвие."
	case_blueprint_ru = list("сред#имплантируем;adj1a лезв;n7a")

/obj/item/organ/internal/augment/armmounted/shoulder/multiple
	name = "Имплантируемый многофункциональный инструмент" // ?????
	desc = "Крупный имплантат, вживляемый в руку и болезненным методом раскладывающийся в целый ассортимент различных инструментов."
	case_blueprint_ru = list("муж#имплантируем;adj1a многофункциональн;adj1a инструмент;n1a")

/obj/item/organ/internal/augment/armmounted/shoulder/multiple/medical
	name = "Имплантируемый хирургический инструмент" // ????????????????
	case_blueprint_ru = list("муж#имплантируем;adj1a хирургическ;adj3aX~ инструмент;n1a")

// bio.dm

/obj/item/organ/internal/augment/bioaugment
	name = "Биоадаптивный имплантат"
	case_blueprint_ru = list("муж#биоадаптивн;n1a имплантат;n1a")

/obj/item/organ/internal/augment/bioaugment/thermalshades
	name = "Имплантируемые теплолинзы"
	desc = "Крохотный имплантат, состоящий из пары солнцезащитных очков-тепловизоров. Не спрашивайте, как они выходят наружу. Ответ Вас не порадует."
	number_lock_ru = "plural"
	case_blueprint_ru = list("жен#имплантируем;adj1a теплолинз;n1a")

/obj/item/organ/internal/augment/bioaugment/sprint_enhance
	name = "Имплантируемый оптимизатор траектории"
	desc = "Кусок мяса и металла, способный самостоятельно распоряжаться мышцами ног владельца."
	case_blueprint_ru = list("муж#имплантируем;adj1a оптимизатор;n1a траектории")