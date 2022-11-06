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
	title = "Quartermaster"
	faction = "Station"
	supervisors = "the Head of Personnel"
	job_description = "The Quartermaster manages the Supply department, checking cargo orders and ensuring supplies get to where they are needed."
	alt_titles = list("Supply Chief" = /datum/alt_title/supply_chief, "Logistics Manager" = /datum/alt_title/logistics_manager, "Cargo Supervisor" = /datum/alt_title/cargo_supervisor)

/datum/alt_title/logistics_manager
	title = "Logistics Manager"

/datum/alt_title/cargo_supervisor
	title = "Cargo Supervisor"

/datum/alt_title/supply_chief
	title = "Supply Chief"

/datum/job/qm/get_request_reasons()
	return list("Training crew")

/datum/job/cargo_tech
	title = "Cargo Technician"
	faction = "Station"
	supervisors = "the Quartermaster and the Head of Personnel"
	job_description = "A Cargo Technician fills and delivers cargo orders. They are encouraged to return delivered crates to the Cargo Shuttle, \
						because Central Command gives a partial refund."
	alt_titles = list("Cargo Loader" = /datum/alt_title/cargo_loader, "Cargo Handler" = /datum/alt_title/cargo_handler, "Supply Courier" = /datum/alt_title/supply_courier,
						"Disposals Sorter" = /datum/alt_title/disposal_sorter)

/datum/alt_title/supply_courier
	title = "Supply Courier"
	title_blurb = "A Supply Courier is usually tasked with devlivering packages or cargo directly to whoever requires it."

/datum/alt_title/cargo_loader
	title = "Cargo Loader"
	title_blurb = "A Cargo Loader is usually tasked with more menial labor within Supply department, such as loading and unloading supply shuttle."

/datum/alt_title/cargo_handler
	title = "Cargo Handler"
	title_blurb = "A Cargo Loader is usually tasked with more menial labor within Supply department, such as loading and unloading supply shuttle."

/datum/alt_title/disposal_sorter
	title = "Disposals Sorter"
	title_blurb = "A Disposals Sorter is usually tasked with operating disposals delivery system, sorting the trash and tagging parcels for delivery."

/datum/job/mining
	title = "Shaft Miner"
	faction = "Station"
	supervisors = "the Quartermaster and the Head of Personnel"
	job_description = "A Shaft Miner mines and processes minerals to be delivered to departments that need them."
	alt_titles = list("Deep Space Miner" = /datum/alt_title/deep_space_miner, "Drill Technician" = /datum/alt_title/drill_tech, "Prospector" = /datum/alt_title/prospector,
						"Excavator" = /datum/alt_title/excavator)

/datum/alt_title/drill_tech
	title = "Drill Technician"
	title_blurb = "A Drill Technician specializes in operating and maintaining the machinery needed to extract ore from veins deep below the surface."

/datum/alt_title/deep_space_miner
	title = "Deep Space Miner"
	title_blurb = "A Deep Space Miner specializes primarily in mining operations in zero-g environments, mostly in asteroid and debris fields."

/datum/alt_title/prospector
	title = "Prospector"

/datum/alt_title/excavator
	title = "Excavator"