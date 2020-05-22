/**
 * Svoboda faction file.
 *
 * It smells like cannabis and freedom.
**/

/** Jobs **/

// Svoboda soldier
/datum/job/svoboda/svobodovec
	title = "Svobodovec"
	faction_s = "Svoboda"
	total_positions = 10
	spawn_positions = 10
	supervisors = "Glavny Anarkhist" // Кто здесь?
	selection_color = "#3C8C3C"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/svoboda/svobodovec

// Svoboda leader
/datum/job/svoboda/glavny_anarkhist
	title = "Glavny Anarkhist" // Он здесь.
	faction_s = "Svoboda"
	total_positions = 1
	spawn_positions = 1
	selection_color = "#3C8C3C"
	outfit = /datum/outfit/job/svoboda/glavny_anarkhist
	real_rank = "Lieutenant"

/** Outfits **/

// Svoboda soldier
/datum/outfit/job/svoboda/svobodovec
	name = "Svoboda"
	faction_s = "Svoboda"

/datum/outfit/job/svoboda/svobodovec/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/tpc301
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b55645 = 1, /obj/item/ammo_box/magazine/stalker/m556x45 = 2)
	r_pocket = /obj/item/weapon/stalker/bolts
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa, /obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

// Svoboda leader
/datum/outfit/job/svoboda/glavny_anarkhist
	name = "Glavny Anarkhist"
	faction_s = "Svoboda"

/datum/outfit/job/svoboda/glavny_anarkhist/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/mp5
	backpack_contents = list(/obj/item/ammo_box/stalker/b9x19 = 1, /obj/item/device/flashlight/seclite = 1)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa, /obj/item/weapon/reagent_containers/food/snacks/stalker/baton)