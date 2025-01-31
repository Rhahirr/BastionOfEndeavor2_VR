#define CLEAR_OBJECT(TARGET)                \
	processing -= TARGET;                   \
	TARGET.airflow_dest = null;             \
	TARGET.airflow_speed = 0;               \
	TARGET.airflow_time = 0;                \
	TARGET.airflow_skip_speedcheck = FALSE; \
	if (TARGET.airflow_od) {                \
		TARGET.density = FALSE;                 \
	}

// No point in making this a processing substem, it overrides fire() and handles its own processing list!
SUBSYSTEM_DEF(airflow)
	/* Bastion of Endeavor Translation
	name = "Airflow"
	*/
	name = "Потоки воздуха"
	// End of Bastion of Endeavor Translation
	wait = 2
	flags = SS_NO_INIT
	runlevels = RUNLEVEL_GAME | RUNLEVEL_POSTGAME
	priority = FIRE_PRIORITY_AIRFLOW

	var/list/processing = list()
	var/list/currentrun = list()

/datum/controller/subsystem/airflow/fire(resumed = FALSE)
	if (!resumed)
		currentrun = processing.Copy()

	var/mywait = wait
	var/list/curr = currentrun // Cache for sanic speed
	while (curr.len)
		var/atom/movable/target = curr[curr.len]
		curr.len--
		if(QDELETED(target))
			processing -= target
			if (MC_TICK_CHECK)
				return
			continue

		if (target.airflow_speed <= 0)
			CLEAR_OBJECT(target)
			if (MC_TICK_CHECK)
				return
			continue

		if (target.airflow_process_delay > 0)
			target.airflow_process_delay -= mywait
			if (MC_TICK_CHECK)
				return
			continue
		else if (target.airflow_process_delay)
			target.airflow_process_delay = 0

		target.airflow_speed = min(target.airflow_speed, 15)
		target.airflow_speed -= vsc.airflow_speed_decay
		if (!target.airflow_skip_speedcheck)
			if (target.airflow_speed > 7)
				if (target.airflow_time++ >= target.airflow_speed - 7)
					if (target.airflow_od)
						target.density = FALSE
					target.airflow_skip_speedcheck = TRUE

					if (MC_TICK_CHECK)
						return
					continue
			else
				if (target.airflow_od)
					target.density = FALSE
				target.airflow_process_delay = max(1, 10 - (target.airflow_speed + 3))
				target.airflow_skip_speedcheck = TRUE

				if (MC_TICK_CHECK)
					return
				continue

		target.airflow_skip_speedcheck = FALSE

		if (target.airflow_od)
			target.density = TRUE

		if (!target.airflow_dest || target.loc == target.airflow_dest)
			target.airflow_dest = locate(min(max(target.x + target.airflow_xo, 1), world.maxx), min(max(target.y + target.airflow_yo, 1), world.maxy), target.z)

		if ((target.x == 1) || (target.x == world.maxx) || (target.y == 1) || (target.y == world.maxy))
			CLEAR_OBJECT(target)
			if (MC_TICK_CHECK)
				return
			continue

		if (!isturf(target.loc))
			CLEAR_OBJECT(target)
			if (MC_TICK_CHECK)
				return
			continue

		step_towards(target, target.airflow_dest)
		var/mob/M = target
		if (ismob(target) && M.client)
			M.setMoveCooldown(vsc.airflow_mob_slowdown)

		if (MC_TICK_CHECK)
			return

#undef CLEAR_OBJECT

/atom/movable
	var/tmp/airflow_xo
	var/tmp/airflow_yo
	var/tmp/airflow_od
	var/tmp/airflow_process_delay
	var/tmp/airflow_skip_speedcheck

/atom/movable/proc/prepare_airflow(n)
	if (!airflow_dest || airflow_speed < 0 || last_airflow > world.time - vsc.airflow_delay)
		return FALSE
	if (airflow_speed)
		airflow_speed = n / max(get_dist(src, airflow_dest), 1)
		return FALSE

	if (airflow_dest == loc)
		step_away(src, loc)

	if (!src.AirflowCanMove(n))
		return FALSE

	if (ismob(src))
		/* Bastion of Endeavor Translation
		to_chat(src,"<span class='danger'>You are pushed away by airflow!</span>")
		*/
		to_chat(src,"<span class='danger'>Вас уносит потоком воздуха!</span>")
		// End of Bastion of Endeavor Translation

	last_airflow = world.time
	var/airflow_falloff = 9 - sqrt((x - airflow_dest.x) ** 2 + (y - airflow_dest.y) ** 2)

	if (airflow_falloff < 1)
		airflow_dest = null
		return FALSE

	airflow_speed = min(max(n * (9 / airflow_falloff), 1), 9)

	airflow_od = 0

	if (!density)
		density = TRUE
		airflow_od = 1

	return TRUE

/atom/movable/proc/GotoAirflowDest(n)
	if (!prepare_airflow(n))
		return

	airflow_xo = airflow_dest.x - src.x
	airflow_yo = airflow_dest.y - src.y

	airflow_dest = null

	SSairflow.processing += src

/atom/movable/proc/RepelAirflowDest(n)
	if (!prepare_airflow(n))
		return

	airflow_xo = -(airflow_dest.x - src.x)
	airflow_yo = -(airflow_dest.y - src.y)

	airflow_dest = null

	SSairflow.processing += src
