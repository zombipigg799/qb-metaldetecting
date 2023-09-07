Config = {}

-- display polyzones (green boxes)
Config.DebugPoly = false 

-- common trade ped location & ped hash
Config.CommonPedLocation = vector4(-163.27, 6256.59, 31.49, 17.9)
Config.CommonPed = 'mp_m_forgery_01'

-- rare trade ped location & ped hash
Config.RarePedLocation = vector4(-360.37, 6060.34, 31.5, 36.87)
Config.RarePed = 'a_f_o_genstreet_01'

-- the amount of time it takes to detect items. (progressbar)
Config.DetectTime = math.random(6000, 10000) 

-- if doesnt land on common or rare you get nothing.
-- 60% chance of receiving common item.
Config.CommonChance = 60

-- 5% chance of receiving rare item.
Config.RareChance = 95

-- The amount of common items received when detected.
Config.CommonAmount = math.random(1,2) 

-- The amount of rare items received when detected.
Config.RareAmount = 1 

-- %2 chance of overheating. 
Config.OverheatChance = 2 

-- how long the detecter gets overheated for
Config.OverheatTime = math.random(30000, 50000) 

-- list of common items detectable
Config.CommonItems = {
    'metaltrash',
	'irontrash',
    'bulletcasings',
    'aluminumcan',
    'steeltrash',
    'brokenknife',
    'brokendetector',
    'brokenphone',
    'housekeys',
	'plastic',
	'metalscrap',
	'glass',
	'rubber',
	'water_bottle',
	'twerks_candy',
	'weapon_ball'
}

-- list of rare items detectable
Config.RareItems = {
    'burriedtreasure',
    'treasurekey',
    'antiquecoin',
    'goldennugget',
    'goldcoin',
    'ancientcoin',
    'ww2relic',
    'brokengamboy',
    'pocketwatch',
	'rolex',
	'goldchain',
	'painkillers',
	'joint',
	'pistol_ammo',
	'weapon_bottle'
}

-- metal detection zones
Config.DetectZones = {
    [1] = {
        label = "PierBeach",
        zones = {
            vector2(-1215.8862304688, -1763.9927978516),
            vector2(-1261.4217529297, -1830.6840820312),
            vector2(-1612.1901855469, -1141.1480712891),
            vector2(-1586.1876220703, -1071.6724853516),
            vector2(-1422.1868896484, -1110.5142822266),
            vector2(-1405.5825195312, -1395.3377685547),
            vector2(-1323.0729980469, -1605.9655761719)
        },
    },
    [2] = {
        label = "PierBeach2",
        zones = {
            vector2(-1679.6752929688, -981.88470458984),
            vector2(-1679.6752929688, -981.88470458984),
            vector2(-1717.31640625, -1063.8728027344),
            vector2(-2113.6811523438, -554.88806152344),
            vector2(-2057.0686035156, -503.62591552734),
            vector2(-1848.9615478516, -657.43768310547),
            vector2(-1752.3885498047, -741.12536621094),
            vector2(-1729.9864501953, -918.60015869141)
        },
    },
    [3] = {
        label = "Golf Course",
        zones = {
            vector2(-162.57, 6726.13),
            vector2(-96.32, 6661.89),
            vector2(-577.76, 6291.48),
            vector2(-652.2, 6348.07)
        },
    },
}