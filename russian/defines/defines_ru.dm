// Bastion of Endeavor case file: this file contains cases for /defines/ folder.

// gases.dm - I'm not fully sure how those will pan out, but just in case.

/decl/xgm_gas/oxygen
	name = "Кислород"
	case_blueprint_ru = list("муж#кислород;n1a")

/decl/xgm_gas/nitrogen
	name = "Азот"
	case_blueprint_ru = list("муж#азот;n1a–")
	number_lock_ru = "singular"

/decl/xgm_gas/carbon_dioxide
	name = "Диоксид углерода"
	case_blueprint_ru = list("муж#диоксид;n1a углерода")

/decl/xgm_gas/phoron
	name = "Форон"
	case_blueprint_ru = list("муж#форон;n1a")

/decl/xgm_gas/volatile_fuel
	name = "Летучее топливо"
	case_blueprint_ru = list("сред#летуч;adj4a топлив;n1a")

/decl/xgm_gas/nitrous_oxide
	name = "Оксид азота"
	case_blueprint_ru = list("муж#оксид;n1a азота")

// obj.dm

/obj/effect/beam
	name = "Луч"
	case_blueprint_ru = list("муж#луч;n4b")

/obj/effect/begin
	name = "Начало"
	case_blueprint_ru = list("сред#начал;n1a")

/obj/effect/laser
	name = "Лазер"
	desc = "ГОРЯЧО!!!"
	case_blueprint_ru = list("муж#лазер;n1a")

/obj/effect/projection
	name = "Проекция"
	desc = "Похоже на проекцию чего-то."
	case_blueprint_ru = list("жен#проекц;n7a")

// Fuck if I know how to read this, commenting this out since it's unused just like the rest of this god forsaken file.
/*
/obj/effect/shut_controller
	name = "shut controller"
*/

/obj/structure/showcase
	name = "Статуя"
	desc = "Манекен из пустого тела киборга."
	case_blueprint_ru = list("жен#стату;n6a")

/obj/structure/showcase/sign
	name = "ВНИМАНИЕ: ДИКАЯ МЕСТНОСТЬ"
	desc = "Похоже, эта табличка хочет предупредить Вас о том, что на другой стороне находиться опасно. А ещё она гласит, что NanoTrasen не может гарантировать Вашу безопасность за этой чертой."
	case_blueprint_ru = list("жен#табличк&табличек;n3*a")

/obj/item/weapon/beach_ball
	name = "Пляжный мяч"
	case_blueprint_ru = list("муж#пляжн;adj1a мяч;n4b")

/obj/effect/spawner
	name = "Спавнер объектов"
	case_blueprint_ru = list("муж#спавнер;n1a объектов")
