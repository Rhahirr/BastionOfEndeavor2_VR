var/global/datum/controller/occupations/job_master

#define GET_RANDOM_JOB 0
#define BE_ASSISTANT 1
#define RETURN_TO_LOBBY 2

/datum/controller/occupations
		//List of all jobs
	var/list/occupations = list()
		//Players who need jobs
	var/list/unassigned = list()
		//Debug info
	var/list/job_debug = list()
		//Cache of icons for job info window
	var/list/job_icons = list()

/* Bastion of Endeavor Translation
/datum/controller/occupations/proc/SetupOccupations(var/faction = "Station")
*/
/datum/controller/occupations/proc/SetupOccupations(var/faction = "Станция")
// End of Bastion of Endeavor Translation
	occupations = list()
	//var/list/all_jobs = typesof(/datum/job)
	var/list/all_jobs = list(/datum/job/assistant) | using_map.allowed_jobs
	if(!all_jobs.len)
		/* Bastion of Endeavor Translation
		to_world("<span class='warning'>Error setting up jobs, no job datums found!</span>")
		*/
		to_world("<span class='warning'>Ошибка при инициализации работ: не найдены датумы работ!</span>")
		// End of Bastion of Endeavor Translation
		return 0
	for(var/J in all_jobs)
		var/datum/job/job = new J()
		if(!job)	continue
		if(job.faction != faction)	continue
		occupations += job
	sortTim(occupations, /proc/cmp_job_datums)


	return 1


/datum/controller/occupations/proc/Debug(var/text)
	if(!Debug2)	return 0
	job_debug.Add(text)
	return 1


/datum/controller/occupations/proc/GetJob(var/rank)
	if(!rank)	return null
	for(var/datum/job/J in occupations)
		if(!J)	continue
		if(J.title == rank)	return J
	return null

/datum/controller/occupations/proc/GetPlayerAltTitle(mob/new_player/player, rank)
	return player.client.prefs.GetPlayerAltTitle(GetJob(rank))

/datum/controller/occupations/proc/AssignRole(var/mob/new_player/player, var/rank, var/latejoin = 0)
	/* Bastion of Endeavor Translation
	Debug("Running AR, Player: [player], Rank: [rank], LJ: [latejoin]")
	*/
	Debug("Выполняем AR, игрок: [player], должность: [rank], лейт: [latejoin]")
	// End of Bastion of Endeavor Translation
	if(player && player.mind && rank)
		var/datum/job/job = GetJob(rank)
		if(!job)
			return 0
		if((job.minimum_character_age || job.min_age_by_species) && (player.client.prefs.age < job.get_min_age(player.client.prefs.species, player.client.prefs.organ_data["brain"])))
			return 0
		if(jobban_isbanned(player, rank))
			return 0
		if(!job.player_old_enough(player.client))
			return 0
		//VOREStation Add
		if(!job.player_has_enough_playtime(player.client))
			return 0
		if(!is_job_whitelisted(player, rank))
			return 0
		//VOREStation Add End

		var/position_limit = job.total_positions
		if(!latejoin)
			position_limit = job.spawn_positions
		if((job.current_positions < position_limit) || position_limit == -1)
			/* Bastion of Endeavor Translation
			Debug("Player: [player] is now Rank: [rank], JCP:[job.current_positions], JPL:[position_limit]")
			*/
			Debug("Игрок [player] теперь имеет должность: [rank], осталось [job.current_positions] из [position_limit]")
			// End of Bastion of Endeavor Translation
			player.mind.assigned_role = rank
			player.mind.role_alt_title = GetPlayerAltTitle(player, rank)
			unassigned -= player
			job.current_positions++
			return 1
	/* Bastion of Endeavor Translation
	Debug("AR has failed, Player: [player], Rank: [rank]")
	*/
	Debug("AR не удался, игрок: [player], должность: [rank]")
	// End of Bastion of Endeavor Translation
	return 0

/datum/controller/occupations/proc/FreeRole(var/rank)	//making additional slot on the fly
	var/datum/job/job = GetJob(rank)
	if(job && job.total_positions != -1)
		job.total_positions++
		return 1
	return 0

/datum/controller/occupations/proc/FindOccupationCandidates(datum/job/job, level, flag)
	/* Bastion of Endeavor Translation
	Debug("Running FOC, Job: [job], Level: [level], Flag: [flag]")
	*/
	Debug("Выполняем FOC, должность: [job], уровень: [level], флаг: [flag]")
	// End of Bastion of Endeavor Translation
	var/list/candidates = list()
	for(var/mob/new_player/player in unassigned)
		if(jobban_isbanned(player, job.title))
			/* Bastion of Endeavor Translation
			Debug("FOC isbanned failed, Player: [player]")
			*/
			Debug("FOC: не пройден isbanned, игрок: [player]")
			// End of Bastion of Endeavor Translation
			continue
		if(!job.player_old_enough(player.client))
			/* Bastion of Endeavor Translation
			Debug("FOC player not old enough, Player: [player]")
			*/
			Debug("FOC: низкий возраст аккаунта, игрок: [player]")
			// End of Bastion of Endeavor Translation
			continue
		if(job.minimum_character_age && (player.client.prefs.age < job.get_min_age(player.client.prefs.species, player.client.prefs.organ_data["brain"])))
			/* Bastion of Endeavor Translation
			Debug("FOC character not old enough, Player: [player]")
			*/
			Debug("FOC: персонаж младше мин. возраста, игрок: [player]")
			// End of Bastion of Endeavor Translation
			continue
		//VOREStation Code Start
		if(!job.player_has_enough_playtime(player.client))
			/* Bastion of Endeavor Translation
			Debug("FOC character not enough playtime, Player: [player]")
			*/
			Debug("FOC: недостаточно наигранных часов, игрок: [player]")
			// End of Bastion of Endeavor Translation
			continue
		if(!is_job_whitelisted(player, job.title))
			/* Bastion of Endeavor Translation
			Debug("FOC is_job_whitelisted failed, Player: [player]")
			*/
			Debug("FOC: не пройден is_job_whitelisted, игрок: [player]")
			// End of Bastion of Endeavor Translation
			continue
		//VOREStation Code End
		if(job.is_species_banned(player.client.prefs.species, player.client.prefs.organ_data["brain"]) == TRUE)
			/* Bastion of Endeavor Translation
			Debug("FOC character species invalid for job, Player: [player]")
			*/
			Debug("FOC: недопустимая для работы раса, игрок: [player]")
			// End of Bastion of Endeavor Translation
			continue
		if(flag && !(player.client.prefs.be_special & flag))
			/* Bastion of Endeavor Translation
			Debug("FOC flag failed, Player: [player], Flag: [flag], ")
			*/
			Debug("FOC: не пройдена проверка флага, игрок: [player], флаг: [flag], ")
			// End of Bastion of Endeavor Translation
			continue
		if(player.client.prefs.GetJobDepartment(job, level) & job.flag)
			/* Bastion of Endeavor Translation
			Debug("FOC pass, Player: [player], Level:[level]")
			*/
			Debug("FOC пройден, игрок: [player], уровень [level]")
			// End of Bastion of Endeavor Translation
			candidates += player
	return candidates

/datum/controller/occupations/proc/GiveRandomJob(var/mob/new_player/player)
	/* Bastion of Endeavor Translation
	Debug("GRJ Giving random job, Player: [player]")
	*/
	Debug("GRJ: Выдаем случайную работу, игрок: [player]")
	// End of Bastion of Endeavor Translation
	for(var/datum/job/job in shuffle(occupations))
		if(!job)
			continue

		if((job.minimum_character_age || job.min_age_by_species) && (player.client.prefs.age < job.get_min_age(player.client.prefs.species, player.client.prefs.organ_data["brain"])))
			continue

		if(job.is_species_banned(player.client.prefs.species, player.client.prefs.organ_data["brain"]) == TRUE)
			continue

		if(istype(job, GetJob(USELESS_JOB))) // We don't want to give him assistant, that's boring! //VOREStation Edit - Visitor not Assistant
			continue

		if(SSjob.is_job_in_department(job.title, DEPARTMENT_COMMAND)) //If you want a command position, select it!
			continue

		if(jobban_isbanned(player, job.title))
			/* Bastion of Endeavor Translation
			Debug("GRJ isbanned failed, Player: [player], Job: [job.title]")
			*/
			Debug("GRJ: не пройден isbanned, игрок: [player], работа: [job.title]")
			// End of Bastion of Endeavor Translation
			continue

		if(!job.player_old_enough(player.client))
			/* Bastion of Endeavor Translation
			Debug("GRJ player not old enough, Player: [player]")
			*/
			Debug("GRJ: низкий возраст аккаунта, игрок: [player]")
			// End of Bastion of Endeavor Translation
			continue

		//VOREStation Code Start
		if(!job.player_has_enough_playtime(player.client))
			/* Bastion of Endeavor Translation
			Debug("GRJ player not enough playtime, Player: [player]")
			*/
			Debug("GRJ: недостаточно наигранных часов, игрок: [player]")
			// End of Bastion of Endeavor Translation
			continue
		if(!is_job_whitelisted(player, job.title))
			/* Bastion of Endeavor Translation
			Debug("GRJ player not whitelisted for this job, Player: [player], Job: [job.title]")
			*/
			Debug("GRJ: игрок не в вайтлисте работы, игрок: [player], работа: [job.title]")
			// End of Bastion of Endeavor Translation
			continue
		//VOREStation Code End

		if((job.current_positions < job.spawn_positions) || job.spawn_positions == -1)
			/* Bastion of Endeavor Translation
			Debug("GRJ Random job given, Player: [player], Job: [job]")
			*/
			Debug("GRJ: выдана случайная работа, игрок: [player], работа: [job]")
			// End of Bastion of Endeavor Translation
			AssignRole(player, job.title)
			unassigned -= player
			break

/datum/controller/occupations/proc/ResetOccupations()
	for(var/mob/new_player/player in player_list)
		if((player) && (player.mind))
			player.mind.assigned_role = null
			player.mind.special_role = null
	SetupOccupations()
	unassigned = list()
	return


///This proc is called before the level loop of DivideOccupations() and will try to select a head, ignoring ALL non-head preferences for every level until it locates a head or runs out of levels to check
/datum/controller/occupations/proc/FillHeadPosition()
	for(var/level = 1 to 3)
		for(var/command_position in SSjob.get_job_titles_in_department(DEPARTMENT_COMMAND))
			var/datum/job/job = GetJob(command_position)
			if(!job)	continue
			var/list/candidates = FindOccupationCandidates(job, level)
			if(!candidates.len)	continue

			// Build a weighted list, weight by age.
			var/list/weightedCandidates = list()
			for(var/mob/V in candidates)
				// Log-out during round-start? What a bad boy, no head position for you!
				if(!V.client) continue
				var/age = V.client.prefs.age

				if(age < job.get_min_age(V.client.prefs.species, V.client.prefs.organ_data["brain"])) // Nope.
					continue

				var/idealage = job.get_ideal_age(V.client.prefs.species, V.client.prefs.organ_data["brain"])
				var/agediff = abs(idealage - age) // Compute the absolute difference in age from target
				switch(agediff) /// If the math sucks, it's because I almost failed algebra in high school.
					if(20 to INFINITY)
						weightedCandidates[V] = 3 // Too far off
					if(10 to 20)
						weightedCandidates[V] = 6 // Nearer the mark, but not quite
					if(0 to 10)
						weightedCandidates[V] = 10 // On the mark
					else
						// If there's ABSOLUTELY NOBODY ELSE
						if(candidates.len == 1) weightedCandidates[V] = 1


			var/mob/new_player/candidate = pickweight(weightedCandidates)
			if(AssignRole(candidate, command_position))
				return 1
	return 0


///This proc is called at the start of the level loop of DivideOccupations() and will cause head jobs to be checked before any other jobs of the same level
/datum/controller/occupations/proc/CheckHeadPositions(var/level)
	for(var/command_position in SSjob.get_job_titles_in_department(DEPARTMENT_COMMAND))
		var/datum/job/job = GetJob(command_position)
		if(!job)	continue
		var/list/candidates = FindOccupationCandidates(job, level)
		if(!candidates.len)	continue
		var/mob/new_player/candidate = pick(candidates)
		AssignRole(candidate, command_position)
	return


/** Proc DivideOccupations
 *  fills var "assigned_role" for all ready players.
 *  This proc must not have any side effect besides of modifying "assigned_role".
 **/
/datum/controller/occupations/proc/DivideOccupations()
	//Setup new player list and get the jobs list
	/* Bastion of Endeavor Translation
	Debug("Running DO")
	*/
	Debug("Выполняем DivideOccupations")
	// End of Bastion of Endeavor Translation
	SetupOccupations()

	//Holder for Triumvirate is stored in the ticker, this just processes it
	if(ticker && ticker.triai)
		for(var/datum/job/A in occupations)
			/* Bastion of Endeavor Translation
			if(A.title == "AI")
			*/
			if(A.title == "ИИ")
			// End of Bastion of Endeavor Translation
				A.spawn_positions = 3
				break

	//Get the players who are ready
	for(var/mob/new_player/player in player_list)
		if(player.ready && player.mind && !player.mind.assigned_role)
			unassigned += player

	/* Bastion of Endeavor Translation
	Debug("DO, Len: [unassigned.len]")
	*/
	Debug("Всего на DivideOccupations: [unassigned.len]")
	// End of Bastion of Endeavor Translation
	if(unassigned.len == 0)	return 0

	//Shuffle players and jobs
	unassigned = shuffle(unassigned)

	HandleFeedbackGathering()

	//People who wants to be assistants, sure, go on.
	/* Bastion of Endeavor Translation
	Debug("DO, Running Assistant Check 1")
	*/
	Debug("DivideOccupations: проверка ассистентов")
	// End of Bastion of Endeavor Translation
	var/datum/job/assist = new DEFAULT_JOB_TYPE ()
	var/list/assistant_candidates = FindOccupationCandidates(assist, 3)
	/* Bastion of Endeavor Translation
	Debug("AC1, Candidates: [assistant_candidates.len]")
	*/
	Debug("Проверка ассистентов 1, кандидатов: [assistant_candidates.len]")
	// End of Bastion of Endeavor Translation
	for(var/mob/new_player/player in assistant_candidates)
		/* Bastion of Endeavor Translation
		Debug("AC1 pass, Player: [player]")
		*/
		Debug("Проверка ассистентов 1 пройдена, игрок: [player]")
		// End of Bastion of Endeavor Translation
		AssignRole(player, USELESS_JOB) //VOREStation Edit - Visitor not Assistant
		assistant_candidates -= player
	/* Bastion of Endeavor Translation
	Debug("DO, AC1 end")
	*/
	Debug("DivideOccupations: проверка ассистентов 1 завершена")
	// End of Bastion of Endeavor Translation

	//Select one head
	/* Bastion of Endeavor Translation
	Debug("DO, Running Head Check")
	*/
	Debug("DivideOccupations: проверка глав")
	// End of Bastion of Endeavor Translation
	FillHeadPosition()
	/* Bastion of Endeavor Translation
	Debug("DO, Head Check end")
	*/
	Debug("DivideOccupations: проверка глав завершена")
	// End of Bastion of Endeavor Translation

	//Other jobs are now checked
	/* Bastion of Endeavor Translation
	Debug("DO, Running Standard Check")
	*/
	Debug("DivideOccupations: стандартная проверка")
	// End of Bastion of Endeavor Translation


	// New job giving system by Donkie
	// This will cause lots of more loops, but since it's only done once it shouldn't really matter much at all.
	// Hopefully this will add more randomness and fairness to job giving.

	// Loop through all levels from high to low
	var/list/shuffledoccupations = shuffle(occupations)
	// var/list/disabled_jobs = ticker.mode.disabled_jobs  // So we can use .Find down below without a colon.
	for(var/level = 1 to 3)
		//Check the head jobs first each level
		CheckHeadPositions(level)

		// Loop through all unassigned players
		for(var/mob/new_player/player in unassigned)

			// Loop through all jobs
			for(var/datum/job/job in shuffledoccupations) // SHUFFLE ME BABY
				if(!job || ticker.mode.disabled_jobs.Find(job.title) )
					continue

				if(jobban_isbanned(player, job.title))
					/* Bastion of Endeavor Translation
					Debug("DO isbanned failed, Player: [player], Job:[job.title]")
					*/
					Debug("DivideOccupations: не пройден isbanned, игрок: [player], работа: [job.title]")
					// End of Bastion of Endeavor Translation
					continue

				if(!job.player_old_enough(player.client))
					/* Bastion of Endeavor Translation
					Debug("DO player not old enough, Player: [player], Job:[job.title]")
					*/
					Debug("DivideOccupations: низкий возраст аккаунта, игрок: [player], работа: [job.title]")
					// End of Bastion of Endeavor Translation
					continue

				//VOREStation Add
				if(!job.player_has_enough_playtime(player.client))
					/* Bastion of Endeavor Translation
					Debug("DO player not enough playtime, Player: [player]")
					*/
					Debug("DivideOccupations: недостаточно наигранных часов, игрок: [player]")
					// End of Bastion of Endeavor Translation
					continue
				//VOREStation Add End

				// If the player wants that job on this level, then try give it to him.
				if(player.client.prefs.GetJobDepartment(job, level) & job.flag)

					// If the job isn't filled
					if((job.current_positions < job.spawn_positions) || job.spawn_positions == -1)
						/* Bastion of Endeavor Translation
						Debug("DO pass, Player: [player], Level:[level], Job:[job.title]")
						*/
						Debug("DivideOccupations пройден, игрок: [player], уровень: [level], работа: [job.title]")
						// End of Bastion of Endeavor Translation
						AssignRole(player, job.title)
						unassigned -= player
						break

	// Hand out random jobs to the people who didn't get any in the last check
	// Also makes sure that they got their preference correct
	for(var/mob/new_player/player in unassigned)
		if(player.client.prefs.alternate_option == GET_RANDOM_JOB)
			GiveRandomJob(player)
	/*
	Old job system
	for(var/level = 1 to 3)
		for(var/datum/job/job in occupations)
			Debug("Checking job: [job]")
			if(!job)
				continue
			if(!unassigned.len)
				break
			if((job.current_positions >= job.spawn_positions) && job.spawn_positions != -1)
				continue
			var/list/candidates = FindOccupationCandidates(job, level)
			while(candidates.len && ((job.current_positions < job.spawn_positions) || job.spawn_positions == -1))
				var/mob/new_player/candidate = pick(candidates)
				Debug("Selcted: [candidate], for: [job.title]")
				AssignRole(candidate, job.title)
				candidates -= candidate*/

	/* Bastion of Endeavor Translation
	Debug("DO, Standard Check end")
	*/
	Debug("DivideOccupation: стандартная проверка завершена")
	// End of Bastion of Endeavor Translation

	/* Bastion of Endeavor Translation
	Debug("DO, Running AC2")
	*/
	Debug("DivideOccupations: проверка ассистентов 2")
	// End of Bastion of Endeavor Translation

	// For those who wanted to be assistant if their preferences were filled, here you go.
	for(var/mob/new_player/player in unassigned)
		if(player.client.prefs.alternate_option == BE_ASSISTANT)
			/* Bastion of Endeavor Translation
			Debug("AC2 Assistant located, Player: [player]")
			*/
			Debug("Проверка ассистентов 2, найден ассистент, игрок: [player]")
			// End of Bastion of Endeavor Translation
			AssignRole(player, USELESS_JOB) //VOREStation Edit - Visitor not Assistant

	//For ones returning to lobby
	for(var/mob/new_player/player in unassigned)
		if(player.client.prefs.alternate_option == RETURN_TO_LOBBY)
			player.ready = 0
			player.new_player_panel_proc()
			unassigned -= player
	return 1


/datum/controller/occupations/proc/EquipRank(var/mob/living/carbon/human/H, var/rank, var/joined_late = 0)
	if(!H)	return null

	var/datum/job/job = GetJob(rank)
	var/list/spawn_in_storage = list()

	if(!joined_late)
		var/obj/S = null
		var/list/possible_spawns = list()
		for(var/obj/effect/landmark/start/sloc in landmarks_list)
			if(sloc.name != rank)	continue
			if(locate(/mob/living) in sloc.loc)	continue
			possible_spawns.Add(sloc)
		if(possible_spawns.len)
			S = pick(possible_spawns)
		if(!S)
			S = locate("start*[rank]") // use old stype
		if(istype(S, /obj/effect/landmark/start) && istype(S.loc, /turf))
			H.forceMove(S.loc)
		else
			var/list/spawn_props = LateSpawn(H.client, rank)
			var/turf/T = spawn_props["turf"]
			if(!T)
				/* Bastion of Endeavor Translation
				to_chat(H, "<span class='critical'>You were unable to be spawned at your chosen late-join spawnpoint. Please verify your job/spawn point combination makes sense, and try another one.</span>")
				*/
				to_chat(H, "<span class='critical'>Не удалось заспавнить Вас в выбранной точке позднего спавна. Убедитесь в соответствии работы и точки спавна или попробуйте другие.</span>")
				// End of Bastion of Endeavor Translation
				return
			else
				H.forceMove(T)

		// Moving wheelchair if they have one
		if(H.buckled && istype(H.buckled, /obj/structure/bed/chair/wheelchair))
			H.buckled.forceMove(H.loc)
			H.buckled.set_dir(H.dir)

	if(job)

		//Equip custom gear loadout.
		var/list/custom_equip_slots = list()
		var/list/custom_equip_leftovers = list()
		if(H.client && H.client.prefs && H.client.prefs.gear && H.client.prefs.gear.len && !(job.mob_type & JOB_SILICON))
			for(var/thing in H.client.prefs.gear)
				var/datum/gear/G = gear_datums[thing]
				// Bastion of Endeavor Addition: I'm not satisfied with datum display names being shown in context
				var/thing_obj
				if(ispath(G.path))
					thing_obj = new G.path // in which we fetch the obj the datum is linked to
				// End of Bastion of Endeavor Addition
				if(!G) //Not a real gear datum (maybe removed, as this is loaded from their savefile)
					continue

				var/permitted
				// Check if it is restricted to certain roles
				if(G.allowed_roles)
					for(var/job_name in G.allowed_roles)
						if(job.title == job_name)
							permitted = 1
				else
					permitted = 1

				// Check if they're whitelisted for this gear (in alien whitelist? seriously?)
				if(G.whitelisted && !is_alien_whitelisted(H, GLOB.all_species[G.whitelisted]))
					permitted = 0

				// If they aren't, tell them
				if(!permitted)
					/* Bastion of Endeavor Translation
					to_chat(H, "<span class='warning'>Your current species, job or whitelist status does not permit you to spawn with [thing]!</span>")
					*/
					to_chat(H, "<span class='warning'>Ваша раса, должность или запись в вайтлисте не позволяют Вам надеть [acase_ru(thing_obj)]!</span>")
					// End of Bastion of Endeavor Translation
					continue

				// Implants get special treatment
				if(G.slot == "implant")
					var/obj/item/weapon/implant/I = G.spawn_item(H, H.client.prefs.gear[G.display_name])
					I.invisibility = 100
					I.implant_loadout(H)
					continue

				// Try desperately (and sorta poorly) to equip the item. Now with increased desperation!
				if(G.slot && !(G.slot in custom_equip_slots))
					var/metadata = H.client.prefs.gear[G.display_name]
					//if(G.slot == slot_wear_mask || G.slot == slot_wear_suit || G.slot == slot_head)
					//	custom_equip_leftovers += thing
					//else
					if(H.equip_to_slot_or_del(G.spawn_item(H, metadata), G.slot))
						/* Bastion of Endeavor Translation
						to_chat(H, "<span class='notice'>Equipping you with \the [thing]!</span>")
						*/
						to_chat(H, "<span class='notice'>На Вас [verb_ru(thing_obj, "надет;;а;о;ы;")] [ncase_ru(thing_obj)]!</span>")
						// End of Bastion of Endeavor Translation
						if(G.slot != slot_tie)
							custom_equip_slots.Add(G.slot)
					else
						custom_equip_leftovers.Add(thing)
				else
					spawn_in_storage += thing

		// Set up their account
		job.setup_account(H)

		// Equip job items.
		job.equip(H, H.mind ? H.mind.role_alt_title : "")

		// Stick their fingerprints on literally everything
		job.apply_fingerprints(H)

		// Only non-silicons get post-job-equip equipment
		if(!(job.mob_type & JOB_SILICON))
			H.equip_post_job()

		// If some custom items could not be equipped before, try again now.
		for(var/thing in custom_equip_leftovers)
			var/datum/gear/G = gear_datums[thing]
			// Bastion of Endeavor Addition: Same thing as above
			var/thing_obj
			if(ispath(G.path))
				thing_obj = new G.path // in which we fetch the obj the datum is linked to
			// End of Bastion of Endeavor Addition
			if(G.slot in custom_equip_slots)
				spawn_in_storage += thing
			else
				var/metadata = H.client.prefs.gear[G.display_name]
				if(H.equip_to_slot_or_del(G.spawn_item(H, metadata), G.slot))
					/* Bastion of Endeavor Translation
					to_chat(H, "<span class='notice'>Equipping you with \the [thing]!</span>")
					*/
					to_chat(H, "<span class='notice'>На Вас [verb_ru(thing_obj, "надет;;а;о;ы;")] [ncase_ru(thing_obj)]!</span>")
					// End of Bastion of Endeavor Translation
					custom_equip_slots.Add(G.slot)
				else
					spawn_in_storage += thing
	else
		/* Bastion of Endeavor Translation
		to_chat(H, "<span class='filter_notice'>Your job is [rank] and the game just can't handle it! Please report this bug to an administrator.</span>")
		*/
		to_chat(H, "<span class='filter_notice'>Ваша должность - [rank], и игра к этому не была готова! Доложите об этом администратору.</span>")
		// End of Bastion of Endeavor Translation

	H.job = rank
	/* Bastion of Endeavor Translation
	log_game("JOINED [key_name(H)] as \"[rank]\"")
	log_game("SPECIES [key_name(H)] is a: \"[H.species.name]\"") //VOREStation Add
	*/
	log_game("ЗАШЁЛ [key_name(H)] за должность: \"[rank]\"")
	log_game("РАСОЙ [key_name(H)] является: \"[H.species.name]\"") //VOREStation Add
	// End of Bastion of Endeavor Translation

	// If they're head, give them the account info for their department
	if(H.mind && job.department_accounts)
		var/remembered_info = ""
		for(var/D in job.department_accounts)
			var/datum/money_account/department_account = department_accounts[D]
			if(department_account)
				/* Bastion of Endeavor Translation
				remembered_info += "<b>Department account number ([D]):</b> #[department_account.account_number]<br>"
				remembered_info += "<b>Department account pin ([D]):</b> [department_account.remote_access_pin]<br>"
				remembered_info += "<b>Department account funds ([D]):</b> $[department_account.money]<br>"
				*/
				remembered_info += "<b>Номер счёта отдела ([D]):</b> #[department_account.account_number]<br>"
				remembered_info += "<b>PIN-код счёта отдела ([D]):</b> [department_account.remote_access_pin]<br>"
				remembered_info += "<b>Баланс счёта отдела ([D]):</b> $[department_account.money]<br>"
				// End of Bastion of Endeavor Translation

		H.mind.store_memory(remembered_info)

	var/alt_title = null
	if(H.mind)
		H.mind.assigned_role = rank
		alt_title = H.mind.role_alt_title

		// If we're a silicon, we may be done at this point
		if(job.mob_type & JOB_SILICON_ROBOT)
			return H.Robotize()
		if(job.mob_type & JOB_SILICON_AI)
			return H

		// TWEET PEEP
		/* Bastion of Endeavor Translation
		if(rank == "Site Manager")
		*/
		if(rank == "Менеджер объекта")
		// End of Bastion of Endeavor Translation
			var/sound/announce_sound = (ticker.current_state <= GAME_STATE_SETTING_UP) ? null : sound('sound/misc/boatswain.ogg', volume=20)
			/* Bastion of Endeavor Translation
			captain_announcement.Announce("All hands, [alt_title ? alt_title : "Site Manager"] [H.real_name] on deck!", new_sound = announce_sound, zlevel = H.z)
			*/
			captain_announcement.Announce("Внимание, на станции [alt_title ? lowertext(alt_title) : "менеджер объекта"] [H.real_name]!", new_sound = announce_sound, zlevel = H.z)
			// End of Bastion of Endeavor Translation

		//Deferred item spawning.
		if(spawn_in_storage && spawn_in_storage.len)
			var/obj/item/weapon/storage/B
			for(var/obj/item/weapon/storage/S in H.contents)
				B = S
				break

			if(!isnull(B))
				for(var/thing in spawn_in_storage)
					/* Bastion of Endeavor Edit: Reordered stuff basically
					to_chat(H, "<span class='notice'>Placing \the [thing] in your [B.name]!</span>")
					var/datum/gear/G = gear_datums[thing]
					*/
					var/datum/gear/G = gear_datums[thing]
					var/thing_obj
					if(ispath(G.path))
						thing_obj = new G.path
					to_chat(H, "<span class='notice'>[cap_ru(thing_obj)] [verb_ru(thing, "был")] [verb_ru(thing, "помещ;ён;ена;ено;ены;")] в [concat_ru("Ваш;;у;е;и;", B, ACASE)]!</span>")
					var/metadata = H.client.prefs.gear[G.display_name]
					G.spawn_item(B, metadata)
			else
				/* Bastion of Endeavor Translation
				to_chat(H, "<span class='danger'>Failed to locate a storage object on your mob, either you spawned with no arms and no backpack or this is a bug.</span>")
				*/
				to_chat(H, "<span class='danger'>Не удалось найти свободное место на Вашем мобе; либо Вы заспавнились без рук и рюкзака, либо это баг.</span>")
				// End of Bastion of Endeavor Translation

	if(istype(H)) //give humans wheelchairs, if they need them.
		var/obj/item/organ/external/l_foot = H.get_organ("l_foot")
		var/obj/item/organ/external/r_foot = H.get_organ("r_foot")
		var/obj/item/weapon/storage/S = locate() in H.contents
		var/obj/item/wheelchair/R
		if(S)
			R = locate() in S.contents
		if(!l_foot || !r_foot || R)
			var/wheelchair_type = R?.unfolded_type || /obj/structure/bed/chair/wheelchair
			var/obj/structure/bed/chair/wheelchair/W = new wheelchair_type(H.loc)
			W.buckle_mob(H)
			H.update_canmove()
			W.set_dir(H.dir)
			W.add_fingerprint(H)
			if(R)
				W.color = R.color
				qdel(R)

	/* Bastion of Endeavor Translation
	to_chat(H, "<span class='filter_notice'><B>You are [job.total_positions == 1 ? "the" : "a"] [alt_title ? alt_title : rank].</B></span>")
	*/
	to_chat(H, "<span class='filter_notice'><B>Ваша должность - [alt_title ? alt_title : rank].</B></span>")
	// End of Bastion of Endeavor Translation

	if(job.supervisors)
		/* Bastion of Endeavor Translation: supervisors var has more text so yeah
		to_chat(H, "<span class='filter_notice'><b>As the [alt_title ? alt_title : rank] you answer directly to [job.supervisors]. Special circumstances may change this.</b></span>")
		*/
		to_chat(H, "<span class='filter_notice'><b>[job.supervisors] Особые обстоятельства могут это изменить.</b></span>")
		// End of Bastion of Endeavor Translation
	if(job.has_headset)
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset(H), slot_l_ear)
		/* Bastion of Endeavor Translation: Oddly, I am removing a bit of clarity here, since say code isn't localized at the time of doing this
		to_chat(H, "<span class='filter_notice'><b>To speak on your department's radio channel use :h. For the use of other channels, examine your headset.</b></span>")
		*/
		to_chat(H, "<span class='filter_notice'><b>Осмотрите свою гарнитуру, чтобы увидеть список доступных Вам каналов рации.</b></span>")
		// End of Bastion of Endeavor Translation

	if(job.req_admin_notify)
		/* Bastion of Endeavor Translation
		to_chat(H, "<span class='filter_notice'><b>You are playing a job that is important for Game Progression. If you have to disconnect, please notify the admins via adminhelp.</b></span>")
		*/
		to_chat(H, "<span class='filter_notice'><b>Ваша должность важна для развития игры. Если Вам нужно резко отключиться, просьба сообщить админам через Помощь админа.</b></span>")
		// End of Bastion of Endeavor Translation

	// EMAIL GENERATION
	// Email addresses will be created under this domain name. Mostly for the looks.
	var/domain = "freemail.nt"
	if(using_map && LAZYLEN(using_map.usable_email_tlds))
		domain = using_map.usable_email_tlds[1]
	/* Bastion of Endeavor Unicode Edit
	var/sanitized_name = sanitize(replacetext(replacetext(lowertext(H.real_name), " ", "."), "'", ""))
	*/
	var/sanitized_name = sanitize(replacetext_char(replacetext_char(lowertext(H.real_name), " ", "."), "'", ""))
	// End of Bastion of Endeavor Unicode Edit
	var/complete_login = "[sanitized_name]@[domain]"

	// It is VERY unlikely that we'll have two players, in the same round, with the same name and branch, but still, this is here.
	// If such conflict is encountered, a random number will be appended to the email address. If this fails too, no email account will be created.
	if(ntnet_global.does_email_exist(complete_login))
		complete_login = "[sanitized_name][random_id(/datum/computer_file/data/email_account/, 100, 999)]@[domain]"

	// If even fallback login generation failed, just don't give them an email. The chance of this happening is astronomically low.
	if(ntnet_global.does_email_exist(complete_login))
		/* Bastion of Endeavor Translation
		to_chat(H, "<span class='filter_notice'>You were not assigned an email address.</span>")
		H.mind.store_memory("You were not assigned an email address.")
		*/
		to_chat(H, "<span class='filter_notice'>За Вами не закреплён адрес электронной почты.</span>")
		H.mind.store_memory("За Вами не закреплён адрес электронной почты.")
		// End of Bastion of Endeavor Translation
	else
		var/datum/computer_file/data/email_account/EA = new/datum/computer_file/data/email_account()
		EA.password = GenerateKey()
		EA.login = 	complete_login
		/* Bastion of Endeavor Translation
		to_chat(H, "<span class='filter_notice'>Your email account address is <b>[EA.login]</b> and the password is <b>[EA.password]</b>. This information has also been placed into your notes.</span>")
		H.mind.store_memory("Your email account address is [EA.login] and the password is [EA.password].")
		*/
		to_chat(H, "<span class='filter_notice'>Ваш адрес электронной почты - <b>[EA.login]</b>, пароль - <b>[EA.password]</b>. Эта информация размещена в Заметках.</span>")
		H.mind.store_memory("Ваш адрес электронной почты - [EA.login], пароль - [EA.password].")
		// End of Bastion of Endeavor Translation
	// END EMAIL GENERATION

	//Gives glasses to the vision impaired
	if(H.disabilities & NEARSIGHTED)
		var/equipped = H.equip_to_slot_or_del(new /obj/item/clothing/glasses/regular(H), slot_glasses)
		if(equipped != 1)
			var/obj/item/clothing/glasses/G = H.glasses
			G.prescription = 1

	BITSET(H.hud_updateflag, ID_HUD)
	BITSET(H.hud_updateflag, IMPLOYAL_HUD)
	BITSET(H.hud_updateflag, SPECIALROLE_HUD)
	return H

/datum/controller/occupations/proc/LoadJobs(jobsfile) //ran during round setup, reads info from jobs.txt -- Urist
	if(!config.load_jobs_from_txt)
		return 0

	var/list/jobEntries = file2list(jobsfile)

	for(var/job in jobEntries)
		if(!job)
			continue

		job = trim(job)
		if (!length(job))
			continue

		var/pos = findtext(job, "=")
		var/name = null
		var/value = null

		if(pos)
			name = copytext(job, 1, pos)
			value = copytext(job, pos + 1)
		else
			continue

		if(name && value)
			var/datum/job/J = GetJob(name)
			if(!J)	continue
			J.total_positions = text2num(value)
			J.spawn_positions = text2num(value)
			if(J.mob_type & JOB_SILICON)
				J.total_positions = 0

	return 1


/datum/controller/occupations/proc/HandleFeedbackGathering()
	for(var/datum/job/job in occupations)
		var/tmp_str = "|[job.title]|"

		var/level1 = 0 //high
		var/level2 = 0 //medium
		var/level3 = 0 //low
		var/level4 = 0 //never
		var/level5 = 0 //banned
		var/level6 = 0 //account too young
		for(var/mob/new_player/player in player_list)
			if(!(player.ready && player.mind && !player.mind.assigned_role))
				continue //This player is not ready
			if(jobban_isbanned(player, job.title))
				level5++
				continue
			if(!job.player_old_enough(player.client))
				level6++
				continue
			//VOREStation Add
			if(!job.player_has_enough_playtime(player.client))
				level6++
				continue
			//VOREStation Add End
			if(player.client.prefs.GetJobDepartment(job, 1) & job.flag)
				level1++
			else if(player.client.prefs.GetJobDepartment(job, 2) & job.flag)
				level2++
			else if(player.client.prefs.GetJobDepartment(job, 3) & job.flag)
				level3++
			else level4++ //not selected

		tmp_str += "HIGH=[level1]|MEDIUM=[level2]|LOW=[level3]|NEVER=[level4]|BANNED=[level5]|YOUNG=[level6]|-"
		feedback_add_details("job_preferences",tmp_str)

/datum/controller/occupations/proc/LateSpawn(var/client/C, var/rank)

	var/datum/spawnpoint/spawnpos
	var/fail_deadly = FALSE

	var/datum/job/J = SSjob.get_job(rank)
	fail_deadly = J?.offmap_spawn

	//Spawn them at their preferred one
	if(C && C.prefs.spawnpoint)
		if(!(C.prefs.spawnpoint in using_map.allowed_spawns))
			if(fail_deadly)
				to_chat(C, "<span class='warning'>Your chosen spawnpoint is unavailable for this map and your job requires a specific spawnpoint. Please correct your spawn point choice.</span>")
				return
			else
				to_chat(C, "<span class='warning'>Your chosen spawnpoint ([C.prefs.spawnpoint]) is unavailable for the current map. Spawning you at one of the enabled spawn points instead.</span>")
				spawnpos = null
		else
			spawnpos = spawntypes[C.prefs.spawnpoint]

	//We will return a list key'd by "turf" and "msg"
	. = list("turf","msg")
	if(spawnpos && istype(spawnpos) && spawnpos.turfs.len)
		if(spawnpos.check_job_spawning(rank))
			.["turf"] = spawnpos.get_spawn_position()
			.["msg"] = spawnpos.msg
			.["channel"] = spawnpos.announce_channel
		else
			if(fail_deadly)
				to_chat(C, "<span class='warning'>Your chosen spawnpoint ([spawnpos.display_name]) is unavailable for your chosen job. Please correct your spawn point choice.</span>")
				return
			to_chat(C, "<span class='filter_warning'>Your chosen spawnpoint ([spawnpos.display_name]) is unavailable for your chosen job. Spawning you at the Arrivals shuttle instead.</span>")
			var/spawning = pick(latejoin)
			.["turf"] = get_turf(spawning)
			.["msg"] = "will arrive at the station shortly"
	else if(!fail_deadly)
		var/spawning = pick(latejoin)
		.["turf"] = get_turf(spawning)
		.["msg"] = "has arrived on the station"
