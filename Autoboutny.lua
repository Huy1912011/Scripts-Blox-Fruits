repeat wait() until game:IsLoaded()
getgenv().Settings = {
    ["Team"] = "Pirates", -- Auto Join Marines, Pirates
    ["Gun Method"] = true, -- Turn On Melee And Gun, Please Turn Off Invisible Before Use 
    ['Spam Skills'] = true, -- Will Auto Spam All Skills
    ['Webhook'] = '', -- Your Url Webhook
    ["Click"] = {
        ["Enable"] = true,
        ["Click Gun"] = true,
        ['Low Health'] = true,
        ["On Low Health Disable"] = false,
    },
    ["Safe Zone"] = {
        ["Enable"] = true,
        ["Low Health"] = 5000,
        ["Max Health"] = 8000,
        ["Teleport Y"] = 500,
    },
    ["Miscellaneous"] = {
        ["Invisible"] = false,
        ['Auto Cyborg'] = true, -- Auto Turn On Cyborg
        ["Auto Race V4"] = true, -- Auto Turn On Race V4
        ["White Screen"]  = false, 
        ["Auto Buy Surprise"] = true,
        ['Say Message When Get Kill'] = {'Adel On Top'}, -- Auto Say Message What You Put In This When You Killed Players
        ["Auto Buy Randomand Store Fruit"] = true,
    },
    ["Weapons"] = {
        ["Melee"] = {
            ["Enable"] = true,
            ['Delay'] = 1,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 3,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 0,
                },

                ["C"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 0,
                },
            },
        },
        ["Blox Fruit"] = {
            ["Enable"] = false,
            ['Delay'] = 1,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 2,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 0,
                },

                ["C"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 0,
                },
                ["V"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 0,
                },
                ["F"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 0,
                },
            },
        },
        ["Gun"] = {
            ["Enable"] = true,
            ['Delay'] = 1,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 0,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 0,
                },
            },
        },
        ["Sword"] = {
            ["Enable"] = true,
            ['Delay'] = 1,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 0,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["Hold Time"] = 0,
                },
            },
        },
    }
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/AdelOnTheTop/Adel-Hub/main/BountyScript.lua'))()
