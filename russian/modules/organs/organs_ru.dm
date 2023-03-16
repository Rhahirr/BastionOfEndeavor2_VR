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


// robolimbs.dm


// robolimbs_vr/dm


// wound.dm