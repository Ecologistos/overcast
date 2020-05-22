/**
 * Dolg faction file.
 *
 * I think this file hates itself out of duty.
**/

/** Jobs **/

// Dolg soldier
/datum/job/dolg/soldat
	title = "Soldat Dolga"
	faction_s = "Dolg"
	faction = "Station"
	total_positions = 10
	spawn_positions = 10
	supervisors = "Maior" // Подскользнётся.
	selection_color = "#CC0000"
	access = list()
	minimal_access = list()
	limit_per_player = 4
	outfit = /datum/outfit/job/dolg/soldat

// Dolg leader
/datum/job/dolg/maior
	title = "Maior"
	faction_s = "Dolg"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	selection_color = "#CC0000"
	outfit = /datum/outfit/job/dolg/maior
	real_rank = "Lieutenant"

/** Outfits **/

// Dolg soldier
/datum/outfit/job/duty
	name = "Soldat Dolga"
	faction_s = "Dolg"

/datum/outfit/job/dolg/soldat/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/ps5m
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1, /obj/item/device/flashlight/seclite = 1)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

// Dolg leader
/datum/outfit/job/dolg/maior
	name = "Maior"
	faction_s = "Dolg"

/datum/outfit/job/dolg/maior/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/ps5m
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/shotgun/ithaca
	backpack_contents = list(/obj/item/device/flashlight/seclite = 1)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa, /obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/** Sklad **/

/datum/job/barman2
	title = "Barman2"
	faction_s = "Loners"
	locked = 1
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/barman2
	//faction_s = "Îäèíî÷êè"

/datum/outfit/job/barman2
	name = "Barman"
	faction_s = "Traders"

/datum/outfit/job/barman2/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/jacket/sidor
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/cora
	id = /obj/item/device/stalker_pda
	shoes = /obj/item/clothing/shoes/sneakers/black
	back = null