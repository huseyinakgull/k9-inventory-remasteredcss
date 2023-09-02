Config = {}

Config.CircleZones = {
	
	SAFEZONE1 = {coords = vector3(-110.44, -412.84, 35.72), name = 'Safezone', color = 4, sprite = 473, radius = 150.0},
  SAFEZONE2 = {coords = vector3(-1840.64172, -2334.70972, 14.9886131), name = 'Safezone', color = 4, sprite = 642, radius = 250.0},

}

Config.zones = {
	{ ['x'] = -110.44, ['y'] = -412.84, ['z'] = 35.72},
  { ['x'] = -1840.64172, ['y'] = -1840.64172, ['z'] = 14.9886131}
}


Config.Commands = {
  [1] = {
    key = "vip",
    desc = "OPEN VIP MENU",
  },
  [2] = {
    key = "Comming Soon",
    desc = "Comming Soon",
  },
}

Config.Keys = {
  [1] = {
    key = "J",
    desc = "SQUAD MENU",
  },
  [2] = {
    key = "K",
    desc = "STORE VEHICLE",
  },
  [3] = {
    key = "N",
    desc = "USE VOICE CHAT",
  },
  [4] = {
    key = "Z",
    desc = "USE MARKER",
  },
}


Config.PersonalStashes = {
  [1] = {
    coords = vector3(2770.86, 3468.49, 55.53),
    ped_heading = 66.79,
  },
  [2] = {
    coords = vector3(2538.64, -383.02, 92.99),
    ped_heading = 183.34,
  },
  [3] = {
    coords = vector3(1445.32, 6353.9, 23.82),
    ped_heading = 200.44,
  },
  [4] = {
    coords = vector3(720.79, -2091.33, 29.27),
    ped_heading = 263.76,
  },
  [5] = {
    coords = vector3(7.5, -646.55, 16.09),
    ped_heading = 257.28,
  }
}

Config.ShopsVehicle = {
  [1] = {
    coords = vector3(2544.44, -391.62, 92.99),
    ped_heading = 271.75,
    items = {
      [1] = {
        item = "bmx",
        label = "Bmx",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "bmx.png",
      },
      [2] = {
        item = "scarab",
        label = "Scarab",
        price = 3000,
        sellPrice = 2650, -- Per item
        type = "buy-sell",
        image = "scarab.png",
      },
      [3] = {
        item = "contender",
        label = "Contender",
        price = 150,
        sellPrice = 100, -- Per item
        type = "buy-sell",
        image = "contender.png",
      },
      [4] = {
        item = "baller6",
        label = "Baller (Armored)",
        price = 500,
        sellPrice = 450, -- Per item
        type = "buy-sell",
        image = "baller6.png",
      },
      [5] = {
        item = "brutus",
        label = "Brutus",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "brutus.png",
      },
      [6] = {
        item = "nightshark",
        label = "Nightshark",
        price = 3500,
        sellPrice = 2975, -- Per item
        type = "buy-sell",
        image = "nightshark.png",
      },
      [7] = {
        item = "vigilante",
        label = "Vigilante",
        price = 1000,
        sellPrice = 875, -- Per item
        type = "buy-sell",
        image = "vigilante.png",
      },
      [8] = {
        item = "slamvan",
        label = "Slamvan",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "slamvan.png",
      },
      [9] = {
        item = "impaler",
        label = "Impaler",
        price = 150,
        sellPrice = 100, -- Per item
        type = "buy-sell",
        image = "impaler.png",
      },
      [10] = {
        item = "issi6",
        label = "Issi",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "issi6.png",
      },
      [11] = {
        item = "zr380",
        label = "ZR380",
        price = 650,
        sellPrice = 595, -- Per item
        type = "buy-sell",
        image = "zr380.png",
      },
      [12] = {
        item = "dominator4",
        label = "Dominator",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "dominator4.png",
      },
      [13] = {
        item = "deathbike",
        label = "Deathbike",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "deathbike.png",
      },
      [14] = {
        item = "Bruiser",
        label = "Bruiser",
        price = 150,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "Bruiser.png",
      },
      [15] = {
        item = "oppressor",
        label = "Oppressor",
        price = 3000,
        sellPrice = 2800, -- Per item
        type = "buy-sell",
        image = "oppressor.png",
      },
      [16] = {
        item = "buzzard2",
        label = "Buzzard",
        price = 300,
        sellPrice = 250, -- Per item
        type = "buy-sell",
        image = "buzzard2.png",
      },
      [17] = {
        item = "ztype",
        label = "Z-Type",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "ztype.png",
      },
      [18] = {
        item = "revolter",
        label = "Revolter",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "revolter.png",
      },
      [19] = {
        item = "deluxo",
        label = "Deluxo",
        price = 4000,
        sellPrice = 3850, -- Per item
        type = "buy-sell",
        image = "deluxo.png",
      },
      [20] = {
        item = "thruster",
        label = "Thruster",
        price = 1000,
        sellPrice = 950, -- Per item
        type = "buy-sell",
        image = "Thruster.png",
      },
      [21] = {
        item = "dukes2",
        label = "Dukes",
        price = 1400,
        sellPrice = 200, -- Per item
        type = "buy-sell",
        image = "dukes2.png",
      },
    }
  },
  [2] = {
    coords = vector3(-1082.8, -1671.02, 4.7),
    ped_heading = 306.53,
    items = {
      [1] = {
        item = "bmx",
        label = "Bmx",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "bmx.png",
      },
      [2] = {
        item = "scarab",
        label = "Scarab",
        price = 3000,
        sellPrice = 2650, -- Per item
        type = "buy-sell",
        image = "scarab.png",
      },
      [3] = {
        item = "contender",
        label = "Contender",
        price = 150,
        sellPrice = 100, -- Per item
        type = "buy-sell",
        image = "contender.png",
      },
      [4] = {
        item = "baller6",
        label = "Baller (Armored)",
        price = 500,
        sellPrice = 450, -- Per item
        type = "buy-sell",
        image = "baller6.png",
      },
      [5] = {
        item = "brutus",
        label = "Brutus",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "brutus.png",
      },
      [6] = {
        item = "nightshark",
        label = "Nightshark",
        price = 3500,
        sellPrice = 2975, -- Per item
        type = "buy-sell",
        image = "nightshark.png",
      },
      [7] = {
        item = "vigilante",
        label = "Vigilante",
        price = 1000,
        sellPrice = 875, -- Per item
        type = "buy-sell",
        image = "vigilante.png",
      },
      [8] = {
        item = "slamvan",
        label = "Slamvan",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "slamvan.png",
      },
      [9] = {
        item = "impaler",
        label = "Impaler",
        price = 150,
        sellPrice = 100, -- Per item
        type = "buy-sell",
        image = "impaler.png",
      },
      [10] = {
        item = "issi6",
        label = "Issi",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "issi6.png",
      },
      [11] = {
        item = "zr380",
        label = "ZR380",
        price = 650,
        sellPrice = 595, -- Per item
        type = "buy-sell",
        image = "zr380.png",
      },
      [12] = {
        item = "dominator4",
        label = "Dominator",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "dominator4.png",
      },
      [13] = {
        item = "deathbike",
        label = "Deathbike",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "deathbike.png",
      },
      [14] = {
        item = "Bruiser",
        label = "Bruiser",
        price = 150,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "Bruiser.png",
      },
      [15] = {
        item = "oppressor",
        label = "Oppressor",
        price = 3000,
        sellPrice = 2800, -- Per item
        type = "buy-sell",
        image = "oppressor.png",
      },
      [16] = {
        item = "buzzard2",
        label = "Buzzard",
        price = 300,
        sellPrice = 250, -- Per item
        type = "buy-sell",
        image = "buzzard2.png",
      },
      [17] = {
        item = "ztype",
        label = "Z-Type",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "ztype.png",
      },
      [18] = {
        item = "revolter",
        label = "Revolter",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "revolter.png",
      },
      [19] = {
        item = "deluxo",
        label = "Deluxo",
        price = 4000,
        sellPrice = 3850, -- Per item
        type = "buy-sell",
        image = "deluxo.png",
      },
      [20] = {
        item = "thruster",
        label = "Thruster",
        price = 1000,
        sellPrice = 950, -- Per item
        type = "buy-sell",
        image = "Thruster.png",
      },
      [21] = {
        item = "dukes2",
        label = "Dukes",
        price = 1400,
        sellPrice = 200, -- Per item
        type = "buy-sell",
        image = "dukes2.png",
      },
    }
  },
  [3] = {
    coords = vector3(2735.69, 3495.59, 59.67),
    ped_heading = 153.03,
    items = {
      [1] = {
        item = "bmx",
        label = "Bmx",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "bmx.png",
      },
      [2] = {
        item = "scarab",
        label = "Scarab",
        price = 1900,
        sellPrice = 320, -- Per item
        type = "buy-sell",
        image = "scarab.png",
      },
      [3] = {
        item = "contender",
        label = "Contender",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "contender.png",
      },
      [4] = {
        item = "baller6",
        label = "Baller (Armored)",
        price = 900,
        sellPrice = 130, -- Per item
        type = "buy-sell",
        image = "baller6.png",
      },
      [5] = {
        item = "brutus",
        label = "Brutus",
        price = 200,
        sellPrice = 80, -- Per item
        type = "buy-sell",
        image = "brutus.png",
      },
      [6] = {
        item = "nightshark",
        label = "Nightshark",
        price = 2000,
        sellPrice = 350, -- Per item
        type = "buy-sell",
        image = "nightshark.png",
      },
      [7] = {
        item = "vigilante",
        label = "Vigilante",
        price = 1400,
        sellPrice = 200, -- Per item
        type = "buy-sell",
        image = "vigilante.png",
      },
      [8] = {
        item = "slamvan",
        label = "Slamvan",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "slamvan.png",
      },
      [9] = {
        item = "impaler",
        label = "Impaler",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "impaler.png",
      },
      [10] = {
        item = "issi6",
        label = "Issi",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "issi6.png",
      },
      [11] = {
        item = "zr380",
        label = "ZR380",
        price = 100,
        sellPrice = 50, -- Per item
        type = "buy-sell",
        image = "zr380.png",
      },
      [12] = {
        item = "dominator4",
        label = "Dominator",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "dominator4.png",
      },
      [13] = {
        item = "deathbike",
        label = "Deathbike",
        price = 130,
        sellPrice = 50, -- Per item
        type = "buy-sell",
        image = "deathbike.png",
      },
      [14] = {
        item = "Bruiser",
        label = "Bruiser",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "Bruiser.png",
      },
      [15] = {
        item = "oppressor",
        label = "Oppressor",
        price = 3000,
        sellPrice = 550, -- Per item
        type = "buy-sell",
        image = "oppressor.png",
      },
      [16] = {
        item = "buzzard2",
        label = "Buzzard",
        price = 200,
        sellPrice = 80, -- Per item
        type = "buy-sell",
        image = "buzzard2.png",
      },
      [17] = {
        item = "ztype",
        label = "Z-Type",
        price = 25,
        sellPrice = 5, -- Per item
        type = "buy-sell",
        image = "ztype.png",
      },
      [18] = {
        item = "revolter",
        label = "Revolter",
        price = 30,
        sellPrice = 10, -- Per item
        type = "buy-sell",
        image = "revolter.png",
      },
      [19] = {
        item = "deluxo",
        label = "Deluxo",
        price = 5000,
        sellPrice = 800, -- Per item
        type = "buy-sell",
        image = "deluxo.png",
      },
      [20] = {
        item = "thruster",
        label = "Thruster",
        price = 1400,
        sellPrice = 200, -- Per item
        type = "buy-sell",
        image = "Thruster.png",
      },
      [21] = {
        item = "dukes2",
        label = "Dukes",
        price = 1400,
        sellPrice = 200, -- Per item
        type = "buy-sell",
        image = "dukes2.png",
      },
    }
  },
  [4] = {
    coords = vector3(725.28, -2113.99, 29.24),
    ped_heading = 94.09,
    items = {
      [1] = {
        item = "bmx",
        label = "Bmx",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "bmx.png",
      },
      [2] = {
        item = "scarab",
        label = "Scarab",
        price = 3000,
        sellPrice = 2650, -- Per item
        type = "buy-sell",
        image = "scarab.png",
      },
      [3] = {
        item = "contender",
        label = "Contender",
        price = 150,
        sellPrice = 100, -- Per item
        type = "buy-sell",
        image = "contender.png",
      },
      [4] = {
        item = "baller6",
        label = "Baller (Armored)",
        price = 500,
        sellPrice = 450, -- Per item
        type = "buy-sell",
        image = "baller6.png",
      },
      [5] = {
        item = "brutus",
        label = "Brutus",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "brutus.png",
      },
      [6] = {
        item = "nightshark",
        label = "Nightshark",
        price = 3500,
        sellPrice = 2975, -- Per item
        type = "buy-sell",
        image = "nightshark.png",
      },
      [7] = {
        item = "vigilante",
        label = "Vigilante",
        price = 1000,
        sellPrice = 875, -- Per item
        type = "buy-sell",
        image = "vigilante.png",
      },
      [8] = {
        item = "slamvan",
        label = "Slamvan",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "slamvan.png",
      },
      [9] = {
        item = "impaler",
        label = "Impaler",
        price = 150,
        sellPrice = 100, -- Per item
        type = "buy-sell",
        image = "impaler.png",
      },
      [10] = {
        item = "issi6",
        label = "Issi",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "issi6.png",
      },
      [11] = {
        item = "zr380",
        label = "ZR380",
        price = 650,
        sellPrice = 595, -- Per item
        type = "buy-sell",
        image = "zr380.png",
      },
      [12] = {
        item = "dominator4",
        label = "Dominator",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "dominator4.png",
      },
      [13] = {
        item = "deathbike",
        label = "Deathbike",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "deathbike.png",
      },
      [14] = {
        item = "Bruiser",
        label = "Bruiser",
        price = 150,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "Bruiser.png",
      },
      [15] = {
        item = "oppressor",
        label = "Oppressor",
        price = 3000,
        sellPrice = 2800, -- Per item
        type = "buy-sell",
        image = "oppressor.png",
      },
      [16] = {
        item = "buzzard2",
        label = "Buzzard",
        price = 300,
        sellPrice = 250, -- Per item
        type = "buy-sell",
        image = "buzzard2.png",
      },
      [17] = {
        item = "ztype",
        label = "Z-Type",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "ztype.png",
      },
      [18] = {
        item = "revolter",
        label = "Revolter",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "revolter.png",
      },
      [19] = {
        item = "deluxo",
        label = "Deluxo",
        price = 4000,
        sellPrice = 3850, -- Per item
        type = "buy-sell",
        image = "deluxo.png",
      },
      [20] = {
        item = "thruster",
        label = "Thruster",
        price = 1000,
        sellPrice = 950, -- Per item
        type = "buy-sell",
        image = "Thruster.png",
      },
      [21] = {
        item = "dukes2",
        label = "Dukes",
        price = 1400,
        sellPrice = 200, -- Per item
        type = "buy-sell",
        image = "dukes2.png",
      },
    }
  },
  [5] = {
    coords = vector3(-1.95, -622.01, 15.73),
    ped_heading = 220.02,
    items = {
      [1] = {
        item = "bmx",
        label = "Bmx",
        price = 50,
        sellPrice = 20, -- Per item
        type = "buy-sell",
        image = "bmx.png",
      },
      [2] = {
        item = "scarab",
        label = "Scarab",
        price = 3000,
        sellPrice = 2650, -- Per item
        type = "buy-sell",
        image = "scarab.png",
      },
      [3] = {
        item = "contender",
        label = "Contender",
        price = 150,
        sellPrice = 100, -- Per item
        type = "buy-sell",
        image = "contender.png",
      },
      [4] = {
        item = "baller6",
        label = "Baller (Armored)",
        price = 500,
        sellPrice = 450, -- Per item
        type = "buy-sell",
        image = "baller6.png",
      },
      [5] = {
        item = "brutus",
        label = "Brutus",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "brutus.png",
      },
      [6] = {
        item = "nightshark",
        label = "Nightshark",
        price = 3500,
        sellPrice = 2975, -- Per item
        type = "buy-sell",
        image = "nightshark.png",
      },
      [7] = {
        item = "vigilante",
        label = "Vigilante",
        price = 1000,
        sellPrice = 875, -- Per item
        type = "buy-sell",
        image = "vigilante.png",
      },
      [8] = {
        item = "slamvan",
        label = "Slamvan",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "slamvan.png",
      },
      [9] = {
        item = "impaler",
        label = "Impaler",
        price = 150,
        sellPrice = 100, -- Per item
        type = "buy-sell",
        image = "impaler.png",
      },
      [10] = {
        item = "issi6",
        label = "Issi",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "issi6.png",
      },
      [11] = {
        item = "zr380",
        label = "ZR380",
        price = 650,
        sellPrice = 595, -- Per item
        type = "buy-sell",
        image = "zr380.png",
      },
      [12] = {
        item = "dominator4",
        label = "Dominator",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "dominator4.png",
      },
      [13] = {
        item = "deathbike",
        label = "Deathbike",
        price = 200,
        sellPrice = 150, -- Per item
        type = "buy-sell",
        image = "deathbike.png",
      },
      [14] = {
        item = "Bruiser",
        label = "Bruiser",
        price = 150,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "Bruiser.png",
      },
      [15] = {
        item = "oppressor",
        label = "Oppressor",
        price = 3000,
        sellPrice = 2800, -- Per item
        type = "buy-sell",
        image = "oppressor.png",
      },
      [16] = {
        item = "buzzard2",
        label = "Buzzard",
        price = 300,
        sellPrice = 250, -- Per item
        type = "buy-sell",
        image = "buzzard2.png",
      },
      [17] = {
        item = "ztype",
        label = "Z-Type",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "ztype.png",
      },
      [18] = {
        item = "revolter",
        label = "Revolter",
        price = 100,
        sellPrice = 75, -- Per item
        type = "buy-sell",
        image = "revolter.png",
      },
      [19] = {
        item = "deluxo",
        label = "Deluxo",
        price = 4000,
        sellPrice = 3850, -- Per item
        type = "buy-sell",
        image = "deluxo.png",
      },
      [20] = {
        item = "thruster",
        label = "Thruster",
        price = 1000,
        sellPrice = 950, -- Per item
        type = "buy-sell",
        image = "Thruster.png",
      },
      [21] = {
        item = "dukes2",
        label = "Dukes",
        price = 1400,
        sellPrice = 200, -- Per item
        type = "buy-sell",
        image = "dukes2.png",
      },
    }
  }
}

-- Pharmacy
Config.Shops = {
  [1] = {
    coords = vector3(2541.78, -378.06, 92.99), --SAFEZONE 5
    ped_heading = 269.79,
    items = {
      [1] = {
        item = "repairkit",
        label = "Repair Kit",
        price = 200,
        sellPrice = 10, -- Per item
        type = "buy-sell",
        image = "repairkit.png",
      },
      [2] = {
        item = "antizin",
        label = "Antizin Shot",
        price = 1000,
        sellPrice = 10, -- Per item
        type = "buy-sell",
        image = "antizin.png",
      },
    }
  },
  [2] = {
    coords = vector3(2742.18, 3466.28, 55.67), --SAFEZONE 4
    ped_heading = 69.09,
    items = {
      [1] = {
        item = "repairkit",
        label = "Repair Kit",
        price = 200,
        sellPrice = 10, -- Per item
        type = "buy-sell",
        image = "repairkit.png",
      },
      [2] = {
        item = "antizin",
        label = "Antizin Shot",
        price = 1000,
        sellPrice = 10, -- Per item
        type = "buy-sell",
        image = "antizin.png",
      },
    }
  },
  [3] = {
    coords = vector3(734.61, -2095.94, 29.45), --SAFEZONE 3
    ped_heading = 87.52,
    items = {
      [1] = {
        item = "repairkit",
        label = "Repair Kit",
        price = 200,
        sellPrice = 10, -- Per item
        type = "buy-sell",
        image = "repairkit.png",
      },
      [2] = {
        item = "antizin",
        label = "Antizin Shot",
        price = 1000,
        sellPrice = 10, -- Per item
        type = "buy-sell",
        image = "antizin.png",
      },
    }
  },
  [4] = {
    coords = vector3(16.31, -635.04, 16.09), --SAFEZONE 2
    ped_heading = 221.36,
    items = {
      [1] = {
        item = "repairkit",
        label = "Repair Kit",
        price = 200,
        sellPrice = 50, -- Per item
        type = "buy-sell",
        image = "repairkit.png",
      },
      [2] = {
        item = "antizin",
        label = "Antizin Shot",
        price = 1000,
        sellPrice = 200, -- Per item
        type = "buy-sell",
        image = "antizin.png",
      },
    }
  },
  [5] = {
    coords = vector3(1458.32, 6347.97, 23.83), --SAFEZONE 1
    ped_heading = 17.5,
    items = {
      [1] = {
        item = "repairkit",
        label = "Repair Kit",
        price = 200,
        sellPrice = 10, -- Per item
        type = "buy-sell",
        image = "repairkit.png",
      },
      [2] = {
        item = "antizin",
        label = "Antizin Shot",
        price = 1000,
        sellPrice = 10, -- Per item
        type = "buy-sell",
        image = "antizin.png",
      },
    }
  }
}

-- Weapon Rifle
Config.Shopssss = {
  [1] = {
    coords = vector3(2730.41, 3496.91, 55.67), --IKEA
    ped_heading = 246.78,
    items = {
      [1] = {
        item = "weapon_bullpuprifle_mk2",
        label = "Bullpup Rifle MK II",
        price = 350,
        sellPrice = 175,
        type = "buy-sell",
        image = "weapon_bullpuprifle_mk2.png",
      },
      [2] = {
        item = "weapon_sniperrifle",
        label = "Sniper Rifle",
        price = 6000,
        sellPrice = 5475,
        type = "buy-sell",
        image = "weapon_sniperrifle.png",
      },
      [3] = {
        item = "weapon_assaultsmg",
        label = "Assault SMG",
        price = 30,
        sellPrice = 15,
        type = "buy-sell",
        image = "weapon_assaultsmg.png",
      },
      [4] = {
        item = "weapon_marksmanrifle_mk2",
        label = "Marksman Rifle MK II",
        price = 7000,
        sellPrice = 6500,
        type = "buy-sell",
        image = "weapon_marksmanrifle_mk2.png",
      },
      [5] = {
        item = "weapon_specialcarbine",
        label = "Special Carbine",
        price = 300,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_specialcarbine.png",
      },
      [6] = {
        item = "Weapon_bullpuprifle",
        label = "Bullpup Rifle",
        price = 300,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_bullpuprifle.png",
      },
      [7] = {
        item = "weapon_pumpshotgun_mk2",
        label = "Pumpshotgun MK II",
        price = 5000,
        sellPrice = 4500,
        type = "buy-sell",
        image = "weapon_pumpshotgun_mk2.png",
      },
      [8] = {
        item = "weapon_combatmg",
        label = "M60",
        price = 500,
        sellPrice = 250,
        type = "buy-sell",
        image = "weapon_combatmg.png",
      },
      [9] = {
        item = "weapon_combatmg_mk2",
        label = "M60 MK II",
        price = 1000,
        sellPrice = 750,
        type = "buy-sell",
        image = "weapon_combatmg_mk2.png",
      },
      [10] = {
        item = "weapon_mg",
        label = "MG",
        price = 15000,
        sellPrice = 14000,
        type = "buy-sell",
        image = "weapon_mg.png",
      },
      [10] = {
        item = "weapon_heavysniper",
        label = "AWP",
        price = 15000,
        sellPrice = 14000,
        type = "buy-sell",
        image = "weapon_heavysniper.png",
      },
      [11] = {
        item = "weapon_heavysniper_mk2",
        label = "AWP MK II",
        price = 25000,
        sellPrice = 24000,
        type = "buy-sell",
        image = "weapon_heavysniper_mk2.png",
      },
      [12] = {
        item = "weapon_militaryrifle",
        label = "Military Rifle",
        price = 200,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_militaryrifle.png",
      },
      [13] = {
        item = "weapon_musket",
        label = "Musket",
        price = 5000,
        sellPrice = 4325,
        type = "buy-sell",
        image = "weapon_musket.png",
      },
      [14] = {
        item = "weapon_assaultrifle",
        label = "Assault Rifle",
        price = 150,
        sellPrice = 100,
        type = "buy-sell",
        image = "weapon_assaultrifle.png",
      },
      [15] = {
        item = "weapon_assaultrifle_mk2",
        label = "Assault Rifle MK II",
        price = 450,
        sellPrice = 350,
        type = "buy-sell",
        image = "weapon_assaultrifle_mk2.png",
      },
      [16] = {
        item = "weapon_carbinerifle_mk2",
        label = "Carbine Rifle MK II",
        price = 450,
        sellPrice = 350,
        type = "buy-sell",
        image = "weapon_carbinerifle_mk2.png",
      },
      [17] = {
        item = "weapon_carbinerifle",
        label = "Carbine Rifle",
        price = 150,
        sellPrice = 75,
        type = "buy-sell",
        image = "weapon_carbinerifle.png",
      },
      [18] = {
        item = "weapon_hominglauncher",
        label = "Homing Launcher",
        price = 9000,
        sellPrice = 8450,
        type = "buy-sell",
        image = "weapon_hominglauncher.png",
      },
      [19] = {
        item = "weapon_bat",
        label = "Bat",
        price = 0,
        sellPrice = 0,
        type = "buy-sell",
        image = "weapon_bat.png",
      },
      [20] = {
        item = "weapon_marksmanrifle",
        label = "Marksman Rifle",
        price = 6000,
        sellPrice = 5485,
        type = "buy-sell",
        image = "weapon_marksmanrifle.png",
      },
    }
  },
  [2] = {
    coords = vector3(1444.66, 6346.19, 23.83), --RANDOM
    ped_heading = 0.25,
    items = {
      [1] = {
        item = "weapon_bullpuprifle_mk2",
        label = "Bullpup Rifle MK II",
        price = 350,
        sellPrice = 175,
        type = "buy-sell",
        image = "weapon_bullpuprifle_mk2.png",
      },
      [2] = {
        item = "weapon_sniperrifle",
        label = "Sniper Rifle",
        price = 6000,
        sellPrice = 5475,
        type = "buy-sell",
        image = "weapon_sniperrifle.png",
      },
      [3] = {
        item = "weapon_assaultsmg",
        label = "Assault SMG",
        price = 30,
        sellPrice = 15,
        type = "buy-sell",
        image = "weapon_assaultsmg.png",
      },
      [4] = {
        item = "weapon_marksmanrifle_mk2",
        label = "Marksman Rifle MK II",
        price = 7000,
        sellPrice = 6500,
        type = "buy-sell",
        image = "weapon_marksmanrifle_mk2.png",
      },
      [5] = {
        item = "weapon_specialcarbine",
        label = "Special Carbine",
        price = 300,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_specialcarbine.png",
      },
      [6] = {
        item = "Weapon_bullpuprifle",
        label = "Bullpup Rifle",
        price = 300,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_bullpuprifle.png",
      },
      [7] = {
        item = "weapon_pumpshotgun_mk2",
        label = "Pumpshotgun MK II",
        price = 5000,
        sellPrice = 4500,
        type = "buy-sell",
        image = "weapon_pumpshotgun_mk2.png",
      },
      [8] = {
        item = "weapon_combatmg",
        label = "M60",
        price = 500,
        sellPrice = 250,
        type = "buy-sell",
        image = "weapon_combatmg.png",
      },
      [9] = {
        item = "weapon_combatmg_mk2",
        label = "M60 MK II",
        price = 1000,
        sellPrice = 750,
        type = "buy-sell",
        image = "weapon_combatmg_mk2.png",
      },
      [10] = {
        item = "weapon_mg",
        label = "MG",
        price = 15000,
        sellPrice = 14000,
        type = "buy-sell",
        image = "weapon_mg.png",
      },
      [10] = {
        item = "weapon_heavysniper",
        label = "AWP",
        price = 15000,
        sellPrice = 14000,
        type = "buy-sell",
        image = "weapon_heavysniper.png",
      },
      [11] = {
        item = "weapon_heavysniper_mk2",
        label = "AWP MK II",
        price = 25000,
        sellPrice = 24000,
        type = "buy-sell",
        image = "weapon_heavysniper_mk2.png",
      },
      [12] = {
        item = "weapon_militaryrifle",
        label = "Military Rifle",
        price = 200,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_militaryrifle.png",
      },
      [13] = {
        item = "weapon_musket",
        label = "Musket",
        price = 5000,
        sellPrice = 4325,
        type = "buy-sell",
        image = "weapon_musket.png",
      },
      [14] = {
        item = "weapon_assaultrifle",
        label = "Assault Rifle",
        price = 150,
        sellPrice = 100,
        type = "buy-sell",
        image = "weapon_assaultrifle.png",
      },
      [15] = {
        item = "weapon_assaultrifle_mk2",
        label = "Assault Rifle MK II",
        price = 450,
        sellPrice = 350,
        type = "buy-sell",
        image = "weapon_assaultrifle_mk2.png",
      },
      [16] = {
        item = "weapon_carbinerifle_mk2",
        label = "Carbine Rifle MK II",
        price = 450,
        sellPrice = 350,
        type = "buy-sell",
        image = "weapon_carbinerifle_mk2.png",
      },
      [17] = {
        item = "weapon_carbinerifle",
        label = "Carbine Rifle",
        price = 150,
        sellPrice = 75,
        type = "buy-sell",
        image = "weapon_carbinerifle.png",
      },
      [18] = {
        item = "weapon_hominglauncher",
        label = "Homing Launcher",
        price = 9000,
        sellPrice = 8450,
        type = "buy-sell",
        image = "weapon_hominglauncher.png",
      },
      [19] = {
        item = "weapon_bat",
        label = "Bat",
        price = 0,
        sellPrice = 0,
        type = "buy-sell",
        image = "weapon_bat.png",
      },
      [20] = {
        item = "weapon_marksmanrifle",
        label = "Marksman Rifle",
        price = 6000,
        sellPrice = 5485,
        type = "buy-sell",
        image = "weapon_marksmanrifle.png",
      },
    }
  },
  [3] = {
    coords = vector3(46.14, -661.05, 16.48), --BURACO
    ped_heading = 342.05,
    items = {
      [1] = {
        item = "weapon_bullpuprifle_mk2",
        label = "Bullpup Rifle MK II",
        price = 350,
        sellPrice = 175,
        type = "buy-sell",
        image = "weapon_bullpuprifle_mk2.png",
      },
      [2] = {
        item = "weapon_sniperrifle",
        label = "Sniper Rifle",
        price = 6000,
        sellPrice = 5475,
        type = "buy-sell",
        image = "weapon_sniperrifle.png",
      },
      [3] = {
        item = "weapon_assaultsmg",
        label = "Assault SMG",
        price = 30,
        sellPrice = 15,
        type = "buy-sell",
        image = "weapon_assaultsmg.png",
      },
      [4] = {
        item = "weapon_marksmanrifle_mk2",
        label = "Marksman Rifle MK II",
        price = 7000,
        sellPrice = 6500,
        type = "buy-sell",
        image = "weapon_marksmanrifle_mk2.png",
      },
      [5] = {
        item = "weapon_specialcarbine",
        label = "Special Carbine",
        price = 300,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_specialcarbine.png",
      },
      [6] = {
        item = "Weapon_bullpuprifle",
        label = "Bullpup Rifle",
        price = 300,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_bullpuprifle.png",
      },
      [7] = {
        item = "weapon_pumpshotgun_mk2",
        label = "Pumpshotgun MK II",
        price = 5000,
        sellPrice = 4500,
        type = "buy-sell",
        image = "weapon_pumpshotgun_mk2.png",
      },
      [8] = {
        item = "weapon_combatmg",
        label = "M60",
        price = 500,
        sellPrice = 250,
        type = "buy-sell",
        image = "weapon_combatmg.png",
      },
      [9] = {
        item = "weapon_combatmg_mk2",
        label = "M60 MK II",
        price = 1000,
        sellPrice = 750,
        type = "buy-sell",
        image = "weapon_combatmg_mk2.png",
      },
      [10] = {
        item = "weapon_mg",
        label = "MG",
        price = 15000,
        sellPrice = 14000,
        type = "buy-sell",
        image = "weapon_mg.png",
      },
      [10] = {
        item = "weapon_heavysniper",
        label = "AWP",
        price = 15000,
        sellPrice = 14000,
        type = "buy-sell",
        image = "weapon_heavysniper.png",
      },
      [11] = {
        item = "weapon_heavysniper_mk2",
        label = "AWP MK II",
        price = 25000,
        sellPrice = 24000,
        type = "buy-sell",
        image = "weapon_heavysniper_mk2.png",
      },
      [12] = {
        item = "weapon_militaryrifle",
        label = "Military Rifle",
        price = 200,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_militaryrifle.png",
      },
      [13] = {
        item = "weapon_musket",
        label = "Musket",
        price = 5000,
        sellPrice = 4325,
        type = "buy-sell",
        image = "weapon_musket.png",
      },
      [14] = {
        item = "weapon_assaultrifle",
        label = "Assault Rifle",
        price = 150,
        sellPrice = 100,
        type = "buy-sell",
        image = "weapon_assaultrifle.png",
      },
      [15] = {
        item = "weapon_assaultrifle_mk2",
        label = "Assault Rifle MK II",
        price = 450,
        sellPrice = 350,
        type = "buy-sell",
        image = "weapon_assaultrifle_mk2.png",
      },
      [16] = {
        item = "weapon_carbinerifle_mk2",
        label = "Carbine Rifle MK II",
        price = 450,
        sellPrice = 350,
        type = "buy-sell",
        image = "weapon_carbinerifle_mk2.png",
      },
      [17] = {
        item = "weapon_carbinerifle",
        label = "Carbine Rifle",
        price = 150,
        sellPrice = 75,
        type = "buy-sell",
        image = "weapon_carbinerifle.png",
      },
      [18] = {
        item = "weapon_hominglauncher",
        label = "Homing Launcher",
        price = 9000,
        sellPrice = 8450,
        type = "buy-sell",
        image = "weapon_hominglauncher.png",
      },
      [19] = {
        item = "weapon_bat",
        label = "Bat",
        price = 0,
        sellPrice = 0,
        type = "buy-sell",
        image = "weapon_bat.png",
      },
      [20] = {
        item = "weapon_marksmanrifle",
        label = "Marksman Rifle",
        price = 6000,
        sellPrice = 5485,
        type = "buy-sell",
        image = "weapon_marksmanrifle.png",
      },
    }
  },
  [5] = {
    coords = vector3(2552.98, -361.69, 92.99),
    ped_heading = 178.15,
    items = {
      [1] = {
        item = "weapon_bullpuprifle_mk2",
        label = "Bullpup Rifle MK II",
        price = 350,
        sellPrice = 175,
        type = "buy-sell",
        image = "weapon_bullpuprifle_mk2.png",
      },
      [2] = {
        item = "weapon_sniperrifle",
        label = "Sniper Rifle",
        price = 6000,
        sellPrice = 5475,
        type = "buy-sell",
        image = "weapon_sniperrifle.png",
      },
      [3] = {
        item = "weapon_assaultsmg",
        label = "Assault SMG",
        price = 30,
        sellPrice = 15,
        type = "buy-sell",
        image = "weapon_assaultsmg.png",
      },
      [4] = {
        item = "weapon_marksmanrifle_mk2",
        label = "Marksman Rifle MK II",
        price = 7000,
        sellPrice = 6500,
        type = "buy-sell",
        image = "weapon_marksmanrifle_mk2.png",
      },
      [5] = {
        item = "weapon_specialcarbine",
        label = "Special Carbine",
        price = 300,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_specialcarbine.png",
      },
      [6] = {
        item = "Weapon_bullpuprifle",
        label = "Bullpup Rifle",
        price = 300,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_bullpuprifle.png",
      },
      [7] = {
        item = "weapon_pumpshotgun_mk2",
        label = "Pumpshotgun MK II",
        price = 5000,
        sellPrice = 4500,
        type = "buy-sell",
        image = "weapon_pumpshotgun_mk2.png",
      },
      [8] = {
        item = "weapon_combatmg",
        label = "M60",
        price = 500,
        sellPrice = 250,
        type = "buy-sell",
        image = "weapon_combatmg.png",
      },
      [9] = {
        item = "weapon_combatmg_mk2",
        label = "M60 MK II",
        price = 1000,
        sellPrice = 750,
        type = "buy-sell",
        image = "weapon_combatmg_mk2.png",
      },
      [10] = {
        item = "weapon_mg",
        label = "MG",
        price = 15000,
        sellPrice = 14000,
        type = "buy-sell",
        image = "weapon_mg.png",
      },
      [10] = {
        item = "weapon_heavysniper",
        label = "AWP",
        price = 15000,
        sellPrice = 14000,
        type = "buy-sell",
        image = "weapon_heavysniper.png",
      },
      [11] = {
        item = "weapon_heavysniper_mk2",
        label = "AWP MK II",
        price = 25000,
        sellPrice = 24000,
        type = "buy-sell",
        image = "weapon_heavysniper_mk2.png",
      },
      [12] = {
        item = "weapon_militaryrifle",
        label = "Military Rifle",
        price = 200,
        sellPrice = 150,
        type = "buy-sell",
        image = "weapon_militaryrifle.png",
      },
      [13] = {
        item = "weapon_musket",
        label = "Musket",
        price = 5000,
        sellPrice = 4325,
        type = "buy-sell",
        image = "weapon_musket.png",
      },
      [14] = {
        item = "weapon_assaultrifle",
        label = "Assault Rifle",
        price = 150,
        sellPrice = 100,
        type = "buy-sell",
        image = "weapon_assaultrifle.png",
      },
      [15] = {
        item = "weapon_assaultrifle_mk2",
        label = "Assault Rifle MK II",
        price = 450,
        sellPrice = 350,
        type = "buy-sell",
        image = "weapon_assaultrifle_mk2.png",
      },
      [16] = {
        item = "weapon_carbinerifle_mk2",
        label = "Carbine Rifle MK II",
        price = 450,
        sellPrice = 350,
        type = "buy-sell",
        image = "weapon_carbinerifle_mk2.png",
      },
      [17] = {
        item = "weapon_carbinerifle",
        label = "Carbine Rifle",
        price = 150,
        sellPrice = 75,
        type = "buy-sell",
        image = "weapon_carbinerifle.png",
      },
      [18] = {
        item = "weapon_hominglauncher",
        label = "Homing Launcher",
        price = 9000,
        sellPrice = 8450,
        type = "buy-sell",
        image = "weapon_hominglauncher.png",
      },
      [19] = {
        item = "weapon_bat",
        label = "Bat",
        price = 0,
        sellPrice = 0,
        type = "buy-sell",
        image = "weapon_bat.png",
      },
      [20] = {
        item = "weapon_marksmanrifle",
        label = "Marksman Rifle",
        price = 6000,
        sellPrice = 5485,
        type = "buy-sell",
        image = "weapon_marksmanrifle.png",
      },
    }
  }
}


-- Don't touch
Config.Permissions = {
  {
    type = "KICK",
    label = "Kick",
    permissionPower = 1,
    displayInActions = false,
  },
  {
    type = "INVITE",
    label = "Invite",
    permissionPower = 1,
    displayInActions = false,

  },
  {
    type = "DISPLAY_MANAGEMENT_PAGE",
    label = "Display Management Page",
    permissionPower = 1,
    displayInActions = false,

  },
  {
    type = "ADD_RANK",
    label = "Add Rank",
    permissionPower = 1,
    displayInActions = false,

  },
  {
    type = "CHANGE_LOGO",
    label = "Change Logo",
    permissionPower = 1,
    displayInActions = true,

  },
  {
    type = "CHANGE_CREWNAME",
    label = "Change Crewname",
    permissionPower = 1,
    displayInActions = true,

  },
  {
    type = "CHANGE_COUNTRY",
    label = "Change Country",
    permissionPower = 1,
    displayInActions = true,

  },
  {
    type = "PROMOTE",
    label = "Promote",
    permissionPower = 1,
    displayInActions = false,

  },
  {
    type = "DEMOTE",
    label = "Demote",
    permissionPower = 1,
    displayInActions = false,

  }
}