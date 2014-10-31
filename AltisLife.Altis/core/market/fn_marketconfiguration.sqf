/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = 
[
	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
	
	["goldbar", 120000, 60000, 350000, 12, 1,
		[
			["diamondc",5], //If you sell 1x goldbar, the market system will "buy" 1x diamondc => diamondc price will increase due to more demand of diamondc than supply
			["oilp",3],
			["iron_r",6],
			["salt_r",3],
			["cement",3],
			["copper_r",5],
			["glass",6],
			["zigaretten",4],
			["wine",3],
            ["uran238",1]
		]
	],
	
	["oilp", 3750, 2000, 6500, 6, 1, 
		[
			["goldbar",3],
			["diamondc",2],
			["iron_r",2],
			["salt_r",2],
			["cement",2],
			["copper_r",2],
			["glass",2],
			["wine",2],
			["zigaretten",2],
            ["uran238",2]
		]
	],
	
	["iron_r", 4100, 1900, 6200, 6, 1,  
		[
			["diamondc",1], 
			["oilp",1],
			["goldbar",1],
			["salt_r",1],
			["cement",1],
			["copper_r",1],
			["glass",1],
			["wine",1],
			["zigaretten",1],
            ["uran238",1]
		]
	],
	
	["diamondc", 3500, 2000, 5000, 8, 2, 
		[
			["goldbar",3], 
			["oilp",3],
			["iron_r",3],
			["salt_r",3],
			["cement",3],
			["copper_r",3],
			["glass",5],
			["wine",2],
			["zigaretten",3],
            ["uran238",2]
		]
	],
	
	["copper_r", 1995, 1000, 3000, 6, 1, 
		[
			["goldbar",4],
            ["oilp",4],
            ["iron_r",4],
            ["salt_r",4],
            ["cement",4],
            ["diamond_c",4],
            ["glass",5],
            ["wine",2],
            ["zigaretten",5],
            ["uran238",5]
		]
	],
	
	["salt_r", 2250, 1150, 3850, 6, 1, 
		[
			["diamondc",6], 
			["oilp",7],
			["iron_r",7],
			["copper_r",5],
			["goldbar",7],
			["cement",5],
			["glass",5],
			["wine",4],
			["zigaretten",6],
            ["uran238",6]
		]
	],
	
	["glass", 2250, 1400, 4000, 6, 1, 
		[
			["diamondc",5], 
			["oilp",5],
			["iron_r",5],
			["copper_r",5],
			["salt_r",5],
			["cement",5],
			["goldbar",5],
			["wine",1],
			["zigaretten",5],
            ["uran238",5]
		]
	],
	
	["cement", 4000, 2000, 7600, 6, 1, 
		[
			["diamondc",4], 
			["oilp",4],
			["iron_r",4],
			["copper_r",4],
			["salt_r",4],
			["goldbar",4],
			["glass",4],
			["wine",4],
			["zigaretten",4],
            ["uran238",4]
		]
	],
	
	["wine", 2050, 1000, 3500, 4, 1, 
		[
			["diamondc",7], 
			["oilp",6],
			["iron_r",5],
			["goldbar",7],
			["copper_r",8],
			["salt_r",4],
			["cement",6],
			["glass",7],
			["zigaretten",5],
			["uran238",7]
		]
	],

	["uran238", 7000, 3000, 8500, 3, 2,
		[
			["diamondc",1],
            ["oilp",1],
            ["iron_r",1],
            ["goldbar",1],
            ["copper_r",1],
            ["salt_r",1],
            ["cement",1],
            ["glass",1],
            ["zigaretten",1],
            ["wine",1]
		]
	],

    ["zigaretten", 2155, 1000, 3800, 3, 5,
        [
			["diamondc",1],
            ["oilp",1],
            ["iron_r",1],
            ["goldbar",1],
            ["copper_r",1],
            ["salt_r",1],
            ["cement",1],
            ["glass",1],
            ["uran238",1],
            ["wine",1]
        ]
    ],
	
	// ILLEGAL //
	["cocainep", 5500, 2500, 7500, 5, 2,
		[
			["heroinp",1],
			["warhead",1],
			["zigarren",1],
			["marijuana",1],
			["methp",1],
			["moonshine",1],
			["turtle",1]
		]
	],
	
	["heroinp", 5850, 2500, 7000, 5, 2,
		[
			["cocainep",1],
			["warhead",1],
			["zigarren",1],
			["marijuana",1],
			["methp",1],
			["moonshine",1],
			["turtle",1]
		]
	],
	
	["marijuana", 4000, 2000, 6000, 5, 2,
		[
			["cocainep",1],
			["warhead",1],
			["zigarren",1],
			["heroinp",1],
			["methp",1],
			["moonshine",1],
			["turtle",1]
		]
	],
/*
	["scoobysnax", 12000, 3000, 17000, 3, 2,
		[
			["heroinp",3],
			["cocainep",3],
			["marijuana",3],
			["turtle",1]
		]
	],	
*/
	["methp", 7000, 3250, 10150, 5, 2,
		[
			["cocainep",1],
			["warhead",1],
			["zigarren",1],
			["heroinp",1],
			["marijuana",1],
			["moonshine",1],
			["turtle",1]
		]
	],
	
	["moonshine", 2100, 1000, 4300, 5, 2,
		[
			["cocainep",1],
			["warhead",1],
			["zigarren",1],
			["heroinp",1],
			["marijuana",1],
			["methp",1],
			["turtle",1]
		]
	],
	
	["turtle", 18000, 15000, 25000, 6, 2,  
		[
			["cocainep",1],
			["warhead",1],
			["zigarren",1],
			["heroinp",1],
			["marijuana",1],
			["methp",1],
			["moonshine",1]
		]
	],

    ["zigarren", 3200, 1600, 5900, 5, 3,
        [
            ["cocainep",2],
            ["warhead",2],
            ["heroinp",2],
            ["marijuana",2],
            ["methp",2],
            ["moonshine",2]
        ]
    ],

    ["warhead", 9250, 7500, 11500, 9, 4,
        [
            ["cocainep",2],
            ["zigarren",2],
            ["heroinp",2],
            ["marijuana",2],
            ["methp",2],
            ["moonshine",2]
        ]
    ]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
life_market_shortnames = []; //shortnames if in market

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";

	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
