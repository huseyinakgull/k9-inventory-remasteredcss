Config = {
    OpenCommand = "inventory",
    InteractKey = 46, -- E
    Stashes = {
        coords = {
            vector3(-828.6, 167.97, 69.88)
        },
        textData = {
            closeText = "E - Open Stash",
            farText = "Open Stash",
            closeDist = 5.0,
            farDist = 10.0
        }
    },
    MotoDarkzone = {
        [GetHashKey("Oppressor")] = true,
        [GetHashKey("deathbike")] = true,
    },
}

Config.namecoin = "KCoins"

Config.namecmdgivecoin = "givecoin"

Config.LabelPermCrew = {
    [1] = "Member",
    [2] = "Admin",
    [3] = "Leader",
}