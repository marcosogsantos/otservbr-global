local mType = Game.createMonsterType("Solid Frozen Horror")
local monster = {}

monster.description = "a solid frozen horror"
monster.experience = 0
monster.outfit = {
	lookType = 261,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 70000
monster.maxHealth = 70000
monster.race = "undead"
monster.corpse = 7282
monster.speed = 240
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Chrrrrrk! Chrrrk!", yell = false}
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 100, attack = 60, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 15, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -75, maxDamage = -150, type = COMBAT_ICEDAMAGE, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BLOCKHIT, target = true},
	{name ="combat", interval = 2000, chance = 11, target = false},
	{name ="combat", interval = 2000, chance = 10, target = false}
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, effect = CONST_ME_BLOCKHIT, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)