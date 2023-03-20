// Covers code/modules/organs

// blood.dm


// misc.dm
/obj/item/organ/internal/stack
	name = "Кортикальный стэк"
	case_blueprint_ru = list("муж#кортикальн;adj1*a стэк;n3a")

/obj/item/organ/internal/stack/vox/stack
	name = "Воксовый кортикальный стэк"
	case_blueprint_ru = list("муж#воксов;adj1a кортикальн;adj1*a стэк;n3a")

// organ_external.dm
/obj/item/organ/external
	name = "Внешний орган"
	joint = "Сустав" 
	case_blueprint_ru = list("муж#внешн;n2*a орган;n1a", "муж#сустав;n1a")

// organ_stump.dm
/obj/item/organ/external/stump
	name = "Культя"
	case_blueprint_ru = list("жен#культ;n2b")

// organ.dm
/obj/item/organ
	name = "Орган"
	case_blueprint_ru = list("муж#орган;n1a")

// pain.dm


// robolimbs_custom.dm
/datum/robolimb/eggnerdltd
	company = "Эгнёрд Прототайпинг"
	desc = "Этот протез выглядит так, будто вручную собран из металлолома. На нём красуется маркировка 'ГИ', кривая, словно нанесенная от руки фломастером."

/obj/item/weapon/disk/limb/eggnerdltd
	company = "Эгнёрд Прототайпинг"

/datum/robolimb/talon
	company = "Коготь"
	desc = "Этот металлический протез не привлекает ничем, кроме нескольких видимых снаружи приводов."

/obj/item/weapon/disk/limb/talon
	company = "Когтя" // a bit ugly but should do the trick?

/datum/robolimb/zenghu_taj
	company = "Дзен-Ху - Таджара"
	desc = "Эта модель покрыта резиновой плотью с видимыми линиями стыка."

/datum/robolimb/eggnerdltdred
	company = "Эгнёрд Прототайпинг - Красный"
	desc = "Этот протез выглядит так, будто вручную собран из металлолома, но при этом довольно качественно." // changed the initial desc to make more sense

/obj/item/weapon/disk/limb/eggnerdltdred
	company = "Эгнёрд Прототайпинг" // lets not add more snowflakes than we already have

/datum/robolimb/dsi_tajaran
	company = "Дарксайд - Таджара"
	desc = "Мягкий и пушистый протез, реалистичный на вид и ощупь."
	suggested_species = SPECIES_TAJ // overwriting this here as a define just in case

/obj/item/weapon/disk/limb/dsi_tajaran // okay so who and why upstream made a specific subtype SPECIFICALLY for species-specific limbs and then added these under the generalized one??
	company = "Дарксайд (таджара)" // not that it matters much but just why? adding the parenthesis to look readable with cases

/datum/robolimb/dsi_lizard
	company = "Дарксайд - Унати" // and why the hell is this listed as lizard when the rest of these are given proper species names? changing this
	desc = "Гладкий, чешуйчатый протез, реалистичный на вид и ощупь."
	suggested_species = SPECIES_UNATHI // same as above

/obj/item/weapon/disk/limb/dsi_lizard
	company = "Дарксайд (унати)"

/datum/robolimb/dsi_sergal
	company = "Дарксайд - Сергал"
	desc = "Мягкий, пушистый и чуточку даже мускулистый протез, реалистичный на вид и ощупь."
	suggested_species = SPECIES_SERGAL

/obj/item/weapon/disk/limb/dsi_sergal
	company = "Дарксайд (сергал)"

/datum/robolimb/dsi_nevrean
	company = "Дарксайд - Невреец"
	desc = "Мягкий и пернатый протез, легкий, реалистичный на вид и ощупь."
	suggested_species = SPECIES_NEVREAN

/obj/item/weapon/disk/limb/dsi_nevrean
	company = "Дарксайд (невреец)"

/datum/robolimb/dsi_vulpkanin
	company = "Дарксайд - Вульпканин"
	desc = "Мягкий и пушистый протез, реалистичный на вид и ощупь. И капельку хитроватый..?"
	suggested_species = SPECIES_VULPKANIN

/obj/item/weapon/disk/limb/dsi_vulpkanin
	company = "Дарксайд (вульпканин)"

/datum/robolimb/dsi_akula
	company = "Дарксайд - Акула"
	desc = "Мягкий и мясистый протез, реалистичный на вид и ощупь."
	suggested_species = SPECIES_AKULA

/obj/item/weapon/disk/limb/dsi_akula
	company = "Дарксайд (акула)"

/datum/robolimb/dsi_spider
	company = "Дарксайд - Василиссанец"
	desc = "Твердый хитинистый протез, реалистичный ощупь."
	suggested_species = SPECIES_VASILISSAN

/obj/item/weapon/disk/limb/dsi_spider
	company = "Дарксайд (василиссанец)"

/datum/robolimb/dsi_teshari
	company = "Дарксайд - Тешари"
	desc = "Этот протез обладает корпусом из синтетической плоти и несколькими портами."

/obj/item/weapon/disk/limb/dsi_teshari
	company = "Дарксайд (тешари)"

/datum/robolimb/dsi_zorren
	company = "Дарксайд - Зоррен"
	desc = "Мягкий и пушистый протез, реалистичный на вид и ощупь. И капельку хитроватый..?"
	suggested_species = SPECIES_ZORREN_HIGH

/obj/item/weapon/disk/limb/dsi_zorren
	company = "Дарксайд (зоррен)"

/datum/robolimb/dsi_fennec
	company = "Дарксайд - Фенёк"
	desc = "Мягкий и пушистый протез, реалистичный на вид и ощупь. И капельку хитроватый..?"
	suggested_species = SPECIES_FENNEC

/obj/item/weapon/disk/limb/dsi_fennec
	company = "Дарксайд (фенёк)"

// robolimbs.dm
/datum/robolimb
	company = "Безбрендовый"                            					// Shown when selecting the limb.
	desc = "Обыкновенный протез." 		// Seen when examining a limb.
	// blood_name can be problematic considering we use cases but we might end up not utilizing them
	blood_name = "oil"                              						// Descriptor for blood splatters.
	// these are tricky, might need to get looked at later
	suggested_species = SPECIES_HUMAN                						// If it should make the torso a species
	species_alternates = list(SPECIES_TAJ = "Безбрендовый - Таджара", SPECIES_UNATHI = "Unbranded - Unathi")

/datum/robolimb/unbranded_monitor
	company = "Безбрендовый монитор"
	desc = "Обыкновенная безбрендовая модель протеза головы. Выглядит очень примитивно и дёшево."

/datum/robolimb/unbranded_alt1
	company = "Безбрендовый - Ретро"
	desc = "Простая, немного тяжеловатая модель протеза в стиле ретро."

/datum/robolimb/unbranded_alt2
	company = "Безбрендовый - Богомол"
	desc = "Эта модель протеза покрыта слоём блестящего черного металла и имеет весьма вызывающий насекомообразный вид."

/datum/robolimb/unbranded_tajaran
	company = "Безбрендовый - Таджара"
	desc = "Простая, немного тяжеловатая кошачья модель протеза."

/datum/robolimb/unbranded_unathi
	company = "Безбрендовый - Унати"
	desc = "Простая, немного тяжеловатая рептилоидная модель протеза."

/datum/robolimb/unbranded_teshari
	company = "Безбрендовый - Тешари"
	desc = "Простая, немного тяжеловатая рапторовидная модель протеза."

/datum/robolimb/unbranded_teshari/limbs
	company = "Безбрендовый - Тешари (конечности)"

/datum/robolimb/nanotrasen
	company = "НаноТрейсен"
	desc = "Простая, но эффективная модель протеза."
	species_alternates = list(SPECIES_TAJ = "НаноТрейсен - Таджара", SPECIES_UNATHI = "НаноТрейсен - Унати")

/datum/robolimb/nanotrasen_tajaran
	company = "НаноТрейсен - Таджара"
	species_alternates = list(SPECIES_HUMAN = "НаноТрейсен")
	desc = "Простая, но эффективная модель протеза."

/datum/robolimb/nanotrasen_unathi
	species_alternates = list(SPECIES_HUMAN = "НаноТрейсен")
	desc = "Простая, но эффективная модель протеза."

/datum/robolimb/cenilimicybernetics_teshari
	company = "Синилими Сайбернетикс"
	species_alternates = list(SPECIES_HUMAN = "НаноТрейсен")
	desc = "От тешари, для тешари."

/datum/robolimb/bishop
	company = "Бишоп"
	desc = "Эта модель протеза покрыта белым полимером и голубыми голо-дисплеями."

/datum/robolimb/bishop_alt1
	company = "Бишоп - Глиф"
	desc = "Эта модель протеза покрыта белым полимером и голубыми голо-дисплеями."

/datum/robolimb/bishop_alt2
	company = "Бишоп - Ладья"
	desc = "Эта модель протеза покрыта белым полимером и голубыми голо-дисплеями."

/datum/robolimb/bishop_monitor
	company = "Бишоп (монитор)"
	desc = "Уникальная модель простетической головы от Бишоп Сайбернетикс. Элементы её оформления конфликтуют между собой странным образом."

/datum/robolimb/gestaltframe
	company = "Вей-Мед - Дионея" // i have no idea why this was listed as skrellian but apparently this belongs to vey med????
	desc = "Этот протез больше похожа на какую-то странную... куклу, нежели на протез."
	blood_name = "Синтетический ихор"

/datum/robolimb/cybersolutions
	company = "Сайбер Солюшнс"
	desc = "Этот протез серая и шероховатая, отнюдь не самый эстетичный вариант."

/datum/robolimb/cybersolutions_alt2
	company = "Сайбер Солюшнс - Устаревший"
	desc = "Этот протез обладает устаревшим, снятым с продажи дизайна; наверняка, такую очень тяжело и неприятно использовать."

/datum/robolimb/cybersolutions_alt1
	company = "Сайбер Солюшнс - Матёрый"
	desc = "На сером металле этого протеза установлены дешевые пластиковые панели."

/datum/robolimb/cybersolutions_alt3
	company = "Сайбер Солюшнс - Матрица"
	desc = "Простой и функциональный протез, состоящая из матрицы из датчиков на неприглядном корпусе."

/datum/robolimb/einstein
	company = "Эйнштейн Энджинс"
	desc = "Простой и функциональный протез с глянцевым оформлением."

/datum/robolimb/grayson
	company = "Грейсон"
	desc = "Прочная, надежная модель протеза."

/datum/robolimb/grayson_alt1
	company = "Грейсон - Упрочнённая"
	desc = "Прочная, надежная модель протеза."

/datum/robolimb/grayson_monitor
	company = "Грейсон (монитор)"
	desc = "Прочная, надежная модель монитора, использующего пластик вместо стекла."

/datum/robolimb/hephaestus
	company = "Гефест"
	desc = "Модель протеза с зелено-черным оформлением, декорированная золотыми полосами."

/datum/robolimb/hephaestus_alt1
	company = "Гефест - Фронтир"
	desc = "Прочная простетическая голова в стандартных цветах Гефест."

/datum/robolimb/hephaestus_alt2
	company = "Гефест - Афина"
	desc = "Эта весьма крупная часть тела окрашена в армейские цвета."

/datum/robolimb/hephaestus_monitor
	company = "Гефест (монитор)"
	desc = "Уникальная вариация модели простетической головы от Гефест. Кажется прочной и надежной на вид."

/datum/robolimb/morpheus
	company = "Морфей"
	desc = "Простая и функциональная модель протеза; дизайнеры даже не пытались придать её какой-либо человечности."

/datum/robolimb/morpheus_alt1
	company = "Морфей - Зенит"
	desc = "Простая и функциональная модель протеза; дизайнеры даже не пытались придать её какой-либо человечности."

/datum/robolimb/morpheus_alt2
	company = "Морфей - Скелет"
	desc = "Простая и функциональная модель протеза; практически лишь корпус для мозга."

/datum/robolimb/veymed
	company = "Вей-Мед"
	desc = "Модель протеза высокого качества, практически неотличимая от органической части тела."
	species_alternates = list(SPECIES_SKRELL = "Вей-Мед - Скрелл")
	blood_name = "Хладагент"

/datum/robolimb/veymed_skrell
	company = "Вей-Мед - Скрелл"
	desc = "Модель протеза высокого качества, практически неотличимая от органической части тела."
	blood_name = "Хладагент"

/datum/robolimb/wardtakahashi
	company = "Уорд-Такахаси"
	desc = "Модель протеза, покрытая глянцевыми полимерами черных и белых цветов."

/datum/robolimb/wardtakahashi_alt1
	company = "Уорд-Такахаси - Покров"
	desc = "Модель протеза, покрытая глянцевыми полимерами черных и белых цветов. Внешне напоминает шлем."

/datum/robolimb/wardtakahashi_alt2
	company = "Уорд-Такахаси - Дух"
	desc = "Модель протеза, оформленная в белых и фиолетовых цветах и обладающая более тяжелым корпусом."

/datum/robolimb/wardtakahashi_monitor
	company = "Уорд-Такахаси (монитор)"
	desc = "Уникальная вариация протеза головы от Уорд-Такахаси. Выглядит современно."

/datum/robolimb/xion
	company = "Зион"
	desc = "Модель протеза с минималистичным черно-оранжевым корпусом."

/datum/robolimb/xion_alt1
	company = "Зион - Брешь"
	desc = "Модель протеза с минималистичным черно-оранжевым корпусом. Выглядит немного угрожающе."

/datum/robolimb/xion_alt2
	company = "Зион - Корпус"
	desc = "Модель протеза с минималистичным черно-оранжевым корпусом, обрамленная стальными пластинами."

/datum/robolimb/xion_alt3
	company = "Зион - Белая Мгла"
	desc = "Модель протеза с минималистичным черно-белым корпусом."

/datum/robolimb/xion_alt4
	company = "Зион - Белая Брешь"
	desc = "Модель протеза с минималистичным черно-белым корпусом. Выглядит немного угрожающе."

/datum/robolimb/xion_monitor
	company = "Зион (монитор)"
	desc = "Уникальная вариация протеза головы от Зион. Выглядит утилитарно и минималистично."

/datum/robolimb/zenghu
	company = "Дзен-Ху"
	desc = "Эта модель покрыта резиновой плотью с видимыми линиями стыка."
	species_alternates = list(SPECIES_TAJ = "Дзен-Ху - Таджара")

/datum/robolimb/wooden
	company = "Морган Трейдинг"
	desc = "Простоватая модель протеза, покрытая деревянными панелями."

/obj/item/weapon/disk/limb
	name = "Схемы протезов"
	desc = "Диск, содержащий схемы для печати протезов."
	company = ""
	case_blueprint_ru = list("муж#диск;n3a со схемами протезов")

/datum/robolimb/wooden/teshari
	company = "Морган Трейдинг - Тешари"
	species_alternates = list(SPECIES_HUMAN = "Морган Трейдинг")

/datum/robolimb/wooden/sif
	company = "Морган Трейдинг - Сифское Дерево"
	desc = "Простоватая модель протеза, покрытая панелями из сифской древесины."

/datum/robolimb/wooden/sif/teshari
	company = "Морган Трейдинг - Тешари - Сифское Дерево"
	species_alternates = list(SPECIES_HUMAN = "Морган Трейдинг")

/obj/item/weapon/disk/limb/bishop
	company = "Бишоп"

/obj/item/weapon/disk/limb/cybersolutions
	company = "Сайбер Солюшнс"

/obj/item/weapon/disk/limb/grayson
	company = "Грейсон"

/obj/item/weapon/disk/limb/hephaestus
	company = "Гефест"
	catalogue_data = list(/datum/category_item/catalogue/information/organization/hephaestus)

/obj/item/weapon/disk/limb/morpheus
	company = "Морфей"
	catalogue_data = list(/datum/category_item/catalogue/information/organization/morpheus)

/obj/item/weapon/disk/limb/veymed
	company = "Вей-Мед"
	catalogue_data = list(/datum/category_item/catalogue/information/organization/vey_med)

/obj/item/weapon/disk/limb/veymed/diona // again why is this skrellian originally
	company = "дионейского экзоскелета" //annoying but have to make an exception here. there might a be a lore reason for this but who plays skrell anyway

/obj/item/weapon/disk/limb/wardtakahashi
	company = "Уорд-Такасахи"
	catalogue_data = list(/datum/category_item/catalogue/information/organization/ward_takahashi)

/obj/item/weapon/disk/limb/xion
	company = "Зион"
	catalogue_data = list(/datum/category_item/catalogue/information/organization/xion)

/obj/item/weapon/disk/limb/zenghu
	company = "Дзен-Ху"
	catalogue_data = list(/datum/category_item/catalogue/information/organization/zeng_hu)

/obj/item/weapon/disk/limb/nanotrasen
	company = "НаноТрейсен"
	catalogue_data = list(/datum/category_item/catalogue/information/organization/nanotrasen)

/obj/item/weapon/disk/species
	name = "Схемы расовых протезов"
	desc = "Диск, содержащий схемы для печати протезов конкретной расы."
	case_blueprint_ru = list("муж#диск;n3a со схемами человеческих протезов")

/obj/item/weapon/disk/species/skrell
	case_blueprint_ru = list("муж#диск;n3a со схемами скрелльских протезов")

/obj/item/weapon/disk/species/unathi
	case_blueprint_ru = list("муж#диск;n3a со схемами унатийских протезов")

/obj/item/weapon/disk/species/tajaran
	case_blueprint_ru = list("муж#диск;n3a со схемами таджарских протезов")

/obj/item/weapon/disk/species/teshari
	case_blueprint_ru = list("муж#диск;n3a со схемами тешарских протезов")

// unused apparently but w/e
/obj/item/weapon/disk/species/diona
	case_blueprint_ru = list("муж#диск;n3a со схемами дионейских протезов")

/obj/item/weapon/disk/species/zaddat
	case_blueprint_ru = list("муж#диск;n3a со схемами заддатских протезов")

/obj/item/weapon/disk/limb/cenilimicybernetics
	company = "Синилими Сайбернетикс"

// robolimbs_vr.dm
/datum/robolimb/protean
	company = "Компонент многоликого" // fuck your placeholders
	desc = "Нанотехнологии!"

// some of these are virgo whitelist stuff, we're kinda shaky on the lore but i'll localize these for the moment for the sake of completion
/datum/robolimb/kitsuhana
	company = "Китсухана"
	desc = "Шерстистый протез, похожий на часть тела лисицы и обладающий реалистичной на ощупь плотью."

/obj/item/weapon/disk/limb/kitsuhana
	company = "Китсухана"

// silencedmp5a5 : Serdykov Antoz
/datum/robolimb/white_kryten
	company = "Уайт Крайтен Сайбернетикс"
	desc = "Реалистичный на ощуп протез, обладающий мягкой шерстью. Его было бы почти не отличить от настоящей части тела, если бы не встроенные оранжевые лампочки!"

/obj/item/weapon/disk/limb/white_kryten
	company = "Уайт Крайтен Сайбернетикс"

// tucker0666 : Frost
/datum/robolimb/zenghu_frost
    company = "Дзен-Ху - Изморозь"
    desc = "Этот протез обладает реалистичной синтетической плотью, украшенной синими элементами."

/obj/item/weapon/disk/limb/zenghu_frost
    company = "Дзен-Ху"

/datum/robolimb/cyber_beast
	company = "Сайбер Тек"
	desc = "Материал этого протеза прочен и тяжеловат - самое то для работы в космосе."

/obj/item/weapon/disk/limb/cyber_beast
	company = "Сайбер Тек"

/datum/robolimb/zenghu_glacier
	company = "Дзен-Ху - Ледник"
	desc = "Эта модель покрыта резиновой плотью с видимыми линиями стыка."
	species_alternates = list(SPECIES_TAJ = "Дзен-Ху - Таджара")

/datum/robolimb/zenghu_taj_glacier
	company = "Дзен-Ху - Таджара - Ледник"
	desc = "Эта модель покрыта резиновой плотью с видимыми линиями стыка."


// wound.dm