import crafttweaker.item.IItemStack;

var STAGE = STAGES.three;

////
//
//Stage 3 Item Hiding
//
////

//mods.ItemStages.addItemStage(String stage, Item/Block/OreDict);

var modIDs = [
	"immersivepetroleum",
	"immersivetech",
	"nex",
	"openglider",
	"vc"
] as string[];

for id in modIDs {
    for item in loadedMods[id].items {
        mods.ItemStages.addItemStage(STAGE, item);
    }
}

var stage3Items = [
	<minecraft:chest_minecart>,
	<minecraft:dispenser>,
	<minecraft:dropper>,
	<minecraft:furnace_minecart>,
	<minecraft:glowstone>,
	<minecraft:glowstone_dust>,
	<minecraft:hopper_minecart>,
	<minecraft:lingering_potion:*>,
	<minecraft:minecart>,
	<minecraft:noteblock>,
	<minecraft:observer>,
	<minecraft:potion:*>,
	<minecraft:record_11>,
	<minecraft:record_13>,
	<minecraft:record_blocks>,
	<minecraft:record_cat>,
	<minecraft:record_chirp>,
	<minecraft:record_far>,
	<minecraft:record_mall>,
	<minecraft:record_mellohi>,
	<minecraft:record_stal>,
	<minecraft:record_strad>,
	<minecraft:record_wait>,
	<minecraft:record_ward>,
	<minecraft:skull:1>,
	<minecraft:soul_sand>,
	<minecraft:splash_potion:*>,
	<minecraft:tipped_arrow:*>,
	<minecraft:tnt_minecart>,
	<minecraft:trapped_chest>,
	<minecraft:enchanting_table>,
	<minecraft:beacon>,
	<minecraft:ender_chest>,
	<prospectors:prospector_med>,

	//Ore
	<immersiveengineering:ore:1>,
	<immersiveengineering:ore:2>,
	<immersiveengineering:ore:3>,
	<immersiveengineering:ore:4>,

	//Plate
	<immersiveengineering:metal:31>,
	<immersiveengineering:metal:32>,
	<immersiveengineering:metal:33>,
	<immersiveengineering:metal:34>,
	<immersiveengineering:metal:36>,
	<immersiveengineering:metal:37>,

	//Nether
	<minecraft:blaze_powder>,
	<minecraft:blaze_rod>,
	<minecraft:brewing_stand>,
	<minecraft:ender_eye>,
	<minecraft:fire_charge>,
	<minecraft:ghast_tear>,
	<minecraft:magma>,
	<minecraft:magma_cream>,
	<minecraft:nether_brick>,
	<minecraft:nether_wart>,
	<minecraft:nether_wart_block>,
	<minecraft:netherbrick>,
	<minecraft:netherrack>,
	<minecraft:quartz>,
	<minecraft:quartz_ore>,
	<minecraft:red_nether_brick>,
	<minecraft:stone_slab:6>,
	<primal:arrow_quartz>,
	<primal:quartz_axe>,
	<primal:quartz_clippers>,
	<primal:quartz_gallagher>,
	<primal:quartz_hatchet>,
	<primal:quartz_hoe>,
	<primal:quartz_knapp>,
	<primal:quartz_pickaxe>,
	<primal:quartz_point>,
	<primal:quartz_saw>,
	<primal:quartz_shears>,
	<primal:quartz_shovel>,
	<primal:quartz_workblade>,

	//Chisel
	<chisel:blockaluminum:*>,
	<chisel:blockcobalt:*>,
	<chisel:blockelectrum:*>,
	<chisel:blocklead:*>,
	<chisel:blocknickel:*>,
	<chisel:blockplatinum:*>,
	<chisel:blocksilver:*>,
	<chisel:blocksteel:*>,
	<chisel:blocksteel:*>,
	<chisel:energizedvoidstone:*>,
	<chisel:factory1:*>,
	<chisel:factory:*>,
	<chisel:futura:*>,
	<chisel:glowstone1:*>,
	<chisel:glowstone2:*>,
	<chisel:glowstone:*>,
	<chisel:laboratory:*>,
	<chisel:netherbrick:*>,
	<chisel:netherrack:*>,
	<chisel:obsidian:*>,
	<chisel:quartz1:*>,
	<chisel:quartz:*>,
	<chisel:redstone1:*>,
	<chisel:redstone:*>,
	<chisel:technical1:*>,
	<chisel:technical:*>,
	<chisel:technicalnew:*>,
	<chisel:tyrian:*>,
	<chisel:voidstone:*>,
	<chisel:voidstonerunic:*>,

	//Redstone
	<ceramics:clay_bucket>.withTag({fluids: {FluidName: "redstone", Amount: 1000}}),
	<ceramics:clay_bucket>.withTag({fluids: {FluidName: "redstone_alloy", Amount: 1000}}),
	<cyclicmagic:builder_block>,
	<cyclicmagic:clock>,
	<cyclicmagic:placer_block>,
	<minecraft:activator_rail>,
	<minecraft:comparator>,
	<minecraft:comparator>,
	<minecraft:daylight_detector>,
	<minecraft:dropper>,
	<minecraft:redstone_lamp>,
	<minecraft:redstone_ore>,
	<minecraft:redstone_torch>,
	<minecraft:redstone_torch>,
	<minecraft:repeater>,
	<minecraft:repeater>,

	//Steves Carts
	<stevescarts:blockactivator>,
	<stevescarts:blockadvdetector>,
	<stevescarts:blockcargomanager>,
	<stevescarts:blockcartassembler>,
	<stevescarts:blockdetector:1>,
	<stevescarts:blockdetector:2>,
	<stevescarts:blockdetector:3>,
	<stevescarts:blockdetector:4>,
	<stevescarts:blockdetector>,
	<stevescarts:blockdistributor>,
	<stevescarts:blockjunction>,
	<stevescarts:blockliquidmanager>,
	<stevescarts:blockmetalstorage:1>,
	<stevescarts:blockmetalstorage:2>,
	<stevescarts:blockmetalstorage>,
	<stevescarts:cartmodule:101>,
	<stevescarts:cartmodule:10>,
	<stevescarts:cartmodule:11>,
	<stevescarts:cartmodule:12>,
	<stevescarts:cartmodule:13>,
	<stevescarts:cartmodule:14>,
	<stevescarts:cartmodule:15>,
	<stevescarts:cartmodule:16>,
	<stevescarts:cartmodule:18>,
	<stevescarts:cartmodule:19>,
	<stevescarts:cartmodule:1>,
	<stevescarts:cartmodule:20>,
	<stevescarts:cartmodule:21>,
	<stevescarts:cartmodule:22>,
	<stevescarts:cartmodule:23>,
	<stevescarts:cartmodule:24>,
	<stevescarts:cartmodule:25>,
	<stevescarts:cartmodule:26>,
	<stevescarts:cartmodule:27>,
	<stevescarts:cartmodule:28>,
	<stevescarts:cartmodule:29>,
	<stevescarts:cartmodule:2>,
	<stevescarts:cartmodule:30>,
	<stevescarts:cartmodule:31>,
	<stevescarts:cartmodule:32>,
	<stevescarts:cartmodule:33>,
	<stevescarts:cartmodule:34>,
	<stevescarts:cartmodule:36>,
	<stevescarts:cartmodule:37>,
	<stevescarts:cartmodule:38>,
	<stevescarts:cartmodule:39>,
	<stevescarts:cartmodule:3>,
	<stevescarts:cartmodule:40>,
	<stevescarts:cartmodule:41>,
	<stevescarts:cartmodule:42>,
	<stevescarts:cartmodule:43>,
	<stevescarts:cartmodule:44>,
	<stevescarts:cartmodule:45>,
	<stevescarts:cartmodule:49>,
	<stevescarts:cartmodule:4>,
	<stevescarts:cartmodule:51>,
	<stevescarts:cartmodule:53>,
	<stevescarts:cartmodule:56>,
	<stevescarts:cartmodule:57>,
	<stevescarts:cartmodule:58>,
	<stevescarts:cartmodule:59>,
	<stevescarts:cartmodule:5>,
	<stevescarts:cartmodule:61>,
	<stevescarts:cartmodule:62>,
	<stevescarts:cartmodule:63>,
	<stevescarts:cartmodule:64>,
	<stevescarts:cartmodule:65>,
	<stevescarts:cartmodule:66>,
	<stevescarts:cartmodule:67>,
	<stevescarts:cartmodule:68>,
	<stevescarts:cartmodule:69>,
	<stevescarts:cartmodule:6>,
	<stevescarts:cartmodule:70>,
	<stevescarts:cartmodule:71>,
	<stevescarts:cartmodule:72>,
	<stevescarts:cartmodule:73>,
	<stevescarts:cartmodule:75>,
	<stevescarts:cartmodule:76>,
	<stevescarts:cartmodule:77>,
	<stevescarts:cartmodule:78>,
	<stevescarts:cartmodule:79>,
	<stevescarts:cartmodule:7>,
	<stevescarts:cartmodule:80>,
	<stevescarts:cartmodule:81>,
	<stevescarts:cartmodule:82>,
	<stevescarts:cartmodule:83>,
	<stevescarts:cartmodule:84>,
	<stevescarts:cartmodule:85>,
	<stevescarts:cartmodule:86>,
	<stevescarts:cartmodule:87>,
	<stevescarts:cartmodule:89>,
	<stevescarts:cartmodule:8>,
	<stevescarts:cartmodule:91>,
	<stevescarts:cartmodule:92>,
	<stevescarts:cartmodule:93>,
	<stevescarts:cartmodule:94>,
	<stevescarts:cartmodule:95>,
	<stevescarts:cartmodule:99>,
	<stevescarts:cartmodule:9>,
	<stevescarts:modulecomponents:0>,
	<stevescarts:modulecomponents:10>,
	<stevescarts:modulecomponents:11>,
	<stevescarts:modulecomponents:12>,
	<stevescarts:modulecomponents:13>,
	<stevescarts:modulecomponents:14>,
	<stevescarts:modulecomponents:15>,
	<stevescarts:modulecomponents:16>,
	<stevescarts:modulecomponents:17>,
	<stevescarts:modulecomponents:18>,
	<stevescarts:modulecomponents:19>,
	<stevescarts:modulecomponents:1>,
	<stevescarts:modulecomponents:20>,
	<stevescarts:modulecomponents:21>,
	<stevescarts:modulecomponents:22>,
	<stevescarts:modulecomponents:23>,
	<stevescarts:modulecomponents:24>,
	<stevescarts:modulecomponents:25>,
	<stevescarts:modulecomponents:26>,
	<stevescarts:modulecomponents:27>,
	<stevescarts:modulecomponents:28>,
	<stevescarts:modulecomponents:29>,
	<stevescarts:modulecomponents:2>,
	<stevescarts:modulecomponents:30>,
	<stevescarts:modulecomponents:31>,
	<stevescarts:modulecomponents:32>,
	<stevescarts:modulecomponents:33>,
	<stevescarts:modulecomponents:34>,
	<stevescarts:modulecomponents:35>,
	<stevescarts:modulecomponents:36>,
	<stevescarts:modulecomponents:37>,
	<stevescarts:modulecomponents:38>,
	<stevescarts:modulecomponents:39>,
	<stevescarts:modulecomponents:3>,
	<stevescarts:modulecomponents:40>,
	<stevescarts:modulecomponents:41>,
	<stevescarts:modulecomponents:42>,
	<stevescarts:modulecomponents:43>,
	<stevescarts:modulecomponents:44>,
	<stevescarts:modulecomponents:45>,
	<stevescarts:modulecomponents:46>,
	<stevescarts:modulecomponents:47>,
	<stevescarts:modulecomponents:48>,
	<stevescarts:modulecomponents:49>,
	<stevescarts:modulecomponents:4>,
	<stevescarts:modulecomponents:58>,
	<stevescarts:modulecomponents:59>,
	<stevescarts:modulecomponents:5>,
	<stevescarts:modulecomponents:60>,
	<stevescarts:modulecomponents:61>,
	<stevescarts:modulecomponents:62>,
	<stevescarts:modulecomponents:63>,
	<stevescarts:modulecomponents:64>,
	<stevescarts:modulecomponents:65>,
	<stevescarts:modulecomponents:6>,
	<stevescarts:modulecomponents:80>,
	<stevescarts:modulecomponents:81>,
	<stevescarts:modulecomponents:82>,
	<stevescarts:modulecomponents:83>,
	<stevescarts:modulecomponents:84>,
	<stevescarts:modulecomponents:9>,
	<stevescarts:upgrade:10>,
	<stevescarts:upgrade:11>,
	<stevescarts:upgrade:12>,
	<stevescarts:upgrade:13>,
	<stevescarts:upgrade:14>,
	<stevescarts:upgrade:15>,
	<stevescarts:upgrade:16>,
	<stevescarts:upgrade:17>,
	<stevescarts:upgrade:18>,
	<stevescarts:upgrade:19>,
	<stevescarts:upgrade:1>,
	<stevescarts:upgrade:2>,
	<stevescarts:upgrade:3>,
	<stevescarts:upgrade:4>,
	<stevescarts:upgrade:5>,
	<stevescarts:upgrade:6>,
	<stevescarts:upgrade:7>,
	<stevescarts:upgrade:8>,
	<stevescarts:upgrade:9>,
	<stevescarts:upgrade>,

	//Rustic
	<rustic:elixir>,
	<rustic:fluid_bottle>,

	//Rails
	<betterwithmods:booster>,
	<minecraft:activator_rail>,
	<minecraft:detector_rail>,
	<minecraft:golden_rail>,
	<minecraft:rail>,
	<tconstruct:wood_rail>,
	<tconstruct:wood_rail_trapdoor>,

	//Ore Excavation
	<oeintegration:excavatemodifier>,

	//Storage Drawers
	<storagedrawers:compdrawers>,
	<storagedrawers:controller>,
	<storagedrawers:controllerslave>,
	<storagedrawers:keybutton:1>,
	<storagedrawers:keybutton:2>,
	<storagedrawers:keybutton:3>,
	<storagedrawers:keybutton>,
	<storagedrawers:upgrade_redstone:1>,
	<storagedrawers:upgrade_redstone:2>,
	<storagedrawers:upgrade_redstone>,
	<storagedrawers:upgrade_status:1>,
	<storagedrawers:upgrade_status>,
	<storagedrawers:upgrade_void>,

	//Bibliocraft
	<bibliocraft:atlasplate>,
	<bibliocraft:bell>,
	<bibliocraft:bibliochase>,
	<bibliocraft:biblioclipboard>,
	<bibliocraft:bibliodrill>,
	<bibliocraft:biblioglasses:1>,
	<bibliocraft:biblioglasses:2>,
	<bibliocraft:biblioglasses>,
	<bibliocraft:clock:*>,
	<bibliocraft:cookiejar>,
	<bibliocraft:deathcompass>,
	<bibliocraft:dinnerplate>,
	<bibliocraft:discrack>,
	<bibliocraft:enchantedplate>,
	<bibliocraft:paintingpress>,
	<bibliocraft:potionshelf:*>,
	<bibliocraft:printingpress>,
	<bibliocraft:printplate>,
	<bibliocraft:tape>,
	<bibliocraft:tapemeasure>,
	<bibliocraft:typesettingtable>,
	<bibliocraft:typewriter:*>,

	//Embers Stage 3
	<embers:aspectus_lead>,
	<embers:aspectus_silver>,
	<embers:axe_aluminum>,
	<embers:axe_lead>,
	<embers:axe_nickel>,
	<embers:axe_silver>,
	<embers:bin>,
	<embers:block_aluminum>,
	<embers:block_lead>,
	<embers:block_nickel>,
	<embers:block_silver>,
	<embers:heat_coil>,
	<embers:hoe_aluminum>,
	<embers:hoe_lead>,
	<embers:hoe_nickel>,
	<embers:hoe_silver>,
	<embers:item_dropper>,
	<embers:item_pipe>,
	<embers:item_pump>,
	<embers:large_tank>,
	<embers:ore_quartz>,
	<embers:pickaxe_aluminum>,
	<embers:pickaxe_lead>,
	<embers:pickaxe_nickel>,
	<embers:pickaxe_silver>,
	<embers:pipe>,
	<embers:pump>,
	<embers:seed:3>,
	<embers:seed:4>,
	<embers:shovel_aluminum>,
	<embers:shovel_lead>,
	<embers:shovel_nickel>,
	<embers:shovel_silver>,
	<embers:sword_aluminum>,
	<embers:sword_lead>,
	<embers:sword_nickel>,
	<embers:sword_silver>,

	//Actually Additions
	<actuallyadditions:item_axe_obsidian>,
	<actuallyadditions:item_boots_obsidian>,
	<actuallyadditions:item_chest_obsidian>,
	<actuallyadditions:item_food:10>,
	<actuallyadditions:item_food:11>,
	<actuallyadditions:item_food:12>,
	<actuallyadditions:item_food:13>,
	<actuallyadditions:item_food:14>,
	<actuallyadditions:item_food:15>,
	<actuallyadditions:item_food:18>,
	<actuallyadditions:item_food:19>,
	<actuallyadditions:item_food:1>,
	<actuallyadditions:item_food:20>,
	<actuallyadditions:item_food:2>,
	<actuallyadditions:item_food:3>,
	<actuallyadditions:item_food:4>,
	<actuallyadditions:item_food:5>,
	<actuallyadditions:item_food:6>,
	<actuallyadditions:item_food:7>,
	<actuallyadditions:item_food:8>,
	<actuallyadditions:item_food:9>,
	<actuallyadditions:item_food>,
	<actuallyadditions:item_helm_obsidian>,
	<actuallyadditions:item_hoe_obsidian>,
	<actuallyadditions:item_knife>,
	<actuallyadditions:item_misc:2>,
	<actuallyadditions:item_misc:3>,
	<actuallyadditions:item_misc>,
	<actuallyadditions:item_pants_obsidian>,
	<actuallyadditions:item_pickaxe_obsidian>,
	<actuallyadditions:item_shovel_obsidian>,
	<actuallyadditions:item_sword_obsidian>,
	<actuallyadditions:obsidian_paxel>,

	//Content Tweaker
	<forge:bucketfilled>.withTag({FluidName: "platinum", Amount: 1000}),
	<forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000}),
	<forge:bucketfilled>.withTag({FluidName: "redstone_alloy", Amount: 1000}),
	<materialpart:cobalt:beam>,
	<materialpart:cobalt:bolt>,
	<materialpart:lead:beam>,
	<materialpart:lead:bolt>,
	<materialpart:modularium:beam>,
	<materialpart:modularium:bolt>,
	<materialpart:platinum:beam>,
	<materialpart:platinum:bolt>,
	<materialpart:redstone_alloy:beam>,
	<materialpart:redstone_alloy:bolt>,
	<materialpart:silver:beam>,
	<materialpart:silver:bolt>,

	//Dark Utils
	<darkutils:charm_agression>,
	<darkutils:charm_null>,
	<darkutils:ender_hopper>,
	<darkutils:ender_tether>,
	<darkutils:fake_tnt>,
	<darkutils:filter:*>,
	<darkutils:filter_inverted:*>,
	<darkutils:focus_sash>,
	<darkutils:grate>,
	<darkutils:material:1>,
	<darkutils:material:2>,
	<darkutils:material:3>,
	<darkutils:material>,
	<darkutils:timer>,
	<darkutils:trap_move_fast>,
	<darkutils:trap_move_hyper>,
	<darkutils:trap_tile:3>,
	<darkutils:trap_tile:5>,
	<darkutils:update_detector>,
	<darkutils:wither_block:1>,
	<darkutils:wither_block:2>,
	<darkutils:wither_block:3>,
	<darkutils:wither_block:4>,
	<darkutils:wither_block:5>,
	<darkutils:wither_block>,

	//Immersive Engineering
	<immersiveengineering:aluminum_scaffolding_stairs0>,
	<immersiveengineering:aluminum_scaffolding_stairs1>,
	<immersiveengineering:aluminum_scaffolding_stairs2>,
	<immersiveengineering:blueprint>,
	<immersiveengineering:blueprint>,
	<immersiveengineering:blueprint>,
	<immersiveengineering:blueprint>,
	<immersiveengineering:blueprint>,
	<immersiveengineering:bullet:1>,
	<immersiveengineering:bullet:2>.withTag({bullet: "armor_piercing"}),
	<immersiveengineering:bullet:2>.withTag({bullet: "buckshot"}),
	<immersiveengineering:bullet:2>.withTag({bullet: "casull"}),
	<immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}),
	<immersiveengineering:bullet:2>.withTag({bullet: "flare"}),
	<immersiveengineering:bullet:2>.withTag({bullet: "he"}),
	<immersiveengineering:bullet:2>.withTag({bullet: "potion"}),
	<immersiveengineering:bullet:2>.withTag({bullet: "silver"}),
	<immersiveengineering:bullet>,
	<immersiveengineering:chemthrower>,
	<immersiveengineering:cloth_device:1>,
	<immersiveengineering:cloth_device:2>,
	<immersiveengineering:cloth_device>,
	<immersiveengineering:connector:10>,
	<immersiveengineering:connector:11>,
	<immersiveengineering:connector:12>,
	<immersiveengineering:connector:13>,
	<immersiveengineering:connector:1>,
	<immersiveengineering:connector:2>,
	<immersiveengineering:connector:3>,
	<immersiveengineering:connector:4>,
	<immersiveengineering:connector:5>,
	<immersiveengineering:connector:6>,
	<immersiveengineering:connector:7>,
	<immersiveengineering:connector:8>,
	<immersiveengineering:connector:9>,
	<immersiveengineering:connector>,
	<immersiveengineering:conveyor>,
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}),
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}),
	<immersiveengineering:drill>,
	<immersiveengineering:drillhead:1>,
	<immersiveengineering:drillhead>,
	<immersiveengineering:earmuffs>,
	<immersiveengineering:faraday_suit_chest>,
	<immersiveengineering:faraday_suit_feet>,
	<immersiveengineering:faraday_suit_head>,
	<immersiveengineering:faraday_suit_legs>,
	<immersiveengineering:fluorescent_tube>,
	<immersiveengineering:graphite_electrode>,
	<immersiveengineering:jerrycan>,
	<immersiveengineering:material:10>,
	<immersiveengineering:material:11>,
	<immersiveengineering:material:12>,
	<immersiveengineering:material:13>,
	<immersiveengineering:material:14>,
	<immersiveengineering:material:15>,
	<immersiveengineering:material:16>,
	<immersiveengineering:material:17>,
	<immersiveengineering:material:18>,
	<immersiveengineering:material:20>,
	<immersiveengineering:material:21>,
	<immersiveengineering:material:22>,
	<immersiveengineering:material:23>,
	<immersiveengineering:material:26>,
	<immersiveengineering:material:27>,
	<immersiveengineering:material:5>,
	<immersiveengineering:material:6>,
	<immersiveengineering:material:7>,
	<immersiveengineering:material:8>,
	<immersiveengineering:material:9>,
	<immersiveengineering:material>,
	//<immersiveengineering:metal>,
	<immersiveengineering:metal_decoration0:1>,
	<immersiveengineering:metal_decoration0:2>,
	<immersiveengineering:metal_decoration0:3>,
	<immersiveengineering:metal_decoration0:3>,
	<immersiveengineering:metal_decoration0:4>,
	<immersiveengineering:metal_decoration0:5>,
	<immersiveengineering:metal_decoration0:6>,
	<immersiveengineering:metal_decoration0:7>,
	<immersiveengineering:metal_decoration0>,
	<immersiveengineering:metal_decoration1:1>,
	<immersiveengineering:metal_decoration1:2>,
	<immersiveengineering:metal_decoration1:3>,
	<immersiveengineering:metal_decoration1:4>,
	<immersiveengineering:metal_decoration1:5>,
	<immersiveengineering:metal_decoration1:6>,
	<immersiveengineering:metal_decoration1:7>,
	<immersiveengineering:metal_decoration1>,
	<immersiveengineering:metal_decoration1_slab:1>,
	<immersiveengineering:metal_decoration1_slab:2>,
	<immersiveengineering:metal_decoration1_slab:3>,
	<immersiveengineering:metal_decoration1_slab:5>,
	<immersiveengineering:metal_decoration1_slab:6>,
	<immersiveengineering:metal_decoration1_slab:7>,
	<immersiveengineering:metal_decoration2:1>,
	<immersiveengineering:metal_decoration2:2>,
	<immersiveengineering:metal_decoration2:3>,
	<immersiveengineering:metal_decoration2:4>,
	<immersiveengineering:metal_decoration2:5>,
	<immersiveengineering:metal_decoration2>,
	<immersiveengineering:metal_device0:1>,
	<immersiveengineering:metal_device0:2>,
	<immersiveengineering:metal_device0:4>,
	<immersiveengineering:metal_device0:5>,
	<immersiveengineering:metal_device0:6>,
	<immersiveengineering:metal_device0>,
	<immersiveengineering:metal_device1:10>,
	<immersiveengineering:metal_device1:11>,
	<immersiveengineering:metal_device1:13>,
	<immersiveengineering:metal_device1:1>,
	<immersiveengineering:metal_device1:2>,
	<immersiveengineering:metal_device1:3>,
	<immersiveengineering:metal_device1:4>,
	<immersiveengineering:metal_device1:5>,
	<immersiveengineering:metal_device1:6>,
	<immersiveengineering:metal_device1:7>,
	<immersiveengineering:metal_device1:8>,
	<immersiveengineering:metal_device1:9>,
	<immersiveengineering:metal_device1>,
	<immersiveengineering:mold:1>,
	<immersiveengineering:mold:2>,
	<immersiveengineering:mold:3>,
	<immersiveengineering:mold:4>,
	<immersiveengineering:mold:5>,
	<immersiveengineering:mold:6>,
	<immersiveengineering:mold:7>,
	<immersiveengineering:mold>,
	<immersiveengineering:powerpack>,
	<immersiveengineering:railgun>,
	<immersiveengineering:revolver>,
	<immersiveengineering:sheetmetal:10>,
	<immersiveengineering:sheetmetal:1>,
	<immersiveengineering:sheetmetal:2>,
	<immersiveengineering:sheetmetal:3>,
	<immersiveengineering:sheetmetal:4>,
	<immersiveengineering:sheetmetal:5>,
	<immersiveengineering:sheetmetal:6>,
	<immersiveengineering:sheetmetal:7>,
	<immersiveengineering:sheetmetal:8>,
	<immersiveengineering:sheetmetal:9>,
	<immersiveengineering:sheetmetal>,
	<immersiveengineering:sheetmetal_slab:10>,
	<immersiveengineering:sheetmetal_slab:1>,
	<immersiveengineering:sheetmetal_slab:2>,
	<immersiveengineering:sheetmetal_slab:3>,
	<immersiveengineering:sheetmetal_slab:4>,
	<immersiveengineering:sheetmetal_slab:5>,
	<immersiveengineering:sheetmetal_slab:6>,
	<immersiveengineering:sheetmetal_slab:7>,
	<immersiveengineering:sheetmetal_slab:8>,
	<immersiveengineering:sheetmetal_slab:9>,
	<immersiveengineering:sheetmetal_slab>,
	<immersiveengineering:shield>,
	<immersiveengineering:skyhook>,
	<immersiveengineering:speedloader>,
	<immersiveengineering:steel_scaffolding_stairs0>,
	<immersiveengineering:steel_scaffolding_stairs1>,
	<immersiveengineering:steel_scaffolding_stairs2>,
	<immersiveengineering:stone_decoration:*>,
	<immersiveengineering:stone_decoration_slab:10>,
	<immersiveengineering:stone_decoration_slab:1>,
	<immersiveengineering:stone_decoration_slab:2>,
	<immersiveengineering:stone_decoration_slab:4>,
	<immersiveengineering:stone_decoration_slab:5>,
	<immersiveengineering:stone_decoration_slab:6>,
	<immersiveengineering:stone_decoration_slab:7>,
	<immersiveengineering:stone_decoration_slab>,
	<immersiveengineering:stone_decoration_stairs_concrete>,
	<immersiveengineering:stone_decoration_stairs_concrete_leaded>,
	<immersiveengineering:stone_decoration_stairs_concrete_tile>,
	<immersiveengineering:stone_decoration_stairs_hempcrete>,
	<immersiveengineering:storage:1>,
	<immersiveengineering:storage:2>,
	<immersiveengineering:storage:3>,
	<immersiveengineering:storage:4>,
	<immersiveengineering:storage:6>,
	<immersiveengineering:storage:7>,
	<immersiveengineering:storage:8>,
	//<immersiveengineering:storage>,
	<immersiveengineering:storage_slab:1>,
	<immersiveengineering:storage_slab:2>,
	<immersiveengineering:storage_slab:3>,
	<immersiveengineering:storage_slab:4>,
	<immersiveengineering:storage_slab:6>,
	<immersiveengineering:storage_slab:7>,
	<immersiveengineering:storage_slab:8>,
	<immersiveengineering:tool:1>,
	<immersiveengineering:tool:1>,
	<immersiveengineering:tool:2>,
	<immersiveengineering:tool:3>,
	<immersiveengineering:tool>,
	<immersiveengineering:toolbox>,
	<immersiveengineering:toolupgrade:10>,
	<immersiveengineering:toolupgrade:11>,
	<immersiveengineering:toolupgrade:12>,
	<immersiveengineering:toolupgrade:13>,
	<immersiveengineering:toolupgrade:1>,
	<immersiveengineering:toolupgrade:2>,
	<immersiveengineering:toolupgrade:3>,
	<immersiveengineering:toolupgrade:4>,
	<immersiveengineering:toolupgrade:5>,
	<immersiveengineering:toolupgrade:6>,
	<immersiveengineering:toolupgrade:7>,
	<immersiveengineering:toolupgrade:8>,
	<immersiveengineering:toolupgrade:9>,
	<immersiveengineering:toolupgrade>,
	<immersiveengineering:treated_wood:1>,
	<immersiveengineering:treated_wood:2>,
	<immersiveengineering:treated_wood>,
	<immersiveengineering:treated_wood_slab:1>,
	<immersiveengineering:treated_wood_slab:2>,
	<immersiveengineering:treated_wood_slab>,
	<immersiveengineering:treated_wood_stairs0>,
	<immersiveengineering:treated_wood_stairs1>,
	<immersiveengineering:treated_wood_stairs2>,
	<immersiveengineering:wirecoil:1>,
	<immersiveengineering:wirecoil:2>,
	<immersiveengineering:wirecoil:3>,
	<immersiveengineering:wirecoil:4>,
	<immersiveengineering:wirecoil:5>,
	<immersiveengineering:wirecoil>,
	<immersiveengineering:wooden_decoration:1>,
	<immersiveengineering:wooden_decoration>,
	<immersiveengineering:wooden_device0:1>,
	<immersiveengineering:wooden_device0:2>,
	<immersiveengineering:wooden_device0:3>,
	<immersiveengineering:wooden_device0:4>,
	<immersiveengineering:wooden_device0:5>,
	<immersiveengineering:wooden_device0:6>,
	<immersiveengineering:wooden_device0:7>,
	<immersiveengineering:wooden_device0>,
	<immersiveengineering:wooden_device1:1>,
	<immersiveengineering:wooden_device1:3>,
	<immersiveengineering:wooden_device1:4>,
	<immersiveengineering:wooden_device1>,
	<immersivetech:connectors>,

	//Cyclic
	<cyclicmagic:block_hydrator>,
	<cyclicmagic:carbon_paper>,
	<cyclicmagic:charm_fire>,
	<cyclicmagic:charm_wing>,
	<cyclicmagic:chest_sack>,
	<cyclicmagic:chest_sack_empty>,
	<cyclicmagic:dropper_minecart>,
	<cyclicmagic:ender_blaze>,
	<cyclicmagic:ender_snow>,
	<cyclicmagic:ender_water>,
	<cyclicmagic:entity_detector>,
	<cyclicmagic:evoker_fang>,
	<cyclicmagic:fire_dark>,
	<cyclicmagic:fire_killer>,
	<cyclicmagic:gold_furnace_minecart>,
	<cyclicmagic:gold_minecart>,
	<cyclicmagic:horse_upgrade_jump>,
	<cyclicmagic:horse_upgrade_speed>,
	<cyclicmagic:magnet_anti_block>,
	<cyclicmagic:password_block>,
	<cyclicmagic:plate_push>,
	<cyclicmagic:plate_push_fast>,
	<cyclicmagic:plate_push_slowest>,
	<cyclicmagic:purple_boots>,
	<cyclicmagic:purple_chestplate>,
	<cyclicmagic:purple_helmet>,
	<cyclicmagic:sprinkler>,
	<cyclicmagic:stone_minecart>,
	<cyclicmagic:tool_auto_torch>,
	<cyclicmagic:tool_push>,
	<cyclicmagic:tool_swap>,
	<cyclicmagic:turret_minecart>,
	<cyclicmagic:wand_missile>,

	//Top Hat
	<fat_cat:top_hat>,

	//AbyssalCraft
	<abyssalcraft:crystal:*>,
	<abyssalcraft:crystalcluster2:*>,
	<abyssalcraft:crystalcluster:*>,
	<abyssalcraft:crystalfragment:*>,
	<abyssalcraft:crystalshard:*>,
	<abyssalcraft:transmutationgem>,
	<abyssalcraft:transmutator>,

	//Compressed
	<overloaded:compressed_netherrack:*>,
	<overloaded:compressed_obsidian:*>,

	//Spartan Shields
	<spartanshields:shield_basic_obsidian>,
	<spartanshields:shield_basic_steel>,
	<spartanshields:shield_basic_silver>,
	<spartanshields:shield_basic_platinum>,
	<spartanshields:shield_basic_electrum>,
	<spartanshields:shield_basic_nickel>,
	<spartanshields:shield_basic_lead>,
	<spartanshields:shield_basic_invar>,

	//Modular Machinery
	<modularmachinery:blockcasing>,
	<modularmachinery:blockcontroller>,
	<modularmachinery:blockcasing:1>,
	<modularmachinery:blockoutputbus:1>,
	<modularmachinery:blockinputbus:1>,
	<modularmachinery:blockfluidinputhatch>,
	<modularmachinery:blockenergyinputhatch>


] as IItemStack[];

for item in stage3Items {
	mods.ItemStages.addItemStage(STAGE, item);
}