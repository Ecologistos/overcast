/obj/effect/landmark
	name = "landmark"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "x2"
	anchored = 1
	unacidable = 1

/obj/effect/landmark/New()
	..()
	tag = text("landmark*[]", name)
	invisibility = 101
	landmarks_list += src

	switch(name)			//some of these are probably obsolete
		if("monkey")
			monkeystart += loc
			qdel(src)
			return
		if("start")
			newplayer_start += loc
			qdel(src)
			return
		if("wizard")
			wizardstart += loc
			qdel(src)
			return
		if("JoinLate")
			latejoin += loc
			qdel(src)
			return
		if("prisonwarp")
			prisonwarp += loc
			qdel(src)
			return
		if("Holding Facility")
			holdingfacility += loc
		if("tdome1")
			tdome1	+= loc
		if("tdome2")
			tdome2 += loc
		if("tdomeadmin")
			tdomeadmin	+= loc
		if("tdomeobserve")
			tdomeobserve += loc
		if("prisonsecuritywarp")
			prisonsecuritywarp += loc
			qdel(src)
			return
		if("blobstart")
			blobstart += loc
			qdel(src)
			return
		if("secequipment")
			secequipment += loc
			qdel(src)
			return
		if("Emergencyresponseteam")
			emergencyresponseteamspawn += loc
			qdel(src)
			return
		if("xeno_spawn")
			xeno_spawn += loc
			qdel(src)
			return

	if(!istype(jobnamelatejoin[name], /list))
		jobnamelatejoin[name] = new /list()
	else
		jobnamelatejoin[name] += loc
		qdel(src)
		return

	return 1

/obj/effect/landmark/Destroy()
	landmarks_list -= src
	return ..()

/obj/effect/landmark/start
	name = "start"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "x"
	anchored = 1

/obj/effect/landmark/start/New()
	..()
	tag = "start*[name]"
	invisibility = 101
	start_landmarks_list += src
	return 1

/obj/effect/landmark/start/Destroy()
	start_landmarks_list -= src
	return ..()

/** Overcast-related landmarks **/

/obj/effect/landmark/latejoin
	name = "Late Join"

/obj/effect/landmark/latejoin/everyone
	name = "Late Join Everyone"

// Army
/obj/effect/landmark/latejoin/army
	name = "Late Join Army"

/obj/effect/landmark/latejoin/army_eliteagro
	name = "Late Join Army Elite"

// Bandits
/obj/effect/landmark/latejoin/bandit_soldier
	name = "Late Join Bandit"

/obj/effect/landmark/latejoin/bandit_leader
	name = "Late Join Bandit Pahan"

/obj/effect/landmark/latejoin/bandit_trader
	name = "Late Join Bandit Barman"

// Duty
/obj/effect/landmark/latejoin/duty_soldier
	name = "Late Join Duty Soldier"

/obj/effect/landmark/latejoin/duty_leader
	name = "Late Join Duty Major"

// Freedom
/obj/effect/landmark/latejoin/freedom_soldier
	name = "Late Join Freedom Soldier"

/obj/effect/landmark/latejoin/freedom_leader
	name = "Late Join Freedom Chief Anarchist"

// Mercenaries
/obj/effect/landmark/latejoin/mercenary
	name = "Late Join Mercenary"

/obj/effect/landmark/latejoin/mercenary_sql
	name = "Late Join Mercenary Sql"

// Monolith
/obj/effect/landmark/latejoin/monolith
	name = "Late Join Monolith"

/obj/effect/landmark/latejoin/monolith_hegumen
	name = "Late Join Monolith Hegumen"

// Unsorted
/obj/effect/landmark/latejoin/petrovich
	name = "Late Join Petrovich"

/obj/effect/landmark/latejoin/trader
	name = "Late Join Trader"

/obj/effect/landmark/latejoin/oldstalker
	name = "Late Join Old Stalker"

/obj/effect/landmark/latejoin/barman2
	name = "Late Join Barman2"