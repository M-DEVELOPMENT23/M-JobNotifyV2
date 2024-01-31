Config = {}


Config.Debug = true

Config.notificationScript = "ox" -- QBCore/ox
Config.FooterText = "[E] To Go To Business"
Config.Cooldown = 10 -- IN (MS)

Config.Commands = {

    ["OpenBusiness"] = {
        command = "openbusiness",
        commanddescription = "Open Your Business with specific text defined on config.lua",
    },

    ["CloseBusiness"] = {
        command = "closebusiness",
        commanddescription = "Close Your Business with specific text defined on config.lua",
    },

    ["CustomText"] = {
        command = "announce",
        commanddescription = "Open / Close Your Business with a custom text",
    },

}


Config.Ui = {

    ---- Principal Card ----
    backgroundcolor = "rgba(33, 33, 33, 0.8)",
    boxshadow = "rgb(27 27 27) 5px 5px 8px, rgb(39 39 39) -5px -5px 8px",
    borderradius = "15px",
    opacity = "0.9",
    top = "22vw",
    left = "-1.5vw",

    ---- IMG----

    borderradiusimg = "15px",

    ---- Title ----

    fontsize = "18px",
    fontweight = "600",
    filter = "filter: drop-shadow(2px 4px 6px black)",
    
}



Config.Jobs = { --ADD ALL JOBS YOU WANT HERE

    -- EXEMPLE

    -- ["police"] = { --- Job Name
    --     name = "", -- Job label
    --     titlecolor = "", -- Title Color For the name and the icon
    --     image = "", --- image link
        
    --     openbusinesstext = "", --- Text for open business
    --     closebusinesstext = "" --- Text for close business
    --     textcolor = "", --- Color for these text

    --     icon = '', --- Icon that appears next to job label
    -- },

    ["police"] = {
        name = "LSPD",
        titlecolor = "#b2eccf",

        image = "https://media.discordapp.net/attachments/1086941762142093372/1201604886068989952/image-removebg-preview_3.png?ex=65ca6cc1&is=65b7f7c1&hm=f7d5d14875c2eabf31f752adf1309d336e896a57afe4ec373a2ec9a770d70964&=&format=webp&quality=lossless&width=162&height=162",        
        
        openbusinesstext = "From the management team of the LSPD of Los Santos we would like to inform you that we are available for any criminal action.",
        closebusinesstext = "From the management team of the LSPD of Los Santos we would like to inform you that we are not available for any criminal action.",
        textcolor = "#b2eccf",

        icon = 'fa-duotone fa-user-police',

        coords = {
            x = 441.8,
            y = -983.25,
        }
    },
    
} 