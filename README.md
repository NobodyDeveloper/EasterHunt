Shuffle-Shop Easter egg hunt!

Thank you for downloading our script!

This script is designed to work with ShopFusions EasterEgg models which can be found here:
https://forum.cfx.re/t/easter-eggs-bunny-roger/5319160
https://shopfusion.fragmentor.io/product/6779868

But it can be used with your own models

What does it do?

The script lays out as many easter eggs as in the config at the coords of your choosing. A player can collect an egg once on each of their characters. Once they have collected that egg
they cannot collect it again. It's open source so do with it what you will! Just remember to stick within the bounds of the license


Huge shout out to ShopFusion for their models. Inventory icons for the majority of their eggs comes with the models linked above.

If you like this script you may like our other work: https://shuffle-shop.tebex.io USE CODE: SHOE15 for 15 % off everything!

If you are looking for support check out our discord: https://discord.gg/hJUFn2R9nR

FAQ:

If the models arent spawning, Please include this in the fxmanifest of dl_easter_eggs:

data_file 'DLC_ITYP_REQUEST' 'path_to_props/dl_easter_eggs.ytyp'

INSTALLATION:

Item Images:

We include some item images, However the egg images are inside the "icons" folder inside ShopFusions Models.

Items:

    ['dl_egg_01'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_02'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_03'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_04'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },
    ['dl_egg_05'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_06'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_07'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_08'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_09'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_10'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },
    ['dl_egg_11'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_12'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_13'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_14'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_15'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },
    ['dl_egg_16'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_17'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_18'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_19'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_20'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },
    ['dl_egg_21'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_22'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_23'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['dl_egg_24'] = {
        label = 'Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['bronze_egg'] = {
        label = 'Bronze Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['silver_egg'] = {
        label = 'Silver Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['gold_egg'] = {
        label = 'Gold Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['diamond_egg'] = {
        label = 'Diamond Easter Egg',
        description = 'That\'s a nice egg',
        weight = 100,
        useable = true,
        stack = false,
    },

    ['egg_basket'] = {
        label = 'Easter Egg Basket',
        description = 'Don\'t put all your eggs in one basket',
        weight = 500,
        useable = true,
        stack = false,
    },

You will need to insert into ox_inventory/modules/items/containers.lua the following:

setContainerProperties('egg_basket', {
    slots = 28,
    maxWeight = 25000,
    whitelist = { 'dl_egg_01', 'dl_egg_02', 'dl_egg_03', 'dl_egg_04', 'dl_egg_05', 'dl_egg_06', 'dl_egg_07', 'dl_egg_08', 'dl_egg_09', 'dl_egg_10', 'dl_egg_11', 'dl_egg_12', 'dl_egg_13', 'dl_egg_14', 'dl_egg_15', 'dl_egg_16', 'dl_egg_17', 'dl_egg_18', 'dl_egg_19', 'dl_egg_20', 'dl_egg_21', 'dl_egg_22', 'dl_egg_23', 'dl_egg_24', 'bronze_egg', 'silver_egg', 'gold_egg', 'diamond_egg' }
})