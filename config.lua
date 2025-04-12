Config = {}


Config.EggLocations = {
    -- Id = ItemName, model = Model of Object, Location = Vector3
    { id = 'dl_egg_01', model = 'dl_bigegg_01', location = vector3(-550.62750244141, -202.35943603516, 38.325968933105 - 0.2) },
    { id = 'dl_egg_02', model = 'dl_bigegg_02', location = vector3(-335.50372314453, -127.59770202637, 39.297312927246 - 0.2) },
    { id = 'dl_egg_03', model = 'dl_bigegg_03', location = vector3(81.405044555664, -383.4450378418, 39.355948638916 - 0.2) },
    { id = 'dl_egg_04', model = 'dl_bigegg_04', location = vector3(-586.30908203125, -1076.3454589844, 22.337884140015 - 0.2) },
    { id = 'dl_egg_05', model = 'dl_bigegg_05', location = vector3(-1358.9871826172, -1076.392578125, 13.57001991272 - 0.2) },
    { id = 'dl_egg_06', model = 'dl_bigegg_06', location = vector3(-1181.9461669922, -883.14361572266, 18.795232009888 - 0.2) },
    { id = 'dl_egg_07', model = 'dl_bigegg_07', location = vector3(-630.08544921875, 295.12762451172, 81.974375915527 - 0.22) },
    { id = 'dl_egg_08', model = 'dl_bigegg_08', location = vector3(1253.3643798828, -359.37158203125, 69.209155273438 - 0.2) },
    { id = 'dl_egg_09', model = 'dl_bigegg_09', location = vector3(450.55084228516, -980.08941650391, 30.876317214966 - 0.2) },
    { id = 'dl_egg_10', model = 'dl_bigegg_10', location = vector3(19.256355285645, -1116.3116455078, 30.030192565918 - 0.2) },
    { id = 'dl_egg_11', model = 'dl_bigegg_11', location = vector3(961.48748779297, 6.9865117073059, 80.670268249512 - 0.4) },
    { id = 'dl_egg_12', model = 'dl_bigegg_12', location = vector3(178.39724731445, -800.34240722656, 30.70963973999 - 0.2) },
    { id = 'dl_egg_13', model = 'dl_bigegg_13', location = vector3(-42.315040588379, -1084.3492431641, 27.274625015259 - 0.2) },
    { id = 'dl_egg_14', model = 'dl_bigegg_14', location = vector3(155.76770019531, -3029.3217773438, 15.102431488037 - 0.2) },
    { id = 'dl_egg_15', model = 'dl_bigegg_15', location = vector3(25.372110366821, -1348.3112792969, 29.763289642334 - 0.2) },
    { id = 'dl_egg_16', model = 'dl_bigegg_16', location = vector3(-262.68872070312, -984.46917724609, 31.209941101074 - 0.2) },
    { id = 'dl_egg_17', model = 'dl_bigegg_17', location = vector3(-1233.3787841797, -1447.6253662109, 5.4297687530518 - 0.2) },
    { id = 'dl_egg_18', model = 'dl_bigegg_18', location = vector3(-1457.3035888672, -1210.7391357422, 14.987049293518 - 0.2) },
    { id = 'dl_egg_19', model = 'dl_bigegg_19', location = vector3(318.38485717773, -278.39172363281, 54.570628356934 - 0.2) },
    { id = 'dl_egg_20', model = 'dl_bigegg_20', location = vector3(154.60154724121, -1076.2982177734, 29.711131286621 - 0.2) },
    { id = 'dl_egg_21', model = 'dl_bigegg_21', location = vector3(-44.964866638184, -1749.7293701172, 29.42021484375 - 0.2) },
    { id = 'dl_egg_22', model = 'dl_bigegg_22', location = vector3(1070.6899414062, -711.00091552734, 58.759856414795 - 0.2) },
    { id = 'dl_egg_23', model = 'dl_bigegg_23', location = vector3(-120.96831512451, -442.55575561523, 35.518054199219 - 0.2) },
    { id = 'dl_egg_24', model = 'dl_bigegg_24', location = vector3(-53.265926361084, 78.657745361328, 71.592784118652 - 0.2) },

}

Config.Rewards = {
    bronze = {
        required = 10,       -- Number of eggs required to get the reward
        item = 'bronze_egg', -- Item name to be given as a reward
        moneyReward = 3500,  -- Amount of money to be given as a reward
    },
    silver = {
        required = 12,
        item = 'silver_egg',
        moneyReward = 5000,
    },
    gold = {
        required = 19,
        item = 'gold_egg',
        moneyReward = 7500,
    },
    diamond = {
        required = 24,
        item = 'diamond_egg',
        moneyReward = 10000,
    },
}
