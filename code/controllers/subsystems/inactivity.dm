SUBSYSTEM_DEF(inactivity)
	/* Bastion of Endeavor Translation
	name = "Inactivity"
	*/
	name = "Неактивность"
	// End of Bastion of Endeavor Translation
	wait = 1 MINUTE
	flags = SS_NO_INIT | SS_BACKGROUND
	var/tmp/list/client_list
	var/number_kicked = 0

/datum/controller/subsystem/inactivity/fire(resumed = FALSE)
	if (!config.kick_inactive)
		can_fire = FALSE
		return
	if (!resumed)
		client_list = GLOB.clients.Copy()

	while(client_list.len)
		var/client/C = client_list[client_list.len]
		client_list.len--
		if(C.is_afk(config.kick_inactive MINUTES) && can_kick(C))
			/* Bastion of Endeavor Translation
			to_chat_immediate(C, world.time, "<span class='warning'>You have been inactive for more than [config.kick_inactive] minute\s and have been disconnected.</span>")
			*/
			to_chat_immediate(C, world.time, "<span class='warning'>Вы были неактивны больше [count_ru(config.kick_inactive, "минут;ы;;")], поэтому были отключены.</span>")
			// End of Bastion of Endeavor Translation

			var/information
			if(C.mob)
				if(ishuman(C.mob))
					var/job
					var/mob/living/carbon/human/H = C.mob
					var/datum/data/record/R = find_general_record("name", H.real_name)
					if(R)
						job = R.fields["real_rank"]
					if(!job && H.mind)
						job = H.mind.assigned_role
					if(!job && H.job)
						job = H.job
					if(job)
						/* Bastion of Endeavor Translation
						information = " while [job]."
						*/
						information = ", будучи игроком на роли [job]."
						// End of Bastion of Endeavor Translation

				else if(isobserver(C.mob))
					/* Bastion of Endeavor Translation
					information = " while a ghost."
					*/
					information = ", будучи призраком."
					// End of Bastion of Endeavor Translation

				else if(issilicon(C.mob))
					/* Bastion of Endeavor Translation
					information = " while a silicon."
					*/
					information = ", будучи роботом."
					// End of Bastion of Endeavor Translation
					if(isAI(C.mob))
						var/mob/living/silicon/ai/A = C.mob
						empty_playable_ai_cores += new /obj/structure/AIcore/deactivated(A.loc)
						/* Bastion of Endeavor Translation
						global_announcer.autosay("[A] has been moved to intelligence storage.", "Artificial Intelligence Oversight")
						*/
						global_announcer.autosay("[A] [verb_ru(A, "был")] перемещён в хранилище ИИ.", "Мониторинг ИИ")
						// End of Bastion of Endeavor Translation
						A.clear_client()
						/* Bastion of Endeavor Translation
						information = " while an AI."
						*/
						information = ", будучи ИИ."
						// End of Bastion of Endeavor Translation

			var/adminlinks
			/* Bastion of Endeavor Translation
			adminlinks = " (<A HREF='?_src_=holder;[HrefToken()];adminplayerobservecoodjump=1;X=[C.mob.x];Y=[C.mob.y];Z=[C.mob.z]'>JMP</a>|<A HREF='?_src_=holder;[HrefToken()];cryoplayer=\ref[C.mob]'>CRYO</a>)"
			*/
			adminlinks = " (<A HREF='?_src_=holder;[HrefToken()];adminplayerobservecoodjump=1;X=[C.mob.x];Y=[C.mob.y];Z=[C.mob.z]'>ПРЫГ</a>|<A HREF='?_src_=holder;[HrefToken()];cryoplayer=\ref[C.mob]'>КРИО</a>)"
			// End of Bastion of Endeavor Translation

			/* Bastion of Endeavor Translation
			log_and_message_admins("being kicked for AFK[information][adminlinks]", C.mob)
			*/
			log_and_message_admins("кикнут за АФК[information][adminlinks]", C.mob)
			// End of Bastion of Endeavor Translation

			qdel(C)
			number_kicked++

		if (MC_TICK_CHECK)
			return

/datum/controller/subsystem/inactivity/stat_entry()
	/* Bastion of Endeavor Translation
	..("Kicked: [number_kicked]")
	*/
	..("Кикнуто: [number_kicked]")
	// End of Bastion of Endeavor Translation

/datum/controller/subsystem/inactivity/proc/can_kick(var/client/C)
	if(C.holder) return FALSE //VOREStation Add - Don't kick admins.
	return TRUE
