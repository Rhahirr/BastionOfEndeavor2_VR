// diona.dm
/obj/item/organ/external/diona
	name = "Усик"
	case_blueprint_ru = list("муж#усик;n3a", "жен#ветв;n8e#amputation_point", "муж#лигамент;n1a#joint")
	amputation_point = "ветвь" // doubling these just in case something goes horribly wrong
	joint = "лигамент"

/obj/item/organ/external/diona/chest
	name = "Главный ствол"
	case_blueprint_ru = list("муж#главн;adj1*a/c ствол;n1b", "жен#ветв;n8e#amputation_point", "муж#лигамент;n1a#joint")

/obj/item/organ/external/diona/groin
	name = "Разветвление"
	case_blueprint_ru = list("муж#разветвлени;n7a", "жен#ветв;n8e#amputation_point", "муж#лигамент;n1a#joint")

/obj/item/organ/external/diona/arm
	name = "Левый верхний усик"
	case_blueprint_ru = list("муж#лев;adj1a' верхн;adj2a усик;n3a", "жен#ветв;n8e#amputation_point", "муж#лигамент;n1a#joint")

/obj/item/organ/external/diona/arm/right
	name = "Правый верхний усик"
	case_blueprint_ru = list("муж#прав;adj1a/c верхн;adj2a усик;n3a", "жен#ветв;n8e#amputation_point", "муж#лигамент;n1a#joint")

/obj/item/organ/external/diona/leg
	name = "Левый нижний усик"
	case_blueprint_ru = list("муж#лев;adj1a' нижн;adj2*a усик;n3a", "жен#ветв;n8e#amputation_point", "муж#лигамент;n1a#joint")

/obj/item/organ/external/diona/leg/right
	name = "Правый нижний усик"
	case_blueprint_ru = list("муж#прав;adj1a/c нижн;adj2*a усик;n3a", "жен#ветв;n8e#amputation_point", "муж#лигамент;n1a#joint")

/obj/item/organ/external/diona/foot
	name = "Левая ступня"
	case_blueprint_ru = list("жен#лев;adj1a' ступн;n2*b", "жен#лев;adj1a' лодыжк;n3*a#amputation_point", "жен#лев;adj1a' лодыжк;n3*a#joint")

/obj/item/organ/external/diona/foot/right
	name = "Правая ступня"
	case_blueprint_ru = list("жен#прав;adj1a/c ступн;n2*b", "жен#лев;adj1a' лодыжк;n3*a#amputation_point", "жен#лев;adj1a' лодыжк;n3*a#joint")

/obj/item/organ/external/diona/hand
	name = "Левый хватун"
	case_blueprint_ru = list("муж#лев;adj1a' хватун;n1b", "жен#ветв;n8e#amputation_point", "муж#лигамент;n1a#joint")

/obj/item/organ/external/diona/hand/right
	name = "Правый хватун"
	case_blueprint_ru = list("муж#прав;adj1a/c хватун;n1b", "жен#ветв;n8e#amputation_point", "муж#лигамент;n1a#joint")

/obj/item/organ/internal/diona
	name = "Нимфа дионеи"
	case_blueprint_ru = list("жен#нимф;n1a дионеи")

/obj/item/organ/internal/diona/strata
	name = "Нейронная страта"
	case_blueprint_ru = list("жен#нейронн;adj1a страт;n1a")

/obj/item/organ/internal/diona/bladder
	name = "Газовый мешок"
	case_blueprint_ru = list("муж#газов;adj1a мешок&мешк;n3*b")

/obj/item/organ/internal/diona/polyp
	name = "Полип"
	case_blueprint_ru = list("муж#полип;n1a")

/obj/item/organ/internal/diona/ligament
	name = "Формообразующий лигамент"
	case_blueprint_ru = list("муж#формообразующ;adj4a лигамент;n1a")

/obj/item/organ/internal/diona/node
	name = "Рецепторный узел"
	case_blueprint_ru = list("муж#рецепторн;adj1a узел&узл;n1*b")

/obj/item/organ/internal/diona/nutrients
	name = "Пищевой сосуд"
	case_blueprint_ru = list("муж#пищев;adj1b сосуд;n1a")

/obj/item/organ/internal/brain/cephalon
	name = "Цефалон"
	case_blueprint_ru = list("муж#цефалон;n1a")

/obj/item/organ/external/head/no_eyes/diona
	name = "Голова"
	case_blueprint_ru = list("жен#голов;n1f'", "жен#ветв;n8e#amputation_point", "муж#лигамент;n1a#joint")
	amputation_point = "ветвь" // doubling these just in case something goes horribly wrong
	joint = "лигамент"

// machine.dm
/obj/item/organ/internal/cell
	name = "Микроаккумулятор"
	desc = "Крохотный, но очень мощный аккумулятор, используемый в полностью простетических телах."
	case_blueprint_ru = list("муж#микроаккумулятор;n1a")

/obj/item/organ/internal/mmi_holder
	name = "Мозговой интерфейс"
	case_blueprint_ru = list("муж#мозгов;adj1bX интерфейс;n1a")

/obj/item/organ/internal/mmi_holder/posibrain
	name = "Позитронный мозговой интерфейс"
	case_blueprint_ru = list("муж#позитронн;adj1a мозгов;adj1bX интерфейс;n1a")

/obj/item/organ/internal/mmi_holder/robot
	name = "Цифровой мозговой интерфейс"
	case_blueprint_ru = list("муж#цифров;adj1bX мозгов;adj1bX интерфейс;n1a")

// nano.dm
/obj/item/organ/internal/nano/orchestrator
	name = "Оркестратор"
	desc = "Крохотный компьютер, предназначенный для высоких параллельных нагрузок."
	case_blueprint_ru = list("муж#оркестратор;n1a")

/obj/item/organ/internal/nano/refactory
	name = "Перестройщик"
	desc = "Крохотная ячейка обработки металла и производства нанитов."
	case_blueprint_ru = list("муж#перестройщик;n3a")

/obj/item/organ/internal/mmi_holder/posibrain/nano
	name = "Позитронный мозг многоликого"
	desc = "Более продвинутая версия обыкновенного позитронного мозга, используемая, как правило, в телах многоликих."
	case_blueprint_ru = list("муж#позитронн;adj1a мозг;n3c многоликого")

/obj/item/device/mmi/digital/posibrain/nano
	name = "Позитронный мозг многоликого"
	desc = "Более продвинутая версия обыкновенного позитронного мозга, используемая, как правило, в телах многоликих."
	case_blueprint_ru = list("муж#позитронн;adj1a мозг;n3c многоликого")

// replicant.dm
/obj/item/organ/internal/eyes/replicant
	name = "Искусственные глаза"
	desc = "Пара резиновых шариков, предназначенных для оптического восприятия."
	case_blueprint_ru = list("муж#искусственн;adj1a глаз;n1c(1)(2)")
	number_lock_ru = "plural"

/obj/item/organ/internal/brain/replicant
	name = "Искусственный мозг"
	desc = "Сочный кусочек... резины, якобы из чьей-то головы?"
	case_blueprint_ru = list("муж#искусственн;adj1a мозг;n3a")

/obj/item/organ/internal/voicebox/replicant
	name = "Искусственная гортань"
	desc = "Резиновый кусочек мяса, используемый для речи."
	case_blueprint_ru = list("жен#искусственн;adj1a гортан;n8a")

/obj/item/organ/internal/heart/replicant
	name = "Искусственное сердце"
	desc = "Кусочек резины и мышц, используемый для перекачки жидкостей."
	case_blueprint_ru = list("сред#искусственн;adj1a сердц&сердц&сердец;n5*c")

/obj/item/organ/internal/lungs/replicant
	name = "Искусственные лёгкие"
	desc = "Пара резиновых мешков, используемых для дыхания."
	case_blueprint_ru = list("сред#искусственн;adj1a лёгк;n<п_(3a)>")
	number_lock_ru = "plural"

/obj/item/organ/internal/liver/replicant
	name = "Искусственная печень"
	desc = "Резиновая масса, предназначенная для фильтрации и расщепления химических веществ."
	case_blueprint_ru = list("жен#искусственн;adj1a печен;n8a")

/obj/item/organ/internal/kidneys/replicant
	name = "Искусственные почки"
	desc = "Пара небольших резиновых мешочков, предназначенных для фильтрации химических веществ."
	case_blueprint_ru = list("жен#искусственн;adj1a почк&почек;n3*a")
	number_lock_ru = "plural"

/obj/item/organ/internal/xenos/plasmavessel/replicant
	name = "Искусственный форогенный мешок"
	desc = "Бульбообразный резиновый орган, превращающий питательные вещества владельца в органическое соединение, на удивление похожее на форон."
	case_blueprint_ru = list("муж#искусственн;adj1a форогенн;adj1*a- мешок&мешк;n3*b")

/obj/item/organ/internal/xenos/acidgland/replicant
	name = "Искусственная аэрозольная трубка"
	desc = "Длинная резиновая трубка, на конце которой расположена твердая бульба."
	case_blueprint_ru = list("жен#искусственн;adj1a аэрозольн;adj1a трубк&трубок;n3*a")

/obj/item/organ/internal/xenos/resinspinner/replicant
	name = "Искусственный биосеточный прядильщик"
	desc = "Резиновая орган с выпуклостями, предназначенными для формовки биомассы."
	case_blueprint_ru = list("муж#искусственн;adj1a биосеточн;adj1a прядильщик;n3a")

/obj/item/organ/internal/immunehub
	name = "Лимфоматическая паутина"
	desc = "Сеть из пульсирующих нитей."
	case_blueprint_ru = list("жен#лимфоматическ;adj3aX~ паутин;n1a")

/obj/item/organ/internal/immunehub/replicant
	name = "Ассимиляционная паутина"
	desc = "Сеть пульсирующих резиновых нитей, впивающихся в плоть поблизости."
	case_blueprint_ru = list("жен#ассимиляционн;adj1a паутин;n1a")

/obj/item/organ/internal/metamorphgland
	name = "Морфопластический узел"
	desc = "Странный кусок мяса, не сидящий на месте."
	case_blueprint_ru = list("муж#морфопластическ;adj3aX~ узел&узл;n1*b")

/obj/item/organ/internal/metamorphgland/replicant
	name = "Искусственный морфопластический узел"
	desc = "Странный кусок резинового мяса, который постоянно дрыгается."
	case_blueprint_ru = list("муж#искусственн;adj1a морфопластическ;adj3aX~ узел&узл;n1*b")

/obj/item/organ/internal/brainmirror
	name = "Кортикальный генератор квантовой запутанности"
	desc = "Устрашающее приспособление."
	case_blueprint_ru = list("муж#кортикальн;adj1a генератор;n1a квантовой запутанности")

/obj/item/organ/internal/heart/replicant/rage
	name = "Искусственное адреналиновое сердце"
	desc = "Кусочек резины и мышц и сложных химических сетей, используемый для перекачки жидкостей."
	description_info = "Этот орган, будучи установленным в теле, вызывает в пациенте приток адреналина."
	case_blueprint_ru = list("сред#искусственн;adj1a адреналинов;adj1a сердц&сердц&сердец;n5*c")

/obj/item/organ/internal/lungs/replicant/mending
	name = "Искусственные сетчатые лёгкие"
	desc = "Пара резиновых мешков с крупными секциями из ситообразных нанитных фильтров."
	description_info = "Этот орган, будучи установленным в теле, ускоряет восстановление других органов."
	case_blueprint_ru = list("сред#искусственн;adj1a сетчат;adj1a лёгк;n<п_(3a)>")
	number_lock_ru = "plural"

// skrell.dm
/obj/item/organ/internal/spleen/skrell
	name = "Лимфатический центр"
	case_blueprint_ru = list("муж#лимфатическ;adj3aX~ центр;n1a")

// slime.dm
/obj/item/organ/internal/heart/grey/colormatch/slime
	name = "Пневматическая сеть"
	desc = "Мерзкий мешок слизи."
	case_blueprint_ru = list("жен#пневматическ;adj3aX~ сет;n8e")

/obj/item/organ/internal/regennetwork
	name = "Пневморегенеративная сеть"
	case_blueprint_ru = list("жен#пневморегенеративн;adj1a сет;n8e")

/obj/item/organ/internal/regennetwork/burn
	name = "Терморегенеративная сеть"
	case_blueprint_ru = list("жен#терморегенеративн;adj1a сет;n8e")

/obj/item/organ/internal/regennetwork/oxy
	name = "Респирорегенеративная сеть"
	case_blueprint_ru = list("жен#респирорегенеративн;adj1a сет;n8e")

/obj/item/organ/internal/regennetwork/tox
	name = "Токсинорегенеративная сеть"
	case_blueprint_ru = list("жен#токсинорегенеративн;adj1a сет;n8e")

// standard.dm
/obj/item/organ/external/chest
	name = "Верхняя часть тела"
	amputation_point = "спинной хребет"
	joint = "шея"
	encased = "грудная клетка"
	case_blueprint_ru = list(
		"жен#верхн;adj2a част;n8a тела",
		"муж#спинн;adj1bX хребет&хребт;n1*b#amputation_point",
		"жен#ше;n6a#joint",
		"жен#грудн;adj1bX клетк&клеток;n3*a#encased"
	)

/obj/item/organ/external/groin
	name = "Нижняя часть тела"
	amputation_point = "поясница"
	joint = "бедро"
	case_blueprint_ru = list(
		"жен#нижн;adj2a част;n8a тела",
		"жен#поясниц;n5a#amputation_point",
		"сред#бедр&бёдр&бёдер;n1*d#joint"
	)

/obj/item/organ/external/arm
	name = "Левая рука"
	amputation_point = "левый локоть"
	joint = "левое плечо"
	case_blueprint_ru = list(
		"жен#лев;adj1a' рук;n3f'",
		"муж#лев;adj1a' локот&локт&локт;n2*e#amputation_point",
		"сред#лев;adj1a' плеч;n4f(1)#joint"
	)

/obj/item/organ/external/arm/right
	name = "Правая рука"
	amputation_point = "правый локоть"
	joint = "правое плечо"
	case_blueprint_ru = list(
		"жен#прав;adj1a/c рук;n3f'",
		"муж#прав;adj1a/c локот&локт&локт;n2*e#amputation_point",
		"сред#прав;adj1a/c плеч;n4f(1)#joint"
	)

/obj/item/organ/external/leg
	name = "Левая нога"
	amputation_point = "левое бедро"
	joint = "левое колено"
	case_blueprint_ru = list(
		"жен#лев;adj1a' ног;n3f'",
		"сред#лев;adj1a' бедр&бёдр&бёдер;n1*d#amputation_point",
		"сред#лев;adj1a' колен;n1a^-и#joint"
	)

/obj/item/organ/external/leg/right
	name = "Правая нога"
	amputation_point = "правое бедро"
	joint = "правое колено"
	case_blueprint_ru = list(
		"жен#прав;adj1a/c ног;n3f'",
		"сред#прав;adj1a/c бедр&бёдр&бёдер;n1*d#amputation_point",
		"сред#прав;adj1a/c колен;n1a^-и#joint"
	)

/obj/item/organ/external/foot
	name = "Левая ступня"
	amputation_point = "левая лодыжка"
	joint = "левая лодыжка"
	case_blueprint_ru = list(
		"жен#лев;adj1a' ступн;n2*b",
		"жен#лев;adj1a' лодыжк&лодыжек;n3*a#amputation_point",
		"жен#лев;adj1a' лодыжк&лодыжек;n3*a#joint"
	)

/obj/item/organ/external/foot/right
	name = "Правая ступня"
	amputation_point = "правая лодыжка"
	joint = "правая лодыжка"
	case_blueprint_ru = list(
		"жен#прав;adj1a/c ступн;n2*b",
		"жен#прав;adj1a/c лодыжк&лодыжек;n3*a#amputation_point",
		"жен#прав;adj1a/c лодыжк&лодыжек;n3*a#joint"
	)

/obj/item/organ/external/hand
	name = "Левая ладонь"
	joint = "левое запястье"
	amputation_point = "левое запястье"
	case_blueprint_ru = list(
		"жен#лев;adj1a' ладон;n8a",
		"сред#лев;adj1a' запяст;n6*a#amputation_point",
		"сред#лев;adj1a' запяст;n6*a#joint",
	)

/obj/item/organ/external/hand/right
	name = "Правая ладонь"
	joint = "правое запястье"
	amputation_point = "правое запястье"
	case_blueprint_ru = list(
		"жен#прав;adj1a/c ладон;n8a",
		"сред#прав;adj1a/c запяст;n6*a#amputation_point",
		"сред#прав;adj1a/c запяст;n6*a#joint",
	)

/obj/item/organ/external/head
	name = "Голова"
	amputation_point = "шея"
	joint = "челюсть"
	encased = "череп"
	case_blueprint_ru = list(
		"жен#голов;n1f'",
		"жен#ше;n6a#amputation_point",
		"жен#челюст;n8e#joint",
		"муж#череп;n1c(1)#encased"
	)

// unathi.dm
/obj/item/organ/external/chest/unathi
	name = "Верхняя часть тела"
	amputation_point = "спинной хребет"
	joint = "шея"
	encased = "верхние грудные пластины"
	case_blueprint_ru = list(
		"жен#верхн;adj2a част;n8a тела",
		"муж#спинн;adj1bX хребет&хребт;n1*b#amputation_point",
		"жен#ше;n6a#joint",
		"жен#верхн;adj2a грудн;adj1bX пластина;n1a#encased"
	)

/obj/item/organ/external/groin/unathi
	name = "Нижняя часть тела"
	amputation_point = "поясница"
	joint = "бедро"
	encased = "нижние грудные пластины" // we dont support plurals in secondary lists though, at least not yet
	case_blueprint_ru = list(
		"жен#нижн;adj2a част;n8a тела",
		"жен#поясниц;n5a#amputation_point",
		"сред#бедр&бёдр&бёдер;n1*d#joint",
		"жен#нижн;adj2a грудн;adj1bX пластина;n1a#encased" // this is supposed to be always plural but isn't
	)

/obj/item/organ/internal/liver/unathi
	name = "Фильтрующий орган"
	case_blueprint_ru = list("муж#фильтрующ;adj4a орган;n1a")

// vox.dm
/obj/item/organ/internal/lungs/vox
	name = "Мешок воздушных капилляров"
	case_blueprint_ru = list("муж#мешок&мешк;n3*b воздушных капилляров")

/obj/item/organ/internal/kidneys/vox
	name = "Фильтрующий пузырь"
	case_blueprint_ru = list("муж#фильтрующ;adj4a пузыр;n2b")

/obj/item/organ/internal/liver/vox
	name = "Сточный тракт"
	case_blueprint_ru = list("муж#сточн;adj1a тракт;n1a")

/obj/item/organ/external/groin/vox
	name = "Нижняя часть тела"
	amputation_point = "поясница"
	joint = "бедро"
	encased = "нижняя часть грудной клетки"
	case_blueprint_ru = list(
		"жен#нижн;adj2a част;n8a тела",
		"жен#поясниц;n5a#amputation_point",
		"сред#бедр&бёдр&бёдер;n1*d#joint",
		"жен#нижн;adj2a част;n8e грудной клетки#encased"
	)

// xenos.dm
/obj/item/organ/internal/xenos
	name = "Орган ксеноморфа"
	desc = "Пахнет как казус на химпредприятии."
	case_blueprint_ru = list("муж#орган;n1a ксеноморфа")

/obj/item/organ/internal/xenos/eggsac
	name = "Яйцевой мешок"
	case_blueprint_ru = list("муж#яйцев;adj1bX мешок&мешк;n3*b")

/obj/item/organ/internal/xenos/plasmavessel
	name = "Сосуд плазмы"
	case_blueprint_ru = list("муж#сосуд;n1a плазмы")

/obj/item/organ/internal/xenos/plasmavessel/queen
	name = "Раздутый сосуд плазмы"
	case_blueprint_ru = list("муж#раздут;adj1a сосуд;n1a плазмы")

/obj/item/organ/internal/xenos/plasmavessel/hunter
	name = "Крохотный сосуд плазмы"
	case_blueprint_ru = list("муж#крохотн;adj1a сосуд;n1a плазмы")

/obj/item/organ/internal/xenos/acidgland
	name = "Кислотная железа"
	case_blueprint_ru = list("жен#кислотн;adj1a желез;n1f")

/obj/item/organ/internal/xenos/hivenode
	name = "Узел роя"
	case_blueprint_ru = list("муж#узел&узл;n1*b роя")

/obj/item/organ/internal/xenos/resinspinner
	name = "Смоляной прядильщик"
	case_blueprint_ru = list("муж#смолян;adj1bX прядильщик;n3a")