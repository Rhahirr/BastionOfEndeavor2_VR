// Bastion of Endeavor File: This file contains all localization info for /defines/obj/ folder.

// weapons.dm

/obj/item/weapon/phone
	name = "Красный телефон"
	desc = "В случае беды..."
	attack_verb = list("called", "rang")
	case_blueprint_ru = list("муж#красн;adj1*a/c'' телефон;n1a")

/obj/item/weapon/rsp
	name = "Мгновенный Раздатчик Семян (МРС)"
	desc = "Приспособление для мгновенной посадки семян."
	case_blueprint_ru = list("муж#Мгновенн;adj1*a Раздатчик;n3a Семян")

/obj/item/weapon/soap
	name = "Мыло"
	desc = "Дешёвое мыло без запаха."
	case_blueprint_ru = list("сред#мыл;n1c")

/obj/item/weapon/soap/nanotrasen
	desc = "Кусок мыла бренда NanoTrasen. Пахнет фороном."

/obj/item/weapon/soap/deluxe/New()
	desc = "Качественное мыло бренда Waffle Co. Пахнет [pick("лавандой", "ванилью", "клубникой", "шоколадом" ,"космосом")]."
	..()

/obj/item/weapon/soap/syndie
	desc = "Подозрительное мыло. Источает запах страха."

/obj/item/weapon/bikehorn
	name = "Велосипедный клаксон"
	desc = "Гудок от велосипеда."
	attack_verb = list("HONKED")
	case_blueprint_ru = list("муж#велосипедн;adj1*a клаксон;n1a")

/obj/item/weapon/c_tube
	name = "Картонная трубка"
	desc = "Трубка из... картона."
	case_blueprint_ru = list("жен#картонн;adj1*a трубк;n3*a")

/obj/item/weapon/disk
	name = "Диск"
	case_blueprint_ru = list("муж#диск;n3a")

/obj/item/weapon/disk/nuclear
	name = "Аутентификационный диск"
	desc = "Это стоит приберечь."
	case_blueprint_ru = list("муж#аутентификационн;adj1*a диск;n3a")

/*
/obj/item/weapon/game_kit
	name = "Gaming Kit"
*/

/obj/item/weapon/gift
	name = "Подарок"
	desc = "Что-то обёрнутое."
	case_blueprint_ru = list("муж#подарок&подарк;n3*a")

/*/obj/item/weapon/syndicate_uplink
	name = "station bounced radio"
	desc = "Remain silent about this..."
*/

/obj/item/weapon/SWF_uplink
	name = "Станционная рация"
	desc = "Используется для связи, видимо."
	case_blueprint_ru = list("жен#станционн;adj1*a раци;n7a")

/obj/item/weapon/staff
	name = "Посох волшебника"
	desc = "Якобы посох, используемый волшебником."
	attack_verb = list("bludgeoned", "whacked", "disciplined")
	case_blueprint_ru = list("муж#посох;n3a волшебника")

/obj/item/weapon/staff/broom
	name = "Метла"
	desc = "Используется для подметания, а также ночных полётов со зловещим смехом. Чёрный кот в комплект не входит."
	case_blueprint_ru = list("жен#метл&мётл&мётел;n1*d")

/obj/item/weapon/staff/gentcane
	name = "Трость джентльмена"
	desc = "Трость из чёрного дерева с наконечником из слоновой кости."
	case_blueprint_ru = list("жен#трост;n8e джентльмена")

/obj/item/weapon/staff/stick
	name = "Палка"
	desc = "Замечательное приспособление для похищения чужих напитков в баре."
	case_blueprint_ru = list("жен#палк&палок;n3*a")

/obj/item/weapon/module/card_reader
	name = "Картридерный модуль"
	desc = "Электронный модуль для чтения данных ID-карт."
	case_blueprint_ru = list("муж#картридерн;adj1*a модул;n2a")

/obj/item/weapon/module/power_control
	name = "Модуль регулирования мощности"
	desc = "Переключающая микросхема для регулирования мощности."
	case_blueprint_ru = list("муж#модул;n2a регулирования мощности")

/obj/item/weapon/module/id_auth
	name = "Модуль ID-идентификации"
	desc = "Модуль для защищённой идентификации ID-карт."
	case_blueprint_ru = list("муж#модул;n2a ID-идентификации")

/obj/item/weapon/module/cell_power
	name = "Модуль конвертирования батареек"
	desc = "Преобразующий и регулирующий модуль, позволяющий использование батареек."
	case_blueprint_ru = list("муж#модул;n2a конвертирования батареек")

/obj/item/weapon/module/cell_power
	name = "Модуль зарядки батареек"
	desc = "Микросхемы, поволяющие запитывать батарейки."
	case_blueprint_ru = list("муж#модул;n2a зарядки батареек")

/obj/item/device/camera_bug
	name = "Жучок для камеры"
	case_blueprint_ru = list("муж#жучок&жучк;n3*b для камеры")

/*
/obj/item/weapon/cigarpacket
	name = "Pete's Cuban Cigars"
	desc = "The most robust cigars on the planet."
*/

/obj/item/weapon/pai_cable
	desc = "Гибкий провод с универсальным разъёмом на одном из концов."
	name = "Информационный кабель"
	case_blueprint_ru = list("муж#информационн;adj1*a кабел;n2a")

///////////////////////////////////////Stock Parts /////////////////////////////////

/obj/item/weapon/storage/part_replacer
	name = "Устройство Быстрой Замены Компонентов"
	desc = "Особый механический модуль, предназначенный для хранения, сортировки и замены стандартных компонентов аппаратуры."
	case_blueprint_ru = list("сред#Устройств;n1a Быстрой Замены Компонентов")

/obj/item/weapon/storage/part_replacer/adv
	name = "Усовершенствованное Устройство Быстрой Замены Компонентов"
	desc = "Особый механический модуль, предназначенный для хранения, сортировки и замены стандартных компонентов аппаратуры. Эта модель обладает гораздо большей вместительностью."
	case_blueprint_ru = list("сред#Усовершенствованн;adj1b/c' Устройств;n1a Быстрой Замены Компонентов")

/obj/item/weapon/storage/part_replacer/adv/discount_bluespace
	name = "Блюспейсовое Устройство Быстрой Замены Компонентов"
	desc = "Особый механический модуль, предназначенный для хранения, сортировки и замены стандартных компонентов аппаратуры. Эта модель обладает гораздо большей вместительностью, а также возможностью работать с аппатурой при закрытой панели техобслуживания."
	case_blueprint_ru = list("сред#Блюспейсов;adj1b/c' Устройств;n1a Быстрой Замены Компонентов")

/obj/item/weapon/stock_parts
	name = "Запчасть"
	desc = "Что?"
	case_blueprint_ru = list("жен#запчаст;n8e")

//Rank 1

/obj/item/weapon/stock_parts/console_screen
	name = "Экран консоли"
	desc = "Используется в создании компьютеров и прочих девайсов, обладающих интерактивной консолью."
	case_blueprint_ru = list("муж#экран;n1a консоли")

/obj/item/weapon/stock_parts/capacitor
	name = "Конденсатор"
	desc = "Простейший конденсатор, применяемый в конструкции множества девайсов."
	case_blueprint_ru = list("муж#конденсатор;n1a")

/obj/item/weapon/stock_parts/scanning_module
	name = "Сканирующий модуль"
	desc = "Компактный сканирующий модуль высокого разрешения, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#сканирующ;adj4a модул;n2a")

/obj/item/weapon/stock_parts/manipulator
	name = "Микро-манипулятор"
	desc = "Крохотный манипулятор, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#микро-манипулятор;n1a")

/obj/item/weapon/stock_parts/micro_laser
	name = "Микролазер"
	desc = "Крохотный лазер, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#микролазер;n1a")

/obj/item/weapon/stock_parts/matter_bin
	name = "Контейнер материи"
	desc = "Контейнер, предназначенный для сжатой материи, которая в дальнейшем будет переформирована."
	case_blueprint_ru = list("муж#контейнер;n1a материи")

//Rank 2

/obj/item/weapon/stock_parts/capacitor/adv
	name = "Усовершенствованный конденсатор"
	desc = "Усовершенствованный конденсатор, применяемый в конструкции многих девайсов."
	case_blueprint_ru = list("муж#усовершенствованн;adj1*a конденсатор;n1a")

/obj/item/weapon/stock_parts/scanning_module/adv
	name = "Усовершенствованный сканирующий модуль"
	desc = "Компактный сканирующий модуль высокого разрешения, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#усовершенствованн;adj1*a сканирующ;adj4a модул;n2a")

/obj/item/weapon/stock_parts/manipulator/nano
	name = "Нано-манипулятор"
	desc = "Крохотный манипулятор, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#нано-манипулятор;n1a")

/obj/item/weapon/stock_parts/micro_laser/high
	name = "Высоковольтный микролазер"
	desc = "Крохотный лазер, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#высоковольтн;adj1*a микролазер;n1a")

/obj/item/weapon/stock_parts/matter_bin/adv
	name = "Усовершенствованный контейнер материи"
	desc = "Контейнер, предназначенный для сжатой материи, которая в дальнейшем будет переформирована."
	case_blueprint_ru = list("муж#усовершенствованн;adj1*a контейнер;n1a материи")

//Rating 3

/obj/item/weapon/stock_parts/capacitor/super
	name = "Сверхконденсатор"
	desc = "Высокоёмкостный конденсатор, применяемый в конструкции многих девайсов."
	case_blueprint_ru = list("муж#сверхконденсатор;n1a")

/obj/item/weapon/stock_parts/scanning_module/phasic
	name = "Фазовый сканирующий модуль"
	desc = "Компактный фазовый сканирующий модуль высокого разрешения, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#фазов;adj1a сканирующ;adj4a модул;n2a")

/obj/item/weapon/stock_parts/manipulator/pico
	name = "Пико-манипулятор"
	desc = "Крохотный манипулятор, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#пико-манипулятор;n1a")

/obj/item/weapon/stock_parts/micro_laser/ultra
	name = "Ультравысоковольтный микролазер"
	desc = "Крохотный лазер, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#ультравысоковольтн;adj1*a микролазер;n1a")

/obj/item/weapon/stock_parts/matter_bin/super
	name = "Сверхконтейнер материи"
	desc = "Контейнер, предназначенный для сжатой материи, которая в дальнейшем будет переформирована."
	case_blueprint_ru = list("муж#сверхконтейнер;n1a материи")

// Rating 4 - Anomaly

/obj/item/weapon/stock_parts/capacitor/hyper
	name = "Гиперконденсатор"
	desc = "Гиперёмкостный конденсатор, применяемый в конструкции многих девайсов."
	case_blueprint_ru = list("муж#гиперконденсатор;n1a")

/obj/item/weapon/stock_parts/scanning_module/hyper
	name = "Квантовый сканирующий модуль"
	desc = "Компактный квантовый сканирующий модуль практически идеального разрешения, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#квантов;adj1a сканирующ;adj4a модул;n2a")

/obj/item/weapon/stock_parts/manipulator/hyper
	name = "Планковский манипулятор"
	desc = "Крохотный манипулятор, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#планковск;adj3*a/b манипулятор;n1a")

/obj/item/weapon/stock_parts/micro_laser/hyper
	name = "Гипервысоковольтный микролазер"
	desc = "Крохотный лазер, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#гипервысоковольтн;adj1*a микролазер;n1a")

/obj/item/weapon/stock_parts/matter_bin/hyper
	name = "Гиперконтейнер материи"
	desc = "Контейнер, предназначенный для сжатой материи, которая в дальнейшем будет переформирована."
	case_blueprint_ru = list("муж#гиперконтейнер;n1a материи")

// Rating 5 - Precursor

/obj/item/weapon/stock_parts/capacitor/omni
	name = "Омниконденсатор"
	desc = "Невероятно высокоёмкостный конденсатор, применяемый в конструкции многих девайсов."
	case_blueprint_ru = list("муж#омниконденсатор;n1a")

/obj/item/weapon/stock_parts/scanning_module/omni
	name = "Омнисканирующий модуль"
	desc = "Компактный пространственно-временной сканирующий модуль идеального разрешения, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#омнисканирующ;adj4a модул;n2a")

/obj/item/weapon/stock_parts/manipulator/omni
	name = "Омниманипулятор"
	desc = "Странный бесконечно малый манипулятор, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#омниманипулятор;n1a")

/obj/item/weapon/stock_parts/micro_laser/omni
	name = "Омнивысоковольтный микролазер"
	desc = "Странный лазер, применяемый в конструкции некоторых девайсов."
	case_blueprint_ru = list("муж#омнивысоковольтн;adj1*a микролазер;n1a")

/obj/item/weapon/stock_parts/matter_bin/omni
	name = "Омниконтейнер материи"
	desc = "Странный контейнер, предназначенный для материи, которая в дальнейшем будет переформирована."
	case_blueprint_ru = list("муж#омниконтейнер;n1a материи")

// Subspace stock parts

/obj/item/weapon/stock_parts/subspace/ansible
	name = "Субпространственный анзибль"
	desc = "Компактный модуль, способный фиксировать внепространственную активность."
	case_blueprint_ru = list("муж#субпространственн;adj1*a анзибл;n2a")

/obj/item/weapon/stock_parts/subspace/sub_filter
	name = "Гиперволновой фильтр"
	desc = "Крохотный девайс, способный фильтровать и конвертировать сверхинтенсивные радиоволны."
	case_blueprint_ru = list("муж#гиперволнов;adj1b/c' фильтр;n1a")

/obj/item/weapon/stock_parts/subspace/amplifier
	name = "Субпространственный усилитель"
	desc = "Компактный микромеханизм, способный усиливать слабые субпространственные передачи."
	case_blueprint_ru = list("муж#субпространственн;adj1*a усилител;n2a")

/obj/item/weapon/stock_parts/subspace/treatment
	name = "Субпространственный обрабатывающий диск"
	desc = "Компактный микромеханизм, способный увеличивать длину гиперсжатых радиоволн."
	case_blueprint_ru = list("муж#субпространственн;adj1*a обрабатывающ;adj4a диск;n3a")

/obj/item/weapon/stock_parts/subspace/analyzer
	name = "Субпространственный анализатор волн"
	desc = "Высокоточный анализатор, способный анализировать длину субпространственных волн."
	case_blueprint_ru = list("муж#субпространственн;adj1*a анализатор;n1a волн")

/obj/item/weapon/stock_parts/subspace/crystal
	name = "Анзиблевый кристалл"
	desc = "Кристалл, изготавливаемый из чистейшего стекла и предназначенный для передачи лазерных пакетов данных в субпространство."
	case_blueprint_ru = list("муж#анзиблев;adj1a кристалл;n1a")

/obj/item/weapon/stock_parts/subspace/transmitter
	name = "Субпространственный передатчик"
	desc = "Крупный механизм, предназначенный для открытия окна в субпространственное измерение."
	case_blueprint_ru = list("муж#субпространственн;adj1*a передатчик;n3a")

/obj/item/weapon/ectoplasm
	name = "Эктоплазма"
	desc = "Жуть!"
	case_blueprint_ru = list("жен#эктоплазм;n1a")

/obj/item/weapon/research
	name = "Инструмент дебаггинга исследований"
	desc = "Инструмент для моментальной прокачки исследований. Только для тестирования."
	case_blueprint_ru = list("муж#инструмент;n1a дебаггинга исследований")

// Additional construction stock parts

/obj/item/weapon/stock_parts/gear
	name = "Шестерня"
	desc = "Шестерня, используемая в конструкциях."
	case_blueprint_ru = list("жен#шестерн;n2*b")

/obj/item/weapon/stock_parts/motor
	name = "Мотор"
	desc = "Мотор, используемый в конструкциях."
	case_blueprint_ru = list("муж#мотор;n1a")

/obj/item/weapon/stock_parts/spring
	name = "Пружина"
	desc = "Пружина, используемая в конструкциях."
	case_blueprint_ru = list("жен#пружин;n1a")
