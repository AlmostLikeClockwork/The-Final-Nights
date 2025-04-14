/datum/vampireclane/caitiff
	name = CLAN_NONE
	desc = "Caitiffs are rare Cainites who do not officially belong to any clan. These vampires have no inherent clan weakness, but no inherent disciplines as well. None of the typical clan markers apply to them. Although the Caitiff have manifested throughout history, they tend to do so more frequently among the higher generations, such that the terms \"Caitiff\" and \"Thin-blooded\" are often considered synonymous. While there is considerable overlap, not all Caitiff are thin-bloods."
	curse = "None."
	clane_disciplines = list()
	male_clothes = /obj/item/clothing/under/vampire/homeless
	female_clothes = /obj/item/clothing/under/vampire/homeless/female

/datum/vampireclane/caitiff/post_gain(mob/living/carbon/human/H)
	. = ..()

	// Thin-blood it up if 14th gen or higher.
	if(H.generation >= 14)
		if(!HAS_TRAIT(H, TRAIT_BLUSH_OF_HEALTH))
			ADD_TRAIT(H, TRAIT_BLUSH_OF_HEALTH, "thinblood")
		if(!HAS_TRAIT(H, TRAIT_WARM_AURA))
			ADD_TRAIT(H, TRAIT_WARM_AURA, "thinblood")
