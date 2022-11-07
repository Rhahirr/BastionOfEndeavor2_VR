// this is where we keep our localized job datums
// whitelist var edits will go here too once we implement that
// the philosophy here is to override the vars and alt titles with our own
// so that we can remove or add alt titles that actually make sense in our language
// russian is tough with synonyms but alt titles are free game and can easily be added if someone has an idea later down the line

// Assistant Roles
/datum/job/intern
	title = "Стажёр"
	faction = "Станция"
	supervisors = "Вы подчиняетесь сотрудникам отдела, за которым закреплены."
	alt_titles = list("Помощник инженера" = /datum/alt_title/intern_eng,
					  "Врач-интерн" = /datum/alt_title/intern_med,
					  "Интерн-лаборант" = /datum/alt_title/intern_sci,
					  "Кадет службы безопасности" = /datum/alt_title/intern_sec,
					  "Младший грузчик" = /datum/alt_title/intern_crg,
					  "Младший исследователь" = /datum/alt_title/intern_exp,
					  "Официант" = /datum/alt_title/server,
					  "Ассистент" = /datum/alt_title/assistant)
	job_description = "Стажёр делает то, что от него попросят, чаще всего в процессе обучения определённой работе. \
						Хоть стажёр и является частью персонала, он не обладает никакой реальной властью на станции."

/datum/alt_title/intern_eng
	title = "Помощник инженера"
	title_blurb = "Помощник инженера обязан выполнять поручения инженерного отдела. Он пока не является полноценным инженером, \
					но набирает знания, чтобы им стать. Помощник инженера не обладает никакой реальной властью на станции."

/datum/alt_title/intern_med
	title = "Врач-интерн"
	title_blurb = "Врач-интерн обязан выполнять поручения медицинского отдела. Он пока не является полноценным врачом, \
					но набирает знания, чтобы им стать. Врач-интерн не обладает никакой реальной властью на станции."

/datum/alt_title/intern_sci
	title = "Интерн-лаборант"
	title_blurb = "Интерн-лаборант обязан выполнять поручения научного отдела. Он пока не является полноценным учёным, \
					но набирает знания, чтобы им стать. Лаборант не обладает никакой реальной властью на станции."

/datum/alt_title/intern_sec
	title = "Кадет службы безопасности"
	title_blurb = "Кадет службы безопасности обязан выполнять поручения службы безопасности. Он пока не является полноценным офицером, \
					но набирает знания, чтобы им стать. Кадет службы безопасности не обладает никакой реальной властью на станции."

/datum/alt_title/intern_crg
	title = "Младший грузчик"
	title_blurb = "Младший грузчик обязан выполнять поручения грузового отдела. Он пока не является полноценным грузчиком, \
					но набирает знания, чтобы им стать. Младший грузчик не обладает никакой реальной властью на станции."

/datum/alt_title/intern_exp
	title = "Младший исследователь"
	title_blurb = "Младший исследователь обязан выполнять поручения службы безопасности. Он пока не является полноценным исследователем, \
					но набирает знания, чтобы им стать. Младший исследователь не обладает никакой реальной властью на станции."

/datum/alt_title/server
	title = "Официант"
	title_blurb = "Официант выполняет поручения на кухне и в баре, а также занимается доставкой еды. Официант не обладает никакой реальной властью на станции."

/datum/alt_title/assistant
	title = "Ассистент"
	title_blurb = "Ассистент выполняет различные поручения. Он не обладает никакой реальной властью на станции, но может оказать помощь там, где она нужна."

/datum/job/assistant
	title = "Посетитель"
	faction = "Станция"
	supervisors = "Вы ни перед кем не отвечаете, так как даже тут не работаете!"
	job_description = "Посетитель - всего лишь гость на станции. У него нет никакой реальной власти, но при этом нету и каких-либо обязанностей."
	alt_titles = list("Гость" = /datum/alt_title/guest, "Путешественник" = /datum/alt_title/traveler)

/datum/alt_title/guest
	title = "Гость"
/datum/alt_title/traveler
	title = "Путешественник"

// Command Roles
/datum/job/captain
	title = "Менеджер объекта"
	faction = "Станция"
	supervisors = "Вы подчиняетесь официальным представителям Корпорации и Корпоративному Регламенту."
	outfit_type = /decl/hierarchy/outfit/job/captain
	job_description = "Менеджер объекта распоряжается остальными сотрудниками Командования, а через них - всей остальной станцией. Они обладают полным доступом, но не знаниями, \
						поэтому обязаны распределять задачи между необходимыми сотрудниками. От Менеджера объекта ожидается понимание Стандартных Операционных Процедур, \
						коему он обязан подчиняться в той же степени, что и любой другой член экипажа."
	alt_titles = list("Смотритель"= /datum/alt_title/overseer, "Директор комплекса" = /datum/alt_title/facility_director, "Главный супервайзер" = /datum/alt_title/chief_supervisor,
						"Капитан" = /datum/alt_title/captain)

/datum/alt_title/overseer
	title = "Смотритель"

/datum/alt_title/facility_director
	title = "Директор комплекса"

/datum/alt_title/chief_supervisor
	title = "Главный супервайзер"

/datum/alt_title/captain
	title = "Капитан"

/datum/job/captain/get_request_reasons()
	return list("Обучение персонала")

/datum/job/hop
	title = "Глава персонала"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Менеджером объекта."
	job_description = "Глава персонала управляет отделом обслуживания, экспедиционным отделом и практически всем гражданским персоналом, \
						а также отвечает за грузовой отдел через Квартирмейстера. Помимо этого Глава персонала распоряжается уровнями доступа членов персонала и отвечает за их реквизиты. \
						В случае необходимости Глава персонала первым принимает на себя роль действующего главы."
	alt_titles = list("Директор по персоналу" = /datum/alt_title/cro, "Заместитель директора" = /datum/alt_title/deputy_manager, "Управляющий персоналом" = /datum/alt_title/staff_manager,
						"Инженер по кадрам" = /datum/alt_title/facility_steward)

/datum/alt_title/cro
	title = "Директор по персоналу"

/datum/alt_title/deputy_manager
	title = "Заместитель директора"

/datum/alt_title/staff_manager
	title = "Управляющий персоналом"

/datum/alt_title/facility_steward
	title = "Инженер по кадрам"

/datum/job/hop/get_request_reasons()
	return list("Изменение ID-карты", "Обучение персонала")

/datum/job/secretary
	title = "Секретарь командования"
	faction = "Станция"
	supervisors = "Вы отвечаете перед персоналом Командования."

	job_description = "Секретарь командования занимается оформлением документов для глав отделов, что способствует снижению их нагрузки и позволяет им сфокусировать внимание на управлении своими отделами. \
						Он не является главой отдела сам и не обладает никакой реальной властью на станции."
	alt_titles = list("Офицер связи командования" = /datum/alt_title/command_liaison, "Ассистент командования" = /datum/alt_title/command_assistant, "Стажёр командования" = /datum/alt_title/command_intern,
						"Секретарь мостика" = /datum/alt_title/bridge_secretary, "Ассистент мостика" = /datum/alt_title/bridge_assistant)

/datum/alt_title/command_liaison
	title = "Офицер связи командования"

/datum/alt_title/command_assistant
	title = "Ассистент командования"

/datum/alt_title/command_intern
	title = "Стажёр командования"

/datum/alt_title/bridge_secretary
	title = "Секретарь мостика"

/datum/alt_title/bridge_assistant
	title = "Ассистент мостика"

// Civilian Roles
/datum/job/bartender
	// Axing Barkeeper and Barmaid alt titles
	title = "Бармен"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой персонала."
	job_description = "Бармен смешивает напитки для персонала. Как правило, бармену не следует перебарщивать с обслуживанием ответственных лиц, а также ему разрешено отказать в заказе непослушным посетителям."
	alt_titles = list("Бариста" = /datum/alt_title/barista, "Миксолог" = /datum/alt_title/mixologist)

/datum/alt_title/barista
	title = "Бариста"
	title_blurb = "Бариста отвечает за кафе и в основном подаёт безалкогольные напитки. Он оставляет за собой право взымать плату за обслуживание, \
					а также отказывать в заказе непослушным посетителям."

/datum/alt_title/mixologist
	title = "Миксолог"

/datum/job/chef
	title = "Шеф-повар"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой персонала."
	job_description = "Повар готовит пищу для персонала. Он оставляет за собой право взымать плату за обслуживание, а также отказывать в заказе непослушным посетителям."
	alt_titles = list("Су-шеф" = /datum/alt_title/souschef,"Повар" = /datum/alt_title/cook, "Кухонный рабочий" = /datum/alt_title/kitchen_worker)

/datum/alt_title/cook
	title = "Повар"
	title_blurb = "Повар выполняет те же обязанности, что и шеф-повар, однако обладает меньшим опытом."

/datum/alt_title/souschef
	title = "Су-шеф"

/datum/alt_title/kitchen_worker
	title = "Кухонный рабочий"
	title_blurb = "Кухонный рабочий выполняет те же обязанности, что и шеф-повар, однако обладает меньшим опытом."

/datum/job/hydro
	title = "Ботаник"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой персонала."
	job_description = "Ботаник занимается выращиванием продуктов для приготовления и напитков поваром и барменом."
	alt_titles = list("Специалист по гидропонике" = /datum/alt_title/hydroponicist, "Культиватор" = /datum/alt_title/cultivator, "Фермер" = /datum/alt_title/farmer,
						"Садовник" = /datum/alt_title/gardener, "Флорист" = /datum/alt_title/florsit)

/datum/alt_title/gardener
	title = "Садовник"
	title_blurb = "Садовник обладает меньшим опытом, чем его собратья по лаборатории, и, как правило, в свободное время берёт под свою опеку публичный сад."

/datum/alt_title/hydroponicist
	title = "Специалист по гидропонике"

/datum/alt_title/cultivator
	title = "Культиватор"

/datum/alt_title/farmer
	title = "Фермер"

/datum/alt_title/florsit
	title = "Флорист"
	title_blurb = "Флорист обладает меньшим опытом, чем его собратья по лаборатории, и, как правило, в свободное время берёт под свою опеку публичный сад."

/datum/job/janitor
	title = "Уборщик"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой персонала."
	job_description = "Уборщик поддерживает на станции чистоту и порядок, стараясь при этом избегать места преступлений, где ведётся следствие."
	alt_titles = list("Клинер" = /datum/alt_title/custodian, "Санитарный техник" = /datum/alt_title/sanitation_tech,
					"Горничная" = /datum/alt_title/maid, "Мусорщик" = /datum/alt_title/garbage_collector)

/datum/alt_title/custodian
	title = "Клинер"

/datum/alt_title/sanitation_tech
	title = "Санитарный техник"

/datum/alt_title/maid
	title = "Горничная"

/datum/alt_title/garbage_collector
	title = "Мусорщик"
	title_blurb = "Мусорщик поддерживает на станции чистоту и порядок, однако в первую очередь занимается сбором крупного мусора, нежели мытьём полов."

/datum/job/librarian
	title = "Библиотекарь"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой персонала."
	job_description = "Библиотекарь отвечает за курирование книг на полках библиотеки."
	alt_titles = list("Журналист" = /datum/alt_title/journalist, "Репортёр" =  /datum/alt_title/reporter, "Писатель" = /datum/alt_title/writer,
					"Историк" = /datum/alt_title/historian, "Архивариус" = /datum/alt_title/archivist, "Профессор" = /datum/alt_title/professor,
					"Преподаватель" = /datum/alt_title/academic, "Философ" = /datum/alt_title/philosopher, "Куратор" = /datum/alt_title/curator)

/datum/alt_title/journalist
	title = "Журналист"
	title_blurb = "Журналист использует библиотеку в качестве операционной базы, из которой он может докладывать новости для всей станции с помощью своей камеры."

/datum/alt_title/writer
	title = "Писатель"
	title_blurb = "Писатель использует библиотеку в качестве уединённого места, дабы творить шедевры в тишине и покое."

/datum/alt_title/reporter
	title = "Репортёр"
	title_blurb = "Журналист использует библиотеку в качестве операционной базы, из которой он может докладывать новости для всей станции с помощью своей камеры."

/datum/alt_title/historian
	title = "Историк"
	title_blurb = "Историк использует библиотеку в качестве операционной базы, в которой он записывает и архивирует важные события, происходящии на станции."

/datum/alt_title/archivist
	title = "Архивариус"
	title_blurb = "Архивариус использует библиотеку в качестве операционной базы, в которой он записывает и архивирует важные события, происходящии на станции."

/datum/alt_title/professor
	title = "Профессор"
	title_blurb = "Профессор использует библиотеку в качестве операционной базы, в которой он делится с персоналом своими знаниями."

/datum/alt_title/academic
	title = "Преподаватель"
	title_blurb = "Преподаватель использует библиотеку в качестве операционной базы, в которой он делится с персоналом своими знаниями."

/datum/alt_title/philosopher
	title = "Философ"
	title_blurb = "Философ использует библиотеку в качестве операционной базы, в которой он размышляет над вопросами жизни и мироздания и делится результами своих раздумий с персоналом."

/datum/alt_title/curator
	title = "Куратор"
	title_blurb = "Куратор использует библиотеку в качестве операционной базы, в которой он собирает лучшие творческие шедевры и выставляет их напоказ."

/datum/job/lawyer
	// Axing a half of these because those sound dumb in russian
	title = "Агент внутренних дел"
	faction = "Станция"
	supervisors = "Вы отвечаете перед официальными представителями Корпорации и Корпоративным Регламентом."
	job_description = "Агент внутренних дел обеспечивает соблюдение на станции Стандартных Операционных Процедур. \
						Кроме того, он принимает и обрабатывает жалобы на членов персонала и, при наличии необходимых для этого документов, \
						может перенаправить их в Центральное Командование."
	alt_titles = list(/*"Internal Affairs Liaison" = /datum/alt_title/ia_liaison, "Internal Affairs Delegate" = /datum/alt_title/ia_delegate,*/
						"Следователь внутренних дел" = /datum/alt_title/ia_investigator)

/datum/alt_title/ia_investigator
	title = "Следователь внутренних дел"

/datum/job/chaplain
	title = "Капеллан"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой персонала."

	outfit_type = /decl/hierarchy/outfit/job/chaplain
	job_description = "Капеллан отвечает духовным потребностям персонала."
	alt_titles = list("Миссионер" = /datum/alt_title/missionary, "Проповедник" = /datum/alt_title/preacher, "Священник" = /datum/alt_title/priest,
						"Монахиня" = /datum/alt_title/nun, "Монах" = /datum/alt_title/monk, "Советчик" = /datum/alt_title/counselor,
						"Гуру" = /datum/alt_title/guru)

// Chaplain Alt Titles
/datum/alt_title/counselor
	title = "Советчик"
	title_blurb = "Советник удовлетворяет эмоциональные нужды членов персонала, не заостряя при этом внимание на религии."

/datum/alt_title/guru
	title = "Гуру"
	title_blurb = "Гуру предоставляет духовное наставничество для всех, кто в нём нуждается."

/datum/alt_title/missionary
	title = "Миссионер"

/datum/alt_title/preacher
	title = "Проповедник"

/datum/alt_title/priest
	title = "Священник"

/datum/alt_title/nun
	title = "Монахиня"

/datum/alt_title/monk
	title = "Монах"

/datum/job/pilot
	title = "Пилот"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой персонала."
	job_description = "Пилот осуществляет перевозки на шаттлах в пределах системы Вирго-Эригон."
	alt_titles = list("Второй пилот" = /datum/alt_title/co_pilot, "Штурман" = /datum/alt_title/navigator, "Штурвальный" = /datum/alt_title/helmsman)

/datum/alt_title/co_pilot
	title = "Второй пилот"
	title_blurb = "Второй пилот, как правило, помогает основному пилоту и обучается у него."

/datum/alt_title/navigator
	title = "Штурман"

/datum/alt_title/helmsman
	title = "Штурвальный"

/datum/job/entertainer
	title = "Развлекатель"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой персонала."
	job_description = "Развлекатель, как ни странно, призван спасать персонал от скуки! Ставьте пьесы, играйте на инструментах, пойте песни, рассказывайте истории или читайте членам персонала свои любимые фанфики."
	alt_titles = list("Шоумен" = /datum/alt_title/performer, "Музыкант" = /datum/alt_title/musician, "Постановщик" = /datum/alt_title/stagehand,
						"Актёр" = /datum/alt_title/actor, "Танцор" = /datum/alt_title/dancer, "Певец" = /datum/alt_title/singer,
						"Фокусник" = /datum/alt_title/magician, "Комик" = /datum/alt_title/comedian, "Трагик" = /datum/alt_title/tragedian,
						"Художник" = /datum/alt_title/artist)

/datum/alt_title/actor
	title = "Актёр"
	title_blurb = "Актёр отыгрывает свою роль! Кем бы ни был Ваш персонаж, войдите свою роль и впечатлите людей своими навыками!"

/datum/alt_title/performer
	title = "Шоумен"
	title_blurb = "Шоумен устраивает шоу, чтобы развлечь персонал! Какими бы ни были Ваши замыслы, вперёд, дерзайте!"

/datum/alt_title/musician
	title = "Музыкант"
	title_blurb = "Музыкант исполняет для персонала музыку с помощью широкого арсенала музыкальных инструментов!"

/datum/alt_title/stagehand
	title = "Постановщик"
	title_blurb = "Постановщик берёт на себя то, от чего воротят нос другие развлекатели. Управляйте освещением на сцене или повествуйте о происходящем в качестве рассказчика!"

/datum/alt_title/dancer
	title = "Танцор"
	title_blurb = "Танцор впечатляет членов персонала своими движениями - будь то вальс или брейкданс, лишь бы публика ликовала!"

/datum/alt_title/singer
	title = "Певец"
	title_blurb = "Певец обладает замечательным голосом! Впечатлите людей высокими нотами!"

/datum/alt_title/magician
	title = "Фокусник"
	title_blurb = "Фокусник творит ради развлечения персонала чудеса наяву! Покажите всем свой репертуар фокусов, но не раскрывайте никому их секреты!"

/datum/alt_title/comedian
	title = "Комик"
	title_blurb = "Комик развлекает членов персонала своим юмором и остроумием! Рассказывайте анекдоты, приглашайте людей на стендапы, вызывайте у людей улыбку!"

/datum/alt_title/tragedian
	title = "Трагик"
	title_blurb = "Трагик заставляет других задуматься о жизни и мире, что их окружает! Жизнь - это трагедия, и кто же лучше донесёт её тлен, если не Вы?"

/datum/alt_title/artist
	title = "Художник"
	title_blurb = "Призвание художника - создавать чудесные произведения! Вне зависимости от выбранного холста и формы, Ваша задача - поразить людей своей креативностью."

// Cargo Roles
/datum/job/qm
	title = "Квартирмейстер"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой персонала."
	job_description = "Квартирмейстер управляет отделом снабжения, проверяет запросы на поставку и обеспечивает доставку заказов до места их надобности."
	alt_titles = list("Директор по снабжению" = /datum/alt_title/supply_chief, "Менеджер по логистике" = /datum/alt_title/logistics_manager, "Заведующий складом" = /datum/alt_title/cargo_supervisor)

/datum/alt_title/logistics_manager
	title = "Менеджер по логистике"

/datum/alt_title/cargo_supervisor
	title = "Заведующий складом"

/datum/alt_title/supply_chief
	title = "Директор по снабжению"

/datum/job/qm/get_request_reasons()
	return list("Обучение персонала")

/datum/job/cargo_tech
	title = "Грузовой техник"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Квартирмейстером и Главой персонала."
	job_description = "Грузовой техник занимается выполнением заказов на поставку и заполнением сопутствующих документов. \
						После доставки заказа техник возвращает пустые ящики в Центральное Командование для возмещения части затраченных на заказ средств."
	alt_titles = list("Грузчик" = /datum/alt_title/cargo_loader, /*"Cargo Handler" = /datum/alt_title/cargo_handler,*/ "Курьер" = /datum/alt_title/supply_courier,
						"Сортировщик отходов" = /datum/alt_title/disposal_sorter)

/datum/alt_title/supply_courier
	title = "Курьер"
	title_blurb = "Курьер обычно занимается доставкой посылок или груза туда, где это необходимо."

/datum/alt_title/cargo_loader
	title = "Грузчик"
	title_blurb = "Грузчик берёт на себя преимущественно физические нагрузки - например, тащит тяжелые ящики или разгружает шаттл."

/datum/alt_title/disposal_sorter
	title = "Сортировщик отходов"
	title_blurb = "Сортировщик отходов отвечает за работу системы сортировки, переработку мусора и маркировкой посылок на доставку."

/datum/job/mining
	title = "Шахтёр"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Квартирмейстером и Главой персонала."
	job_description = "Шахтёр добывает и обрабатывает ценные ископаемые, после чего доставляет их в отделы, которые в них нуждаются."
	alt_titles = list("Астероидный шахтёр" = /datum/alt_title/deep_space_miner, "Бурильщик" = /datum/alt_title/drill_tech, "Проходчик" = /datum/alt_title/prospector,
						"Землекоп" = /datum/alt_title/excavator)

/datum/alt_title/drill_tech
	title = "Бурильщик"
	title_blurb = "Специализация бурильщика - работа с бурами, извлекающими руду из глубинных недр планеты."

/datum/alt_title/deep_space_miner
	title = "Астероидный шахтёр"
	title_blurb = "Астероидный шахтёр в основном добывает ископаемые на поверхности астероидов в космосе."

/datum/alt_title/prospector
	title = "Проходчик"

/datum/alt_title/excavator
	title = "Землекоп"

// Department stuff
/datum/department/misc
	name = "На отгуле"

/datum/department/misc
	name = "Другое"

/datum/department/centcom
	name = "Центральное Командование"

// Engineering Roles
/datum/job/chief_engineer
	title = "Главный инженер"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Менеджером объекта."
	job_description = "Главный инженер управляет инженерным отделом и распределяет задачи между своими подчинёнными. \
						От него также ожидается своевременное информирование персонала о структурных повреждениях на территории станции и прочих угрозах для здоровья и работоспособности персонала."
	alt_titles = list("Главный механик" = /datum/alt_title/head_engineer, "Старший мастер" = /datum/alt_title/foreman, "Менеджер по техобслуживанию" = /datum/alt_title/maintenance_manager)

/datum/alt_title/head_engineer
	title = "Главный механик"

/datum/alt_title/foreman
	title = "Старший мастер"

/datum/alt_title/maintenance_manager
	title = "Менеджер по техобслуживанию"

/datum/job/chief_engineer/get_request_reasons()
	return list("Настройка двигателя", "Проект по строительству", "Ремонт станции", "Обучение персонала")

/datum/job/engineer
	title = "Инженер"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главным инженером."
	alt_titles = list("Техник по обслуживанию" = /datum/alt_title/maint_tech, "Наладчик двигателей" = /datum/alt_title/engine_tech,
						"Электрик" = /datum/alt_title/electrician, "Инженер-строитель" = /datum/alt_title/construction_engi, "Инженер-подрядчик" = /datum/alt_title/engineering_contractor)
	job_description = "Инженер производит техническое обслуживание станции. Он занимается ремонтом повреждений, наладкой атмосферных показателей и обеспечением всей станции \
						электричеством. В свободное время инженеру позволено заниматься внесением в интерьер станции декоративных изменений."

/datum/alt_title/maint_tech
	title = "Техник по обслуживанию"
	title_blurb = "Техник по обслуживанию, как правило, стоит чуть ниже инженеров и занимается преимущественно неприятными или неинтересными задачами, за которые не хотят браться они сами."

/datum/alt_title/engine_tech
	title = "Наладчик двигателей"
	title_blurb = "Наладчик двигателей занимается установкой и техобслуживанием двигателей - как правило, шара Теслы или кристалла суперматерии. \
					От наладчика ожидается поддерживание стабильных показателей при работе двигателя и, по возможности, повышение его мощности."

/datum/alt_title/electrician
	title = "Электрик"
	title_blurb = "В обязанности электрика входит обеспечение станции электричеством и распределение энергии по её территории, а также работа с солнечными панелями и подстанциями \
					для обеспечения каждого отдела энергией в случае нештатных ситуаций."

/datum/alt_title/construction_engi
	title = "Инженер-строитель"
	title_blurb = "В обязанности инженера-строителя входит всё то же самое, что и у обычного инженера, однако своё свободное время строитель проводит, как правило, \
					за созданием новых помещений или преобразованием существующих."

/datum/alt_title/engineering_contractor
	title = "Инженер-подрядчик"
	title_blurb = "Инженер-подрядчик выполняет те же обязанности, что и обычные инженеры, однако не нанят НаноТрейсен на полную ставку."

/datum/job/engineer/get_request_reasons()
	return list("Настройка двигателя", "Проект по строительству", "Ремонт станции")

/datum/job/atmos
	title = "Атмосферный техник"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главным инженером."
	job_description = "Атмосферный техник, как правило, занимается поддержанием на территории станции оптимальных показателей воздуха, которым дышит персонал. \
						От него ожидается достойное понимание работы труб, вентиляции, скрубберов и газов, циркулирующих по станции, а также порядка действий в случае возникновения пожаров."

/datum/job/atmos
	alt_titles = list("Инженер-атмосферщик" = /datum/alt_title/atmos_engi, "Вентиляционный слесарь" = /datum/alt_title/atmos_maint, "Ремонтник системы сортировки" = /datum/alt_title/disposals_tech)

/datum/alt_title/atmos_maint
	title = "Вентиляционный слесарь"

/datum/alt_title/atmos_engi
	title = "Инженер-атмосферщик"

/datum/alt_title/disposals_tech
	title = "Ремонтник системы сортировки"
	title_blurb = "Ремонтник системы сортировки выполняет те же обязанности, что и атмосферный техник, но в основном специализируется в наладке системы сортировки и доставки."

/datum/job/atmos/get_request_reasons()
	return list("Проект по строительству", "Ремонт станции")

// Exploration Roles
/obj/item/weapon/card/id/medical/sar
	assignment = "Полевой врач"
	rank = "Полевой врач"

/obj/item/weapon/card/id/explorer
	name = "Идентификационная карта"
	desc = "Карта, выдаваемая членам экспедиционного отдела."
	// Bastion of Endeavor TODO: This might cause issues later
	case_blueprint_ru = list("жен#идентификационн;adj1*a карт;n1a")

/obj/item/weapon/card/id/explorer/head
	name = "Идентификационная карта"
	desc = "Карта, символизирующая тягу к неизведанному."
	case_blueprint_ru = list("жен#идентификационн;adj1*a карт;n1a")

/datum/job/pathfinder
	title = "Первопроходец"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой персонала."
	job_description = "Работа Первопроходца заключается в проведении экспедиций вне станции, в которых на него возлагается ответственность за свою команду."
	alt_titles = list("Глава экспедиций" = /datum/alt_title/expedition_lead, "Организатор экспедиций" = /datum/alt_title/exploration_manager)

/datum/alt_title/expedition_lead
	title = "Глава экспедиций"

/datum/alt_title/exploration_manager
	title = "Организатор экспедиций"

/datum/job/pathfinder/get_request_reasons()
	return list("Обучение персонала")

/datum/job/explorer
	title = "Разведчик"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Первопроходцем и Главой персонала."
	job_description = "Разведчик занимается поиском интересных штучек, которые он после приносит на станцию. Кроме того, он принимает участие в полевых экспедициях совместно с полевым врачом и Первопроходцем."
	alt_titles = list("Искатель" = /datum/alt_title/surveyor, "Участник экспедиций" = /datum/alt_title/offsite_scout)

/datum/alt_title/surveyor
	title = "Искатель"

/datum/alt_title/offsite_scout
	title = "Участник экспедиций"

/datum/job/sar
	title = "Полевой врач"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Первопроходцем и Главным врачом."
	job_description = "Полевой врач обеспечивает сохранность членов экспедиции."
	alt_titles = list("Экспедиционный медик" = /datum/alt_title/expedition_medic, "Экспедиционный санитар" = /datum/alt_title/offsite_medic)

/datum/alt_title/expedition_medic
	title = "Экспедиционный медик"

/datum/alt_title/offsite_medic
	title = "Экспедиционный санитар"

// Medical Roles
/datum/job/cmo
	title = "Главный врач"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Менеджером объекта."
	job_description = "Главный врач отвечает за медицинский отдел и обладает всеми необходимыми навыками и знаниями; его цель - обеспечить \
						с помощью его подопечных здоровье и целостность всего персонала. В первую очередь главный врач обязан отыскивать пострадавших и направлять их \
						в медицинский отдел на лечение. От него ожидается своевременное информирование персонала об угрозах здоровью и безопасности, \
						а также о необходимости иметь на себе включённые датчики."
	alt_titles = list("Главный терапевт" = /datum/alt_title/chief_physician, "Директор медблока" = /datum/alt_title/medical_director, "Менеджер здравоохранения" = /datum/alt_title/healthcare_manager)

/datum/alt_title/chief_physician
	title = "Главный терапевт"

/datum/alt_title/medical_director
	title = "Директор медблока"

/datum/alt_title/healthcare_manager
	title = "Менеджер здравоохранения"

/datum/job/cmo/get_request_reasons()
	return list("Хирургическая операция", "Вспышка инфекции", "Обучение персонала")
/datum/job/doctor
	title = "Врач"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главным врачом."
	job_description = "Врач - специалист общего профиля, обладающий широким спектром навыков и познаний. \
						Он знаком с методами оказания первой помощи, а также составом и принципом работы многих лекарств. \
						В его обязанности входит спасение жизней и лечение пациентов."
	alt_titles = list("Терапевт" = /datum/alt_title/physician, "Медбрат" = /datum/alt_title/medical_practitioner, "Хирург" = /datum/alt_title/surgeon,
						"Врач неотложной помощи" = /datum/alt_title/emergency_physician, "Медсестра" = /datum/alt_title/nurse, "Медицинский сотрудник" = /datum/alt_title/orderly,
						"Вирусолог" = /datum/alt_title/virologist, "Врач-подрядчик" = /datum/alt_title/medical_contractor)

//Medical Doctor Alt Titles
/datum/alt_title/surgeon
	title = "Хирург"
	title_blurb = "Хирург специализируется в области хирургических операций, включая ампутации и присоединение конечностей. \
					От него ожидаются широкие познания в области анатомии, анестезии и хирургических операций."

/datum/alt_title/emergency_physician
	title = "Врач неотложной помощи"
	title_blurb = "Врач неотложной помощи обладает всеми необходимыми навыками для стабилизации пациентов в критическом состоянии и спасения их от гибели. \
					Он помогает пациенту с момента его поступления в медицинский отдел вплоть до его полного восстановления."

/datum/alt_title/nurse
	title = "Медсестра"
	title_blurb = "Медсестра оказывает первую помощь пациентам с легкими травмами и помогает стабилизировать состояние тяжело раненных в периоды высокой нагрузки на медотдел. \
					Она постоянно следит за консолью датчиков и всячески помогает врачам экономить драгоценное время. \
					В некоторых случаях медсестра может быть вызвана провести реанимацию пациента."

/datum/alt_title/virologist
	title = "Вирусолог"
	title_blurb = "Вирусолог лечит заболевания членов экипажа, а также производит антитела на случай возможных вспышек инфекции. \
					Кроме того, он обладает навыками для изготовления вирусного корма и мутагена."

/datum/alt_title/physician
	title = "Терапевт"

/datum/alt_title/medical_practitioner // i dont really know what else to put here
	title = "Медбрат"
	title_blurb = "Медбрат оказывает первую помощь пациентам с легкими травмами и помогает стабилизировать состояние тяжело раненных в периоды высокой нагрузки на медотдел. \
					Он постоянно следит за консолью датчиков и всячески помогает врачам экономить драгоценное время. \
					В некоторых случаях медбрат может быть вызван провести реанимацию пациента."

/datum/alt_title/orderly
	title = "Медицинский сотрудник"
	title_blurb = "Медицинский сотрудник оказывает общую помощь медицинскому отделу, включая ручной и порой грязный труд."

/datum/alt_title/medical_contractor
	title = "Врач-подрядчик"
	title_blurb = "Врач-подрядчик может обладать совершенно любым уровнем знаний и умений, но при этом не трудоустроен в НаноТрейсен официально."

/datum/job/doctor/get_request_reasons()
	return list("Хирургическая операция", "Вспышка инфекции")

/datum/job/chemist
	title = "Химик"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главврачом."
	job_description = "В обязанности химика входит изготовление химических веществ различной сложности для медицинского и научного отдела. \
						Химик знаком с применением этих веществ, а также опасностей, которые с ними связаны."
	alt_titles = list("Фармацевт" = /datum/alt_title/pharmacist, "Фармаколог" = /datum/alt_title/pharmacologist)

/datum/alt_title/pharmacist
	title = "Фармацевт"
	title_blurb = "Фармацевт удовлетворяет нужды медицинского отдела в лекарствах, а также занимается выдачей медикаментов по рецепту."

/datum/alt_title/pharmacologist
	title = "Фармаколог"
	title_blurb = "Фармаколог удовлетворяет нужды медицинского отдела в лекарствах и в основном занимается более продвинутыми и сложными методами их изготовления."

/datum/job/psychiatrist
	title = "Психиатр"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главным врачом."
	job_description = "Психиатр оказывает психиатрическую помощь нуждающимся членам персонала. \
					Он также может проводить диагноз психических расстройств, зачастую под присмотром службы безопасности. Кроме того, он знаком с многими психотропными лекарствами."
	alt_titles = list("Психолог" = /datum/alt_title/psychologist, "Специалист по психоанализу" = /datum/alt_title/psychoanalyst, "Психотерапевт" = /datum/alt_title/psychotherapist)

/datum/alt_title/psychologist
	title = "Психолог"
	title_blurb = "Психиатр оказывает психиатрическую помощь нуждающимся членам персонала; в первую очередь - терапию. \
					Он также может проводить диагноз психических расстройств, зачастую под присмотром службы безопасности."

// these basically double the job description but i dont really care atm, its the same on upstream so changing it is annoying
/datum/alt_title/psychoanalyst
	title = "Специалист по психоанализу"
	title_blurb = "Специалист по психоанализу оказывает психиатрическую помощь нуждающимся членам персонала; в первую очередь - терапию. \
					Он также может проводить диагноз психических расстройств, зачастую под присмотром службы безопасности."

/datum/alt_title/psychotherapist
	title = "Психотерапевт"
	title_blurb = "Психотерапевт оказывает психиатрическую помощь нуждающимся членам персонала; в первую очередь - терапию. \
					Он также может проводить диагноз психических расстройств, зачастую под присмотром службы безопасности."

/datum/job/paramedic
	title = "Парамедик"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главным врачом."
	job_description = "Парамедик отвечает за спасение пациентов, которые не в состоянии самостоятельно добраться до медицинского отдела. \
						Его также могут вызвать помогать стабилизировать состояние пациентов, когда медотдел перегружен."
	// the sar one is already a stretch as it is
	alt_titles = list("Фельдшер" = /datum/alt_title/emt, /*"Medical Responder" = /datum/alt_title/medical_responder*/, "Аварийный спасатель" = /datum/alt_title/sar)

/datum/alt_title/emt
	title = "Фельдшер"
	title_blurb = "Фельдшер отвечает за спасение пациентов, которые не в состоянии самостоятельно добраться до медицинского отдела. \
						Он умеет поддерживать стабильное состояние пациентов, пока ими не смогут заняться более опытные врачи."

/datum/alt_title/sar
	title = "Аварийный спасатель"

// Off-Duty Roles
/datum/job/offduty_civilian
	title = "Работник на отгуле"
	faction = "Станция"
	supervisors = "Вы никому ничего не обязаны! Наслаждайтесь отдыхом."
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."

/datum/job/offduty_cargo
	title = "Грузчик на отгуле"
	faction = "Станция"
	supervisors = "Вы никому ничего не обязаны! Наслаждайтесь отдыхом."
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."

/datum/job/offduty_engineering
	title = "Инженер на отгуле"
	faction = "Станция"
	supervisors = "Вы никому ничего не обязаны! Наслаждайтесь отдыхом."
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."

/datum/job/offduty_medical
	title = "Врач на отгуле"
	faction = "Станция"
	supervisors = "Вы никому ничего не обязаны! Наслаждайтесь отдыхом."
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."

/datum/job/offduty_science
	title = "Учёный на отгуле"
	faction = "Станция"
	supervisors = "Вы никому ничего не обязаны! Наслаждайтесь отдыхом."
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."

/datum/job/offduty_security
	title = "Офицер на отгуле"
	faction = "Станция"
	supervisors = "Вы никому ничего не обязаны! Наслаждайтесь отдыхом."
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."

/datum/job/offduty_exploration
	title = "Разведчик на отгуле"
	faction = "Станция"
	supervisors = "Вы никому ничего не обязаны! Наслаждайтесь отдыхом."
	job_description = "Члены экипажа на отгуле не имеют ни власти, ни обязанностей, и всего лишь отдыхают от работы на территории станции."

// Science Roles
/datum/job/rd
	title = "Директор по исследованиям"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Менеджером объекта."
	job_description = "Директор по исследованиям отвечает за работу научного отдела. От него требуется своевременно информировать персонал об угрозах, которые могут возникнуть в процессе работы научного отдела, \
						а также обеспечение безопасности всего персонала от них. Директор по исследованиям обладает знаниями о большей части научно-исследовательских процессов, \
						однако как правило распределяет задачи между своими подопечными."
	alt_titles = list("Научный руководитель" = /datum/alt_title/research_supervisor, "Менеджер научных проектов" = /datum/alt_title/research_manager,
						"Руководитель разработки" = /datum/alt_title/head_of_development, "Главный учёный" = /datum/alt_title/head_scientist)

/datum/alt_title/research_supervisor
	title = "Научный руководитель"

/datum/alt_title/research_manager
	title = "Менеджер научных проектов"

/datum/alt_title/head_of_development
	title = "Руководитель разработки"

/datum/alt_title/head_scientist
	title = "Главный учёный"

/datum/job/rd/get_request_reasons()
	return list("Ремонт и техобслуживание", "Обучение персонала")

/datum/job/scientist
	title = "Учёный"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Директором по исследованиям."
	job_description = "Учёный - сотрудник научного отдела широкого профиля, обладающий общим пониманием проведения исследований и знанием принципов НИР. \
						При наличии желания и темы, учёному разрешается проводить собственные эксперименты и опыты."
	alt_titles = list("Экспериментатор" = /datum/alt_title/researcher, "Лаборант" = /datum/alt_title/lab_assistant, "Ксеноархеолог" = /datum/alt_title/xenoarch,
						"Ксенопалеонтолог" = /datum/alt_title/xenopaleontologist, "Исследователь аномалий" = /datum/alt_title/anomalist, "Исследователь форона" = /datum/alt_title/phoron_research,
						"Исследователь газов" = /datum/alt_title/gas_physicist, "Дизайнер микросхем" = /datum/alt_title/circuit_designer, "Программист микросхем" = /datum/alt_title/circuit_programmer)

/datum/alt_title/xenoarch
	title = "Ксеноархеолог"
	title_blurb = "Ксеноархеолог занимается поиском артефактов инопланетного происхождения в местах раскопок. \
					Зачастую эти места находятся в вакууме и прочих небезопасных локациях, поэтому ксеноархеолог должен быть всегда готов дать отпор опасной среде."

/datum/alt_title/anomalist
	title = "Исследователь аномалий"
	title_blurb = "Исследователь аномалий специализируется на изучении артефактов инопланетного происхождения, и ему известны наиболее распространённые методы проведения опытов над ними. \
					Он тесно сотрудничает с ксеноархеологами и шахтёрами, если таковые имеются."

/datum/alt_title/phoron_research
	title = "Исследователь форона"
	title_blurb = "Исследователь форона - специалист в сфере практического применения форона, знакомый как с его пользой, так и вредом. \
					Многие исследователи форона заинтересованы преимущественно во взрывчатых свойствах газообразного форона и знакомы с опасностями при работе с ним."

/datum/alt_title/researcher
	title = "Экспериментатор"

/datum/alt_title/lab_assistant
	title = "Лаборант"
	title_blurb = "Лаборант находится на нижней ступени научного отдела. В его обязанности входит оказание другим учёным помощи с менее весёлой рутиной, \
					 в процессе чего он может набраться знаний в той или иной сфере."

/datum/alt_title/xenopaleontologist
	title = "Ксенопалеонтолог"
	title_blurb = "Ксенопалеонтолог посещает места раскопок в поисках ископаемых и древних следов жизни на планетах. \
					Зачастую эти места находятся в вакууме и прочих небезопасных локациях, поэтому ксенопалеонтолог должен быть всегда готов дать отпор опасной среде"

/datum/alt_title/gas_physicist
	title_blurb = "Исследователь газов - специалист в сфере практического применения газов. На данный момент он изучает преимущественно форон и знаком как с его пользой, так и вредом. \
					Многие исследователи газов заинтересованы преимущественно во взрывчатых свойствах газообразного форона и знакомы с опасностями при работе с ним."

/datum/alt_title/circuit_designer
	title = "Дизайнер микросхем"
	title_blurb = "Дизайнер микросхем - это учёный, специализирующийся в сфере интегральных схем, обладающий знаниями о принципах их работы и навыками для их программирования. \
				   Его работа заключается в использовании их для создания различных полезных механизмов."

/datum/alt_title/circuit_programmer
	title = "Программист микросхем"
	title_blurb = "Программист микросхем - это учёный, специализирующийся в сфере интегральных схем, обладающий знаниями о принципах их работы и навыками для их программирования. \
				   Его работа заключается в использовании их для создания различных полезных механизмов."

/datum/job/xenobiologist
	title = "Ксенобиолог"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Директором по исследованиям."
	job_description = "Ксенобиолог изучает инопланетные формы жизни, обычно в пределах своей относительно безопасной лаборатории. \
						Он исследует методы практического применения продуктов их жизнедеятельности, и на данный момент их объектами исследования являются слизни."
	alt_titles = list("Ксенозоолог" = /datum/alt_title/xenozoologist, "Ксеноантрополог" = /datum/alt_title/xenoanthropologist)

/datum/alt_title/xenozoologist
	title = "Ксенозоолог"

/datum/alt_title/xenoanthropologist
	title = "Ксеноантрополог"
	title_blurb = "Ксеноантрополог изучает инопланетные формы жизни, однако в первую очередь направляет свои усилия на исследование разумных форм жизни, а не простых зверей."

/datum/job/roboticist
	title = "Робототехник"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Директором по исследованиям."
	job_description = "Робототехник занимается обслуживанием и ремонтом синтетических форм жизни на станции, а также протезов членов персонала. \
						Более того, они могут помочь станции, создавая как простых роботов, так и пилотируемые экзокостюмы."
	alt_titles = list("Техник-конструктор" = /datum/alt_title/assembly_tech, "Инженер-биомеханик" = /datum/alt_title/biomech, "Инженер-мехатроник" = /datum/alt_title/mech_tech)

/datum/alt_title/assembly_tech
	title = "Техник-конструктор"

/datum/job/roboticist/get_request_reasons()
	return list("Ремонт и техобслуживание")

/datum/alt_title/biomech
	title = "Инженер-биомеханик"
	title_blurb = "Инженер-биомеханик занимается, как правило, протезами, а также органическими частями тела, сращиваемых с ними. \
					У него есть примерное представление о простейших хирургических операциях, связанных с присоединением протезов и созданием киборгов."

/datum/alt_title/mech_tech
	title = "Инженер-мехатроник"
	title_blurb = "Инженер-мехатроник специализируется на строительстве экзокостюмов и управлении ими. \
					При необходимости он может также обслуживать протезы членов персонала и заниматься ремонтом синтов."

/datum/job/xenobotanist
	title = "Ксеноботаник"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Директором по исследованиям."
	job_description = "Ксеноботаник занимается выращиванием и уходом за необыкновенными и зачастую вручную культивированными растениями. \
					Нередко работа с этими растениями бывает опасной, но может принести полезные и безопасные плоды."
	alt_titles = list("Ксенокультиватор" = /datum/alt_title/xenohydroponicist, "Ксенофлорист" = /datum/alt_title/xenoflorist)

/datum/alt_title/xenoflorist
	title = "Ксенофлорист"

/datum/alt_title/xenohydroponicist
	title = "Ксенокультиватор"

// Security Roles
/datum/job/hos
	title = "Глава службы безопасности"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Менеджером объекта."
	job_description = "Глава службы безопасности отвечает за службу безопасности и обеспечивает на станции порядок и соблюдение правил. \
						От него ожидается своевременное информирование других Глав отделов, как и всего остального персонала, об угрозах на территории станции. \
						При необходимости Глава службы безопасности также может выполнять обязанности недостающего персонала СБ - например, выдачу снаряжения из Арсенала."
	alt_titles = list("Командир службы безопасности" = /datum/alt_title/sec_commander, "Начальник службы безопасности" = /datum/alt_title/sec_chief, "Начальник охраны" = /datum/alt_title/security_manager)

/datum/alt_title/sec_commander
	title = "Командир службы безопасности"

/datum/alt_title/sec_chief
	title = "Начальник службы безопасности"

/datum/alt_title/security_manager
	title = "Начальник охраны"

/datum/job/hos/get_request_reasons()
	return list("Борьба с фауной", "Судебно-медицинская экспертиза", "Обучение персонала")

/datum/job/warden
	title = "Надзиратель брига"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой службы безопасности."
	job_description = "Надзиратель отвечает непосредственно за блок службы безопасности на станции и поддерживает порядок в Бриге и Арсенале. \
						Он наблюдает за заключёнными, отправленными в бриг, и отвечает за их безопасность и здоровье. \
						В случае чрезвычайного положения надзиратель распоряжается выдачей снаряжения из Арсенала и отвечает за его сбор, как только кризис минует. \
						При необходимости в случае экстренных ситуаций надзирателю разрешено управлять всем персоналом службы безопасности."
	alt_titles = list("Охранник брига" = /datum/alt_title/brig_sentry, "Заведующий арсеналом" = /datum/alt_title/armory_superintendent)

/datum/alt_title/brig_sentry
	title = "Охранник брига"

/datum/alt_title/armory_superintendent
	title = "Заведующий арсеналом"

/datum/job/warden/get_request_reasons()
	return list("Борьба с фауной")

/datum/job/detective
	title = "Детектив"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой службы безопасности."
	job_description = "Детектив помогает службе безопасности идентифицировать преступников с помощью допросов и судебно-медицинской экспертизы. \
						Если о преступлении стало известно слишком поздно, и выживших не осталось, детектив старается собрать цепочку событий на основе оставшихся улик."
	alt_titles = list("Следователь" = /datum/alt_title/investigator, "Криминалист" = /datum/alt_title/security_inspector, "Судмедэксперт" = /datum/alt_title/forensic_tech)

/datum/alt_title/investigator
	title = "Следователь"

/datum/alt_title/security_inspector
	title = "Криминалист"

/datum/alt_title/forensic_tech
	title = "Судмедэксперт"
	title_blurb = "Судмедэксперт в основном занимается изучением улик в лаборатории, но точно так же помогает службе безопасности раскрывать преступления."

/datum/job/detective/get_request_reasons()
	return list("Судебно-медицинская экспертиза")

/datum/job/officer
	title = "Офицер службы безопасности"
	faction = "Станция"
	supervisors = "Вы отвечаете перед Главой службы безопасности."
	job_description = "Офицер службы безопасности отвечает за безопасность персонала и порядок на территории станции. В его обязанности входит как защита станции от внешних угроз, \
						так и арест преступников. Офицер ответственен за безопасность и здоровье каждого арестованного, а также обязуется обеспечивать своевременное оформление всех сопутствующих документов. \
						Никто не превыше закона, даже служба безопасности и Командование."
	alt_titles = list("Патрульный" = /datum/alt_title/patrol_officer, "Охранник" = /datum/alt_title/security_guard,
						"Помощник офицера" = /datum/alt_title/security_deputy, "Младший офицер" = /datum/alt_title/junior_officer, "Подрядчик службы безопасности" = /datum/alt_title/security_contractor)

/datum/alt_title/junior_officer
	title = "Младший офицер"
	title_blurb = "Младший офицер, вероятно, уже прошёл обучение, но не обладает достаточным опытом, чтобы считаться полноценным офицером. \
					Младший офицер нередко работает в паре с более опытным коллегой, или же выполняет наименее интересные задачи персонала службы безопасности \
					- например, патрулирование или наблюдение на отведённом ему посте."

/datum/alt_title/patrol_officer
	title = "Патрульный"

/datum/alt_title/security_guard
	title = "Охранник"

/datum/alt_title/security_deputy
	title = "Помощник офицера"

/datum/alt_title/security_contractor
	title = "Подрядчик службы безопасности"

/datum/job/officer/get_request_reasons()
	return list("Борьба с фауной")

// Silicon Roles
/datum/job/ai
	title = "ИИ"
	faction = "Станция"
	supervisors = "Вы подчиняетесь своим Законам."
	job_description = "ИИ призван осуществлять надзор за работой станции и персонала, но не имеет над ними никакой реальной власти. \
						ИИ обязан подчиняться своим Законам; при этом ИИ способен отдавать приказы другим роботам, в свою очередь подчиняющимся собственным Законам."
/datum/job/cyborg
	title = "Киборг"
	faction = "Станция"
	supervisors = "Вы подчиняетесь своим Законам и ИИ."
	job_description = "Киборг - подвижный синтетик, выполняющий обязанности на станции и управляемый кибернетизированным разумом. \
						Киборг считается самодостаточной личностью, однако несмотря на это обязан следовать своим Законам."
	alt_titles = list("Робот" = /datum/alt_title/robot, "Дрон" = /datum/alt_title/drone)

/datum/alt_title/robot
	title = "Робот"
	title_blurb = "Робот - подвижный синтетик, выполняющий обязанности на станции и управляемый такой продвинутой технологией, как позитронный мозг. \
					Робот считается самодостаточной личностью, однако несмотря на это обязан следовать своим Законам."

/datum/alt_title/drone
	title = "Дрон"
	title_blurb = "Дрон - подвижный синтетик, выполняющий обязанности на станции и управляемый примитивным искусственным интеллектом. \
					Он не считается самодостаточной личностью, а скорее является собственностью станции. От него ожидается повиновение своим Законам."

// Special Roles
/datum/job/centcom_officer
	title = "Офицер Центрального Командования"
	departments = list("Центральное Командование")
	faction = "Станция"
	supervisors = "Вы подчиняетесь официальным представителям Корпорации и Корпоративному Регламенту."
	job_description = "Офицер Центрального Командования здесь по особо важным и официальным делам. Чаще всего. В любом случае, он здесь - ВИП-персона."

/datum/job/emergency_responder
	title = "Ответчик быстрого реагирования"
	departments = list("Центральное Командование")
	faction = "Станция"
	supervisors = "Вы подчиняетесь официальным представителям Корпорации и Корпоративному Регламенту."
	job_description = "Ответчики быстрого реагирования обычно вызываются на станцию для оказания помощи станции в чрезвычайных ситуациях."

/datum/job/clown
	title = "Клоун"
	faction = "Станция"
	supervisors = "Вы отвечаете перед святым духом юмора."
	job_description = "Клоун развлекает персонал и поддерживает настрой работников с помощью безобидных шуток и розыгрышей!"
	alt_titles = list("Шут" = /datum/alt_title/jester, "Приколист" = /datum/alt_title/fool)

/datum/alt_title/jester
	title = "Шут"

/datum/alt_title/fool
	title = "Приколист"

/datum/job/mime
	title = "Мим"
	faction = "Станция"
	supervisors = "Вы отвечаете перед святым духом пантомимы."
	job_description = "Клоун развлекает персонал и поддерживает настрой работников с помощью пантомимы и актёрской игры!"
	alt_titles = list("Шарадист" = /datum/alt_title/poseur)

/datum/alt_title/poseur
	title = "Шарадист"