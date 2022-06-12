local mod = get_mod("ef")

function mod.on_all_mods_loaded()
    for backend_id, modified_item_template in pairs(Managers.backend:get_interface("items")._modified_templates) do
        table.merge(modified_item_template, Weapons[modified_item_template.name])
    end
end

mod:echo("Reiklanders Never Cry v1.56")

--To Do List
	--Fix Elf Sword/Falchion//Halberd/Tuskgor Spear/Dual Hammers/Dual Skullsplitters/Sienna Dagger Armory Page
	--Set firesword to Tank Lights and fix the H2
	
	--Double Check Range Changes on Spears/Halberd/ElfSword
	--Rapier more headshot focus less crit reliant heavies
	--Reduce 1h axe raw damage to match old 1h axe damage
	--Great axe heavy nth damage armor damage increase to 40/20/10?
	--Remove the game crashing weapon profiles
	--Firesword reduce h2
	--Check Spear sweep's width

	
	
--Cheese's stuff
	--Firesword burn prototype that cheese had
	--Revert stagger cleave change on 1h hammer variants, l3/l4 shield break
	--Greathammer heavy sweep reverted back to old heavy sweep leave damage alone.
	--Greatsword lights frontload damage, less raw damage, more monster damage, same finesse as 1h sword light
	--Dual Hammers heavy overhead in pushstab chain, cut armor damage in half
	--MnS swords lights are actual swords lights, change heavies to dual axe heavies
	--1h swords heavy linesman + armor slide + 10% crit chance on heavy sweep
	--Dual Swords heavy sweep infantry damage to match lights, armor damage to 0.9ish
	
--Visual Jank
	--A lot of Jank on BoP Variants need to be ironed out
	--A lot of Jank on Throwing Axe Reload
	--Visual Jank on SnM heavy 2 windup
	--Dual Axe lights go so fast they disappear mid swing
	--Pickaxe Heavies go too fast on slayer
	
--Eventually
	--Adjust monster damage on bop variants
	--Readjust chain windows on BoP variants
	--Recheck Spear n Shield Finesse damage
	
	
--Dodge Standards
--25/6 Finesse 20/5 1h 15/4 Duals-2h Lite 10/3 Super Heavy Weapon
--25/5 Staves/HiCap 20/4 BoP 15/3 Shotgun/Throwables 10/2 Sniper
--//////////////////////////////////////////////////////////////////////////////Kruber//////////////////////////////////////////////////////////////////////////////////////////////
--------------------------------------------------------------------1h Mace-------------------------------------------------------------------------------
--Simple Template Changes
DamageProfileTemplates.light_blunt_tank_diag.cleave_distribution.attack = 0.3 --this is 8.95 dmg cleave
DamageProfileTemplates.light_blunt_tank_diag.cleave_distribution.impact = 0.4 --this is 11.94 stagger cleave
DamageProfileTemplates.light_blunt_tank_diag.targets[1].boost_curve_coefficient_headshot = 2
DamageProfileTemplates.light_blunt_tank_diag.targets[2].boost_curve_coefficient_headshot = 2
DamageProfileTemplates.light_blunt_tank_diag.armor_modifier.attack = { 1, 0.25, 2, 1, 0.75 } --{ 1, 0, 1, 1, 0 }
DamageProfileTemplates.light_blunt_tank_diag.critical_strike.attack_armor_power_modifer = {	1, 0.5, 2.5, 1, 1 } --{ 1, 0.5, 1, 1, 0.25 }
--Default State
Weapons.one_handed_hammer_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.default_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_down",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.damage_window_start = 0.4 
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.damage_window_end = 0.48
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.width_mod = 10
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.total_time = 1.95
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.3
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.585,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.585,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.baked_sweep = {
				{
					0.3466666666666667,
					0.4885520935058594,
					0.4679558277130127,
					0.0647127628326416,
					-0.6736188530921936,
					-0.2653895318508148,
					0.13745751976966858,
					-0.6759523749351501
				},
				{
					0.3811111111111111,
					0.39832592010498047,
					0.5772593021392822,
					0.06015574932098389,
					-0.5106564164161682,
					-0.3416144549846649,
					0.1386006772518158,
					-0.7767364382743835
				},
				{
					0.41555555555555557,
					0.20271873474121094,
					0.7084746360778809,
					-0.023415327072143555,
					-0.17738527059555054,
					-0.40113234519958496,
					0.04136456921696663,
					-0.897728443145752
				},
				{
					0.45,
					-0.13530349731445312,
					0.7280949354171753,
					-0.1989368200302124,
					0.4065392017364502,
					-0.33075085282325745,
					-0.2201131284236908,
					-0.8227271437644958
				},
				{
					0.48444444444444446,
					-0.3790121078491211,
					0.4309518337249756,
					-0.388447642326355,
					0.873930037021637,
					-0.10680823773145676,
					-0.3687586486339569,
					-0.29808616638183594
				},
				{
					0.518888888888889,
					-0.3817605972290039,
					0.10535335540771484,
					-0.5103073120117188,
					0.9383577108383179,
					-0.054721977561712265,
					-0.31594955921173096,
					0.1290976107120514
				},
				{
					0.5533333333333333,
					-0.35121917724609375,
					-0.009827613830566406,
					-0.4921696186065674,
					0.9259192943572998,
					-0.04427545890212059,
					-0.27810096740722656,
					0.2517399191856384
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.damage_window_start = 0.4
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.damage_window_end = 0.48
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.width_mod = 10
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.total_time = 1.95
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.3
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.585,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.585,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.baked_sweep = {
				{
					0.33666666666666667,
					-0.30158329010009766,
					0.20798635482788086,
					0.06473982334136963,
					0.8167173266410828,
					-0.11386890709400177,
					0.35492727160453796,
					0.4404921233654022
				},
				{
					0.36444444444444446,
					-0.2488412857055664,
					0.34107017517089844,
					0.0670328140258789,
					-0.7675599455833435,
					0.20887048542499542,
					-0.21025682985782623,
					-0.5683457255363464
				},
				{
					0.3922222222222222,
					-0.14381980895996094,
					0.5527217388153076,
					0.028610944747924805,
					-0.49988579750061035,
					0.36797869205474854,
					-0.09171658754348755,
					-0.7786487936973572
				},
				{
					0.42,
					0.011074066162109375,
					0.6854009628295898,
					-0.07478368282318115,
					-0.1005382090806961,
					0.4324178099632263,
					0.05900471657514572,
					-0.8941059112548828
				},
				{
					0.4477777777777778,
					0.4994335174560547,
					0.62831711769104,
					-0.37764662504196167,
					0.6535205245018005,
					0.26729655265808105,
					0.37946856021881104,
					-0.5978855490684509
				},
				{
					0.4755555555555555,
					0.7624044418334961,
					0.400907039642334,
					-0.5145911574363708,
					0.6807026267051697,
					0.29766547679901123,
					0.501364529132843,
					-0.44347813725471497
				},
				{
					0.5033333333333333,
					0.8569192886352539,
					0.17746353149414062,
					-0.6065747737884521,
					0.6251816153526306,
					0.4463402330875397,
					0.5327504277229309,
					-0.3551132380962372
				}
			}
--Light 3/4
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.anim_event = "attack_swing_down"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.damage_window_start = 0.38
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.damage_window_end = 0.47
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.width_mod = 10
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.total_time = 1.95
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.3
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.2625,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2625,
					external_multiplier = 0.5,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.baked_sweep = {
				{
					0.3466666666666667,
					0.22458600997924805,
					0.19822120666503906,
					0.32592344284057617,
					-0.6857628226280212,
					-0.08758018910884857,
					0.0413111113011837,
					-0.7213546633720398
				},
				{
					0.37277777777777776,
					0.20093774795532227,
					0.33371734619140625,
					0.30137157440185547,
					-0.5833305716514587,
					-0.10599827021360397,
					0.006187887396663427,
					-0.8052648901939392
				},
				{
					0.3988888888888889,
					0.17713594436645508,
					0.42899131774902344,
					0.270113468170166,
					-0.48434484004974365,
					-0.10985085368156433,
					-0.018101675435900688,
					-0.8677644729614258
				},
				{
					0.425,
					0.12107229232788086,
					0.5991630554199219,
					0.13934659957885742,
					-0.1875552088022232,
					-0.10446847975254059,
					-0.04407147318124771,
					-0.9756880402565002
				},
				{
					0.4511111111111111,
					0.03217744827270508,
					0.7447166442871094,
					-0.1747441291809082,
					0.45921188592910767,
					-0.04430054873228073,
					-0.0331922322511673,
					-0.8866003751754761
				},
				{
					0.4772222222222222,
					-0.07396316528320312,
					0.6359577178955078,
					-0.5543045997619629,
					0.8496612310409546,
					-0.010238771326839924,
					-0.1143631711602211,
					-0.5146768093109131
				},
				{
					0.5033333333333333,
					-0.09254312515258789,
					0.4187297821044922,
					-0.713139533996582,
					0.9608858823776245,
					-0.021566079929471016,
					-0.15341436862945557,
					-0.22955891489982605
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.hit_mass_count = nil
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.damage_window_start = 0.38
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.damage_window_end = 0.45
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.width_mod = 10
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.range_mod = 1.2
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.total_time = 1.95
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.anim_time_scale = 1.3
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.2625,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2625,
					external_multiplier = 0.5,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.baked_sweep = {
				{
					0.3466666666666667,
					-0.2155599594116211,
					0.2979586124420166,
					0.17695772647857666,
					-0.6996107697486877,
					0.22854512929916382,
					-0.2507716715335846,
					-0.6288286447525024
				},
				{
					0.36944444444444446,
					-0.1874837875366211,
					0.4160645008087158,
					0.1811835765838623,
					-0.6091817021369934,
					0.21570880711078644,
					-0.17163197696208954,
					-0.7435790300369263
				},
				{
					0.39222222222222225,
					-0.12880611419677734,
					0.5870962142944336,
					0.16123104095458984,
					-0.4042046070098877,
					0.21779610216617584,
					-0.12262416630983353,
					-0.8798561096191406
				},
				{
					0.41500000000000004,
					-0.05316925048828125,
					0.7178025245666504,
					0.038548946380615234,
					0.051250312477350235,
					0.17500180006027222,
					-0.04108492285013199,
					-0.9823746085166931
				},
				{
					0.43777777777777777,
					0.1009054183959961,
					0.770221471786499,
					-0.3026658296585083,
					0.6162154674530029,
					0.1098581999540329,
					0.08260688930749893,
					-0.7754907011985779
				},
				{
					0.46055555555555555,
					0.4026670455932617,
					0.3218672275543213,
					-0.8195931911468506,
					0.841169536113739,
					0.19860783219337463,
					0.13755077123641968,
					-0.4838063418865204
				},
				{
					0.48333333333333334,
					0.7746467590332031,
					0.25507259368896484,
					-0.6675475835800171,
					0.6638069152832031,
					0.40127646923065186,
					0.46785926818847656,
					-0.4236098527908325
				}
			}
--Pushstab
Weapons.one_handed_hammer_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right_diagonal"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.4
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.48
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.total_time = 1.95
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.585,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.baked_sweep = {
				{
					0.33666666666666667,
					-0.30158329010009766,
					0.20798635482788086,
					0.06473982334136963,
					0.8167173266410828,
					-0.11386890709400177,
					0.35492727160453796,
					0.4404921233654022
				},
				{
					0.36444444444444446,
					-0.2488412857055664,
					0.34107017517089844,
					0.0670328140258789,
					-0.7675599455833435,
					0.20887048542499542,
					-0.21025682985782623,
					-0.5683457255363464
				},
				{
					0.3922222222222222,
					-0.14381980895996094,
					0.5527217388153076,
					0.028610944747924805,
					-0.49988579750061035,
					0.36797869205474854,
					-0.09171658754348755,
					-0.7786487936973572
				},
				{
					0.42,
					0.011074066162109375,
					0.6854009628295898,
					-0.07478368282318115,
					-0.1005382090806961,
					0.4324178099632263,
					0.05900471657514572,
					-0.8941059112548828
				},
				{
					0.4477777777777778,
					0.4994335174560547,
					0.62831711769104,
					-0.37764662504196167,
					0.6535205245018005,
					0.26729655265808105,
					0.37946856021881104,
					-0.5978855490684509
				},
				{
					0.4755555555555555,
					0.7624044418334961,
					0.400907039642334,
					-0.5145911574363708,
					0.6807026267051697,
					0.29766547679901123,
					0.501364529132843,
					-0.44347813725471497
				},
				{
					0.5033333333333333,
					0.8569192886352539,
					0.17746353149414062,
					-0.6065747737884521,
					0.6251816153526306,
					0.4463402330875397,
					0.5327504277229309,
					-0.3551132380962372
				}
			}
--Heavies
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.width_mod = 10
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.range_mod = 1.2
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.286125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.286125,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.width_mod = 10
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.range_mod = 1.2
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.total_time = 1.5
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.286125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.286125,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.one_handed_hammer_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_1.max_fatigue_points = 6
Weapons.one_handed_hammer_template_1.dodge_count = 5
Weapons.one_handed_hammer_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.one_handed_hammer_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
-------------------------------------------------------------------1h Sword--------------------------------------------------------------------------------
--Simple Template Changes
DamageProfileTemplates.light_slashing_linesman_finesse.targets[1].boost_curve_coefficient_headshot = 2.5
DamageProfileTemplates.light_slashing_linesman_finesse.targets[2].boost_curve_coefficient_headshot = 2.5
DamageProfileTemplates.light_slashing_smiter_finesse.shield_break = true
DamageProfileTemplates.medium_slashing_tank_1h_finesse.cleave_distribution = {attack = 0.4, impact = 0.5}
--Default State
Weapons.one_handed_swords_template_1.actions.action_one.default.anim_event = "attack_swing_charge_left_diagonal"
Weapons.one_handed_swords_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.default_right.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.one_handed_swords_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.default_left.anim_event = "attack_swing_charge_left_diagonal_pose"
Weapons.one_handed_swords_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Light 1/2
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.sweep_z_offset = 0
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.width_mod = 10
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.total_time = 1.95
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.3
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.585,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.585,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.sweep_z_offset = -0.05
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.width_mod = 10
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.total_time = 1.95
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.3
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 3
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.sweep_z_offset = 0
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.width_mod = 10
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.total_time = 1.95
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.3
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.75,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.one_handed_swords_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_finesse"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "slashing_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.sweep_z_offset = 0
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.total_time = 1.95
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.585,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time =1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.anim_event = "attack_swing_heavy_left_diagonal"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "slashing_hit"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.slide_armour_hit = true
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.damage_window_start = 0.15
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.damage_window_end = 0.3
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.sweep_z_offset = 0
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.width_mod = 10
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.235,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.235,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.baked_sweep = {
				{
					0.11666666666666667,
					0.3286566734313965,
					0.38442182540893555,
					0.15373265743255615,
					-0.22785641252994537,
					-0.38962307572364807,
					0.17433500289916992,
					-0.8751472234725952
				},
				{
					0.1527777777777778,
					0.21822237968444824,
					0.4396076202392578,
					0.06386721134185791,
					0.1544835865497589,
					-0.42459359765052795,
					-0.03281427174806595,
					-0.8915034532546997
				},
				{
					0.18888888888888888,
					-0.012676715850830078,
					0.5074033737182617,
					-0.06316161155700684,
					0.5247191190719604,
					-0.3467475473880768,
					-0.22564420104026794,
					-0.7439897656440735
				},
				{
					0.22499999999999998,
					-0.2814059257507324,
					0.5217838287353516,
					-0.1962108612060547,
					0.6932355165481567,
					-0.24881912767887115,
					-0.329641729593277,
					-0.5906351804733276
				},
				{
					0.26111111111111107,
					-0.5007836818695068,
					0.3227109909057617,
					-0.3174067735671997,
					0.7806180119514465,
					-0.19367828965187073,
					-0.4433147609233856,
					-0.39572247862815857
				},
				{
					0.29722222222222217,
					-0.5927212238311768,
					0.14726734161376953,
					-0.35321223735809326,
					0.8010765314102173,
					-0.1780545860528946,
					-0.5170548558235168,
					-0.24336664378643036
				},
				{
					0.3333333333333333,
					-0.5434455871582031,
					0.06700468063354492,
					-0.3996988534927368,
					0.8120498061180115,
					-0.1683911681175232,
					-0.5328555107116699,
					-0.16818012297153473
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.anim_event = "attack_swing_heavy_right_diagonal"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "slashing_hit"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.slide_armour_hit = true
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.damage_window_start = 0.15
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.damage_window_end = 0.3
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.sweep_z_offset = 0
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.width_mod = 10
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.total_time = 1.5
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.235,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.235,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.baked_sweep = {
				{
					0.11666666666666667,
					-0.25451040267944336,
					0.2782936096191406,
					0.11283540725708008,
					-0.5216851234436035,
					0.25411659479141235,
					-0.14820538461208344,
					-0.8008149862289429
				},
				{
					0.1527777777777778,
					-0.18799638748168945,
					0.454831600189209,
					0.06292521953582764,
					-0.22307394444942474,
					0.41466546058654785,
					-0.09909883141517639,
					-0.8766242265701294
				},
				{
					0.18888888888888888,
					-0.04425811767578125,
					0.6289305686950684,
					-0.031099557876586914,
					0.21385866403579712,
					0.4696301817893982,
					0.0845828577876091,
					-0.852383553981781
				},
				{
					0.22499999999999998,
					0.21789097785949707,
					0.6650643348693848,
					-0.14887845516204834,
					0.6224513649940491,
					0.31054913997650146,
					0.3532450795173645,
					-0.6255648732185364
				},
				{
					0.26111111111111107,
					0.43033552169799805,
					0.6052908897399902,
					-0.25656676292419434,
					0.7493036389350891,
					0.22511769831180573,
					0.40261590480804443,
					-0.47514891624450684
				},
				{
					0.29722222222222217,
					0.6451857089996338,
					0.3166627883911133,
					-0.33372020721435547,
					0.7629949450492859,
					0.2770317494869232,
					0.4881516993045807,
					-0.32062461972236633
				},
				{
					0.3333333333333333,
					0.7522621154785156,
					0.050200462341308594,
					-0.3688727617263794,
					0.7538682222366333,
					0.31586551666259766,
					0.5289060473442078,
					-0.2284078747034073
				}
			}
--Dodge/Block/etc
Weapons.one_handed_swords_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_swords_template_1.max_fatigue_points = 6
Weapons.one_handed_swords_template_1.dodge_count = 5
Weapons.one_handed_swords_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.one_handed_swords_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
----------------------------------------------------------------Mace and Sword----------------------------------------------------------------------------
--Default State
Weapons.dual_wield_hammer_sword_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_diagonal",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_diagonal",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.default_right_heavy.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.default_right_heavy.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.damage_profile = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.total_time = 2.25
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.5
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.damage_profile = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.damage_window_start = 0.35
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.damage_window_end = 0.47
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.total_time = 2.25
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.anim_time_scale = 1.7
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.595,
					end_time = 1.53,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.595,
					end_time = 1.53,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.53,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.53,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.51,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.51,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
--Lights 3/4
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.impact_sound_event = "slashing_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.total_time = 2.25
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.anim_time_scale = 1.5
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.allowed_chain_actions = {
				{
					sub_action = "default_right_heavy",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.total_time = 2.25
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.anim_time_scale = 1.5
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.dual_wield_hammer_sword_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.damage_profile_right = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.total_time = 1.5
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.anim_time_scale = 1
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT
--Heavies
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.damage_profile_left = "light_slashing_smiter_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.damage_profile_right = "light_slashing_smiter_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.total_time = 2.25
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.anim_time_scale = 1.5
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.7,
					end_time = 0.53,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.hit_mass_count = nil
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.damage_profile_left = "light_slashing_smiter_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.damage_profile_right = "light_slashing_smiter_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.total_time = 2.25
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.anim_time_scale = 1.5
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.7,
					end_time = 0.53,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.allowed_chain_actions = {
				{
					sub_action = "default_right_heavy",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.hit_mass_count = nil
--Dodge/Block/etc
Weapons.dual_wield_hammer_sword_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammer_sword_template.dodge_count = 6
Weapons.dual_wield_hammer_sword_template.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_hammer_sword_template.buffs.change_dodge_speed.external_optional_multiplier = 1.25
--------------------------------------------------------------------Tuskgor Spear-------------------------------------------------------------------
--Default State
Weapons.two_handed_heavy_spears_template.actions.action_one.default.anim_event = "attack_swing_charge"
Weapons.two_handed_heavy_spears_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_tank",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_tank",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.default_last_1.anim_event = "attack_swing_charge_stab"
Weapons.two_handed_heavy_spears_template.actions.action_one.default_last_1.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.default_last_1.allowed_chain_actions = {
				{
					sub_action = "light_attack_stab_1",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.default_left.anim_event = "attack_swing_charge_stab"
Weapons.two_handed_heavy_spears_template.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.hit_shield_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.hit_armor_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.hit_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.height_mod = 3
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.width_mod = 15
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.range_mod = 1.7
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.range_mod_add = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.total_time = 1.5
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.baked_sweep = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.hit_shield_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.hit_armor_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.hit_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.damage_window_end = 0.4
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.height_mod = 3
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.width_mod = 15
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.range_mod = 1.7
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.range_mod_add = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.total_time = 1.5
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.anim_time_scale = 1
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.55,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.55,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.baked_sweep = nil
--Light 3/Pushstab
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.hit_shield_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.hit_armor_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.hit_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.damage_window_start = 0.3
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.damage_window_end = 0.45
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.total_time = 1.8
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.anim_time_scale = 1.2
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_heavy_spears_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_linesman_spear"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.impact_sound_event = "slashing_hit"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.hit_shield_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.hit_armor_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.hit_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.total_time = 1.2
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.anim_time_scale = 0.8
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.48,
					end_time = 0.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.48,
					end_time = 0.8,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.8,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.damage_profile = "heavy_slashing_linesman_polearm"
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.impact_sound_event = "slashing_hit"
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.hit_shield_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.hit_armor_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.hit_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.slide_armour_hit = true
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.total_time = 1.65
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.anim_time_scale = 1.1
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2675,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2675,
					external_multiplier = 0.5,
					end_time = 0.50,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.55,
					end_time = 1.1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.55,
					end_time = 1.1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.44,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.44,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.hit_shield_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.hit_armor_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.hit_stop_anim = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.height_mod = 3
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.width_mod = 15
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.range_mod = 2
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.range_mod_add = nil
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2675,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2675,
					external_multiplier = 0.5,
					end_time = 0.40,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					end_time =1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.baked_sweep = nil
--Dodge/Block/etc
Weapons.two_handed_heavy_spears_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.block_angle = 90
Weapons.two_handed_heavy_spears_template.dodge_count = 4
Weapons.two_handed_heavy_spears_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_heavy_spears_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
Weapons.two_handed_heavy_spears_template.max_fatigue_points = 6
---------------------------------------------------------------------Halberd-------------------------------------------------------------------------
--Default State
Weapons.two_handed_halberds_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_stab",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.default_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.hit_armor_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.hit_stop_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.total_time = 1.5
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.65,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.65,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.hit_shield_stop_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.hit_armor_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.hit_stop_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.height_mod = 3
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.width_mod = 15
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.total_time = 1.5
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.anim_time_scale = 1
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.55,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.55,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.baked_sweep = nil
--Light 3/PS
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.impact_sound_event = "axe_2h_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.total_time = 1.5
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.anim_time_scale = 1
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0.03,
					external_multiplier = 1.5,
					end_time = 0.33,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.33,
					external_multiplier = 0.5,
					end_time = 0.53,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.63,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.63,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_down",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.impact_sound_event = "axe_2h_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.hit_armor_anim = "attack_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.hit_stop_anim = "attack_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.total_time = 1.5
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.anim_time_scale = 1
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.buff_data = {
				{
					start_time = 0.03,
					external_multiplier = 1.5,
					end_time = 0.33,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.33,
					external_multiplier = 0.5,
					end_time = 0.53,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.63,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.63,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.hit_shield_stop_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.hit_armor_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.hit_stop_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.height_mod = 3
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.width_mod = 15
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.total_time = 1.5
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.anim_time_scale = 1
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2675,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2675,
					external_multiplier = 0.5,
					end_time = 0.40,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time =  1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time =  1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.baked_sweep = nil
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = nil
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.total_time = 1.65
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1.1
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2675,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2675,
					external_multiplier = 0.5,
					end_time = 0.50,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.55,
					end_time = 1.1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					end_time = 1.1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.44,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.44,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.two_handed_halberds_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.dodge_count = 4
Weapons.two_handed_halberds_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_halberds_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--------------------------------------------------------------------2h Sword-------------------------------------------------------------------------------
--Default State
Weapons.two_handed_swords_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.total_time = 2.475
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.65
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.355,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.355,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.99,
					end_time = 1.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.99,
					end_time = 1.65,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.65,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.9075,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.9075,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.total_time = 2.475
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.65
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.355,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.355,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.99,
					end_time = 1.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.99,
					end_time = 1.65,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.65,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.9075,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.9075,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.two_handed_swords_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "axe_2h_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.total_time = 1.65
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.1
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.45,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.66,
					end_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					end_time = 1.1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.605,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.605,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.hit_mass_count = nil
--Heavies
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.3125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3125,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.total_time = 1.5
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.3125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3125,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.two_handed_swords_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_template_1.dodge_count = 4
Weapons.two_handed_swords_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_swords_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--------------------------------------------------------------------2h Longsword--------------------------------------------------------------------
--Default State
Weapons.bastard_sword_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				}
			}
Weapons.bastard_sword_template.actions.action_one.default_right_pose.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.default_right_pose.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				}
			}
Weapons.bastard_sword_template.actions.action_one.default_left_down_pose.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.default_left_down_pose.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_down",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				}
			}
Weapons.bastard_sword_template.actions.action_one.default_left_uppercut.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.default_left_uppercut.allowed_chain_actions = {
				{
					sub_action = "light_attack_uppercut",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_down",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				}
			}
Weapons.bastard_sword_template.actions.action_one.default_left_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.default_left_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_bopp",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				}
			}
--Lights 1/2
Weapons.bastard_sword_template.actions.action_one.light_attack_left.damage_profile = "medium_slashing_linesman"
Weapons.bastard_sword_template.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.bastard_sword_template.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_left.total_time = 1.8
Weapons.bastard_sword_template.actions.action_one.light_attack_left.anim_time_scale = 1.2
Weapons.bastard_sword_template.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.31,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right_pose",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right_pose",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.bastard_sword_template.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.bastard_sword_template.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_right.total_time = 1.8
Weapons.bastard_sword_template.actions.action_one.light_attack_right.anim_time_scale = 1.2
Weapons.bastard_sword_template.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.31,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left_uppercut",
					start_time = 0.78,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left_uppercut",
					start_time = 0.78,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 3/Pushstab
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.damage_profile = "medium_slashing_smiter_2h"
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.impact_sound_event = "axe_2h_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.hit_shield_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.hit_armor_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.hit_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.total_time = 1.8
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.anim_time_scale = 1.2
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.5,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.hit_mass_count = nil
Weapons.bastard_sword_template.actions.action_one.push.total_time = 0.8
Weapons.bastard_sword_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.impact_sound_event = "axe_2h_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.total_time = 1.8
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.2
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.5,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left_down_pose",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left_down_pose",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.hit_mass_count = nil
--Heavies
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.impact_sound_event = "axe_2h_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.slide_armour_hit = false
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.total_time = 1.95
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.anim_time_scale = 1.3
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.33635,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.33635,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right_pose",
					start_time = 0.78,
					end_time = 1.3,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right_pose",
					start_time = 0.78,
					end_time = 1.3,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.impact_sound_event = "axe_2h_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.slide_armour_hit = false
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.total_time = 1.95
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.anim_time_scale = 1.3
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.33635,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.33635,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left_down_pose",
					start_time = 0.78,
					end_time = 1.3,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left_down_pose",
					start_time = 0.78,
					end_time = 1.3,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.impact_sound_event = "axe_2h_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.hit_shield_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.hit_armor_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.hit_stop_anim = "attack_hit"
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.total_time = 1.5
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.anim_time_scale = 1
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.33635,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.33635,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.allowed_chain_actions = {
				{
					sub_action = "default_left_last",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left_last",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.bastard_sword_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.bastard_sword_template.dodge_count = 3
Weapons.bastard_sword_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.bastard_sword_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--------------------------------------------------------------------2h Hammer-----------------------------------------------------------------------------
--Default State
Weapons.two_handed_hammers_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Light 1/2
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.impact_sound_event = "hammer_2h_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.total_time = 1.35
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.anim_time_scale = 0.9
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.5,
					end_time = 0.65,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.675,
					end_time = 0.9,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.675,
					end_time = 0.9,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.9,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.9,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.impact_sound_event = "hammer_2h_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.total_time = 1.35
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.anim_time_scale = 0.9
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.5,
					end_time = 0.65,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.675,
					end_time = 0.9,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.675,
					end_time = 0.9,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.9,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.9,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.two_handed_hammers_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_push_left_up",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.damage_profile = "medium_blunt_tank"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.impact_sound_event = "cog_blunt_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.total_time = 1.35
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.anim_time_scale = 0.9
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.54,
					end_time = 0.9,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.54,
					end_time = 0.9,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.9,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.9,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.495,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.495,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.hit_mass_count = TANK_HIT_MASS_COUNT
--Heavies
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "hammer_2h_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.3535,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3535,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "hammer_2h_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.total_time = 1.5
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.3535,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3535,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.two_handed_hammers_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_hammers_template_1.dodge_count = 3
Weapons.two_handed_hammers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_hammers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-----------------------------------------------------------------Executioner Sword------------------------------------------------------------------
--Simple Template Changes
DamageProfileTemplates.medium_slashing_linesman_executioner.cleave_distribution.impact = 0.4
--Default State
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_left_diagonal.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_left_diagonal.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_diagonal",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_left_diagonal_other_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_left_diagonal_other_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_diagonal",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.slide_armour_hit = false
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.total_time = 2.25
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.7,
					end_time = 0.65,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 1.125,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 1.125,
					end_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.975,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.975,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.slide_armour_hit = false
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.total_time = 2.25
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.7,
					end_time = 0.65,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left_diagonal",
					start_time = 1.125,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left_diagonal",
					start_time = 1.125,
					end_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.975,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.975,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.slide_armour_hit = false
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.range_mod = 1.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.total_time = 2.25
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.7,
					end_time = 0.65,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 1.02,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.02,
					end_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.975,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.975,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.two_handed_swords_executioner_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right_diagonal"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.slide_armour_hit = false
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.8
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.range_mod = 1.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.total_time = 2.25
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.7,
					end_time = 0.65,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 1.02,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.02,
					end_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.975,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.975,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.baked_sweep = {
				{
					0.4666666666666667,
					-0.27582263946533203,
					0.17136430740356445,
					-0.011824488639831543,
					-0.4425011873245239,
					0.37471580505371094,
					-0.623542308807373,
					-0.5243812799453735
				},
				{
					0.5277777777777778,
					-0.2415447235107422,
					0.35687923431396484,
					-0.007171154022216797,
					-0.4529234766960144,
					0.39192238450050354,
					-0.479362815618515,
					-0.6414581537246704
				},
				{
					0.5888888888888889,
					-0.11064434051513672,
					0.5012903213500977,
					-0.036751389503479004,
					-0.23956990242004395,
					0.42699792981147766,
					-0.1524783819913864,
					-0.8585041761398315
				},
				{
					0.65,
					0.19419193267822266,
					0.5107107162475586,
					-0.14734292030334473,
					0.36277395486831665,
					0.47427651286125183,
					0.3445903956890106,
					-0.7243716716766357
				},
				{
					0.7111111111111111,
					0.4002103805541992,
					0.3614311218261719,
					-0.2990529537200928,
					0.7667891383171082,
					0.12125606834888458,
					0.45078012347221375,
					-0.4406004548072815
				},
				{
					0.7722222222222223,
					0.49817371368408203,
					0.2518477439880371,
					-0.3369128704071045,
					0.8048565983772278,
					0.08120082318782806,
					0.5546956658363342,
					-0.19474349915981293
				},
				{
					0.8333333333333334,
					0.4701070785522461,
					0.19222021102905273,
					-0.37858498096466064,
					0.823351263999939,
					0.05689862370491028,
					0.5548643469810486,
					-0.10478942096233368
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT
--Heavies
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "cog_axe_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.additional_critical_strike_chance = nil
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.range_mod = 1.8
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.total_time = 1.8
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1.2
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.31,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left_diagonal_other_left",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left_diagonal_other_left",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "cog_axe_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.additional_critical_strike_chance = nil
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.range_mod = 1.8
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.total_time = 1.8
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1.2
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.31,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left_diagonal",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left_diagonal",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.two_handed_swords_executioner_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.dodge_count = 3
Weapons.two_handed_swords_executioner_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_swords_executioner_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
------------------------------------------------------------------Kruber Ranged---------------------------------------------------------------------
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Repeater Handgun/////////////////////////////////////////////////////////////////////////////////////
--Simple Template Changes
DamageProfileTemplates.shot_repeating.critical_strike.attack_armor_power_modifer = {1.3, 1.1, 1, 1, 1.35, 0.25}
DamageProfileTemplates.shot_repeating.armor_modifier_near.attack = {1.3, 1.1, 1, 1, 1.35, 0} --Inf/Armor/Monster/player/berzerker/Super 
DamageProfileTemplates.shot_repeating.armor_modifier_far.attack = {1.15, .9, 1, 1, 1.15, 0}
DamageProfileTemplates.shot_repeating.default_target.boost_curve_coefficient_headshot = 1.75
SpreadTemplates.brace_of_pistols = {
		continuous = {
			still = {
				max_yaw = 0,
				max_pitch = 0
			},
			moving = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			crouch_still = {
				max_yaw = 0,
				max_pitch = 0
			},
			crouch_moving = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			zoomed_still = {
				max_yaw = 0,
				max_pitch = 0
			},
			zoomed_moving = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			zoomed_crouch_still = {
				max_yaw = 0,
				max_pitch = 0
			},
			zoomed_crouch_moving = {
				max_yaw = 0.25,
				max_pitch = 0.25
			}
		},
		immediate = {
			being_hit = {
				immediate_pitch = 0.25,
				immediate_yaw = 0.25
			},
			shooting = {
				immediate_pitch = 0,
				immediate_yaw = 0
			}
		}
	}
SpreadTemplates.pistol_special = {
		continuous = {
			still = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			moving = {
				max_yaw = 0.5,
				max_pitch = 0.5
			},
			crouch_still = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			crouch_moving = {
				max_yaw = 0.5,
				max_pitch = 0.5
			},
			zoomed_still = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			zoomed_moving = {
				max_yaw = 0.5,
				max_pitch = 0.5
			},
			zoomed_crouch_still = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			zoomed_crouch_moving = {
				max_yaw = 0.5,
				max_pitch = 0.5
			}
		},
		immediate = {
			being_hit = {
				immediate_pitch = 1,
				immediate_yaw = 1
			},
			shooting = {
				immediate_pitch = 0.5,
				immediate_yaw = 0.5
			}
		}
	}
--Actions
Weapons.repeating_handgun_template_1.default_spread_template = "brace_of_pistols"
Weapons.repeating_handgun_template_1.actions.action_one.default.total_time = 1
Weapons.repeating_handgun_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.repeating_handgun_template_1.actions.action_one.default.recoil_settings = {
				horizontal_climb = 0,
				restore_duration = 0.25,
				vertical_climb = 2,
				climb_duration = 0.1,
				climb_function = math.easeInCubic,
				restore_function = math.ease_out_quad
			}
Weapons.repeating_handgun_template_1.actions.action_one.bullet_spray.spread_template_override = "pistol_special"
Weapons.repeating_handgun_template_1.actions.action_one.bullet_spray.recoil_factor = 0
Weapons.repeating_handgun_template_1.actions.action_one.bullet_spray.total_time = math.huge
Weapons.repeating_handgun_template_1.actions.action_one.bullet_spray.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.repeating_handgun_template_1.actions.action_one.bullet_spray.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "bullet_spray",
					start_time = 0.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "bullet_spray",
					start_time = 0.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "spray_loop",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.repeating_handgun_template_1.actions.action_one.bullet_spray.recoil_settings = {
				horizontal_climb = 0,
				restore_duration = 0.25,
				vertical_climb = 2,
				climb_duration = 0.1,
				climb_function = math.easeInCubic,
				restore_function = math.ease_out_quad
			}
Weapons.repeating_handgun_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.repeating_handgun_template_1.actions.action_two.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "bullet_spray",
					start_time = 0,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "bullet_spray",
					start_time = 0,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "spray_loop",
					start_time = 0,
					action = "action_one",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.repeating_handgun_template_1.actions.action_two.spray_loop.spread_template_override = "pistol_special"
Weapons.repeating_handgun_template_1.actions.action_two.spray_loop.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.repeating_handgun_template_1.actions.action_two.spray_loop.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "bullet_spray",
					start_time = 0,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "bullet_spray",
					start_time = 0,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
--Dodge/Ammo/Reload/Etc
Weapons.repeating_handgun_template_1.ammo_data.reload_time = 1.5
Weapons.repeating_handgun_template_1.ammo_data.max_ammo = 32
Weapons.repeating_handgun_template_1.dodge_count = 4
Weapons.repeating_handgun_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.repeating_handgun_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Longbow////////////////////////////////////////////////////////////////////////////////////////////
Weapons.longbow_empire_template.actions.action_one.default.minimum_hold_time = nil
Weapons.longbow_empire_template.actions.action_one.default.override_reload_time = nil
Weapons.longbow_empire_template.actions.action_one.default.total_time = 0.98
Weapons.longbow_empire_template.actions.action_one.default.anim_time_scale = 1.4
Weapons.longbow_empire_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.longbow_empire_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.84,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.84,
					action = "action_two",
					input = "action_two_hold",
				},
				{
					sub_action = "default",
					start_time = 0.84,
					action = "action_one",
					input = "action_one",
				},
				{
					sub_action = "default",
					start_time = 0.84,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_empire_template.actions.action_one.shoot_charged_heavy.impact_data.damage_profile = "arrow_sniper"
Weapons.longbow_empire_template.actions.action_one.shoot_charged_heavy.play_reload_animation = true
Weapons.longbow_empire_template.actions.action_one.shoot_charged_heavy.override_reload_time = nil
Weapons.longbow_empire_template.actions.action_one.shoot_charged_heavy.reload_event_delay_time = nil
Weapons.longbow_empire_template.actions.action_one.shoot_charged_heavy.reload_animation_override = nil
Weapons.longbow_empire_template.actions.action_one.shoot_charged_heavy.minimum_hold_time = 0.66
Weapons.longbow_empire_template.actions.action_one.shoot_charged_heavy.total_time = 0.825
Weapons.longbow_empire_template.actions.action_one.shoot_charged_heavy.anim_time_scale = 1.65
Weapons.longbow_empire_template.actions.action_one.shoot_charged_heavy.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.825,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.825,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.825,
					action = "action_two",
					input = "action_two_hold",
				},
				{
					sub_action = "default",
					start_time = 0.825,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_empire_template.actions.action_two.default.default_zoom = "zoom_in"
Weapons.longbow_empire_template.actions.action_two.default.aim_zoom_delay = 0.01
Weapons.longbow_empire_template.actions.action_two.default.spread_template_override = nil
Weapons.longbow_empire_template.actions.action_two.default.heavy_aim_flow_event = nil
Weapons.longbow_empire_template.actions.action_two.default.anim_time_scale = 3.75
Weapons.longbow_empire_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.25,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.longbow_empire_template.actions.action_two.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield",
				},
				{
					sub_action = "shoot_charged_heavy",
					start_time = 1.875,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.875,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_empire_template.default_spread_template = "longbow"
--Dodge/Ammo/Reload/Etc
Weapons.longbow_empire_template.actions.action_one.default.speed = 9000
Weapons.longbow_empire_template.actions.action_one.shoot_charged.speed = 16000
Weapons.longbow_empire_template.ammo_data.reload_time = 0
Weapons.longbow_empire_template.dodge_count = 2
Weapons.longbow_empire_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.longbow_empire_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Handgun////////////////////////////////////////////////////////////////////////////////////////////
--Dodge/Ammo/Reload/Etc
Weapons.handgun_template_1.dodge_count = 2
Weapons.handgun_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.handgun_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Blunderbuss//////////////////////////////////////////////////////////////////////////////////////////
--Dodge/Ammo/Reload/Etc
Weapons.blunderbuss_template_1.ammo_data.reload_time = 1
Weapons.blunderbuss_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.blunderbuss_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--///////////////////////////////////////////////////////////////////////////////Bardin/////////////////////////////////////////////////////////////////////////////////////////////
---------------------------------------------------------------------1h Axe-------------------------------------------------------------------------
--Simple Template Changes
--DamageProfileTemplates.light_slashing_smiter_diag.default_target.boost_curve_coefficient_headshot = 2
--DamageProfileTemplates.light_slashing_smiter_diag.armor_modifier.attack = {1.25, 0.65, 2.5, 1, 0.65, 0.65}
--DamageProfileTemplates.light_slashing_smiter_diag.critical_strike.attack_armor_power_modifer = {1.25, 0.65, 2.5, 0.65, 0.65}
DamageProfileTemplates.medium_slashing_smiter_1h.default_target.boost_curve_coefficient_headshot = 2
--Default State
Weapons.one_hand_axe_template_2.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.additional_critical_strike_chance = nil
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.total_time = 1.95
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.anim_time_scale = 1.3
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.additional_critical_strike_chance = nil
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.total_time = 1.95
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.anim_time_scale = 1.3
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.total_time = 1.95
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.anim_time_scale = 1.3
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.one_hand_axe_template_2.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_window_start = 0.35
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_window_end = 0.47
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.additional_critical_strike_chance = nil
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.total_time = 1.95
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.baked_sweep = {
				{
					0.3466666666666667,
					-0.2943267822265625,
					0.6125030517578125,
					-0.09795379638671875,
					-0.37085556983947754,
					0.6318093538284302,
					-0.1342034935951233,
					-0.6672874093055725
				},
				{
					0.37777777777777777,
					-0.14261770248413086,
					0.68890380859375,
					-0.10671520233154297,
					-0.19007164239883423,
					0.6863868236541748,
					0.011293779127299786,
					-0.7018677592277527
				},
				{
					0.4088888888888889,
					0.07872343063354492,
					0.6932487487792969,
					-0.12723970413208008,
					0.11975399404764175,
					0.663720428943634,
					0.3122141659259796,
					-0.6690713763237
				},
				{
					0.44,
					0.40059852600097656,
					0.5883598327636719,
					-0.1368088722229004,
					0.4506254494190216,
					0.4421606957912445,
					0.6173749566078186,
					-0.4693388044834137
				},
				{
					0.4711111111111111,
					0.5653223991394043,
					0.450836181640625,
					-0.14811325073242188,
					0.5648464560508728,
					0.3231636583805084,
					0.6988108158111572,
					-0.29694655537605286
				},
				{
					0.5022222222222222,
					0.6720681190490723,
					0.3026695251464844,
					-0.1696014404296875,
					0.6130120158195496,
					0.29641494154930115,
					0.7230486869812012,
					-0.11642627418041229
				},
				{
					0.5333333333333333,
					0.733741044998169,
					0.12903976440429688,
					-0.19726800918579102,
					0.6488717198371887,
					0.24066811800003052,
					0.7217421531677246,
					-0.011515703052282333
				}
			}
--Heavies
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.range_mod = 1.2
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.26,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.range_mod = 1.2
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.total_time = 1.5
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.anim_time_scale = 1
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.26,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.one_hand_axe_template_2.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.dodge_count = 5
Weapons.one_hand_axe_template_2.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.one_hand_axe_template_2.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--------------------------------------------------------------------1h Hammer-----------------------------------------------------------------------------
--Default State
Weapons.one_handed_hammer_template_2.actions.action_one.default.anim_event = "attack_swing_charge_left_diagonal"
Weapons.one_handed_hammer_template_2.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.default_left.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.one_handed_hammer_template_2.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.default_right.anim_event = "attack_swing_charge_left_diagonal"
Weapons.one_handed_hammer_template_2.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.default_last.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.one_handed_hammer_template_2.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.default_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_down",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.anim_event = "attack_swing_left"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.damage_window_start = 0.38
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.damage_window_end = 0.5
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.width_mod = 10
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.total_time = 1.95
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.anim_time_scale = 1.3
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.baked_sweep = {
				{
					0.3466666666666667,
					0.4979362487792969,
					0.5005283355712891,
					0.018489837646484375,
					-0.38468441367149353,
					-0.5321440100669861,
					0.3524048924446106,
					-0.6668219566345215
				},
				{
					0.37777777777777777,
					0.42641258239746094,
					0.5578670501708984,
					0.016463279724121094,
					-0.32481276988983154,
					-0.5670905709266663,
					0.297601580619812,
					-0.6959441900253296
				},
				{
					0.4088888888888889,
					0.28052520751953125,
					0.6403789520263672,
					-0.0013265609741210938,
					-0.16875989735126495,
					-0.6170117259025574,
					0.15781056880950928,
					-0.7522715330123901
				},
				{
					0.44,
					0.03853797912597656,
					0.7116661071777344,
					-0.04547691345214844,
					0.14948996901512146,
					-0.6078135371208191,
					-0.12879861891269684,
					-0.7691725492477417
				},
				{
					0.4711111111111111,
					-0.3188743591308594,
					0.5574417114257812,
					-0.16222667694091797,
					-0.5650471448898315,
					0.3253098130226135,
					0.5767348408699036,
					0.4922116696834564
				},
				{
					0.5022222222222222,
					-0.4058952331542969,
					0.4154987335205078,
					-0.24257755279541016,
					-0.6630380153656006,
					0.15885120630264282,
					0.668820321559906,
					0.29635515809059143
				},
				{
					0.5333333333333333,
					-0.43575096130371094,
					0.29512977600097656,
					-0.3425750732421875,
					-0.6130070090293884,
					0.039156798273324966,
					0.7446082830429077,
					0.26124265789985657
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.anim_event = "attack_swing_right"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.damage_window_start = 0.33
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.damage_window_end = 0.47
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.width_mod = 10
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.total_time = 1.95
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.anim_time_scale = 1.3
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.baked_sweep = {
				{
					0.2966666666666667,
					-0.4027719497680664,
					0.48967480659484863,
					-0.09750592708587646,
					-0.5091506242752075,
					0.5468618869781494,
					-0.20141266286373138,
					-0.6333567500114441
				},
				{
					0.33111111111111113,
					-0.3001747131347656,
					0.6076433658599854,
					-0.09796810150146484,
					-0.3777002692222595,
					0.6286516785621643,
					-0.13852091133594513,
					-0.6655460596084595
				},
				{
					0.3655555555555556,
					-0.11081981658935547,
					0.6949076652526855,
					-0.10968446731567383,
					-0.14913177490234375,
					0.6919703483581543,
					0.050288889557123184,
					-0.7045621871948242
				},
				{
					0.4,
					0.1674661636352539,
					0.6748830080032349,
					-0.13327240943908691,
					0.2410525530576706,
					0.6148346066474915,
					0.4279842972755432,
					-0.6170101761817932
				},
				{
					0.4344444444444444,
					0.45091819763183594,
					0.555657148361206,
					-0.1395580768585205,
					0.48617297410964966,
					0.40079790353775024,
					0.6452553868293762,
					-0.43202120065689087
				},
				{
					0.4688888888888889,
					0.6192913055419922,
					0.38524699211120605,
					-0.15521931648254395,
					0.5911787152290344,
					0.30636364221572876,
					0.715324342250824,
					-0.21203793585300446
				},
				{
					0.5033333333333333,
					0.7134914398193359,
					0.2103252410888672,
					-0.18308770656585693,
					0.63018798828125,
					0.2797117531299591,
					0.723551869392395,
					-0.03312431648373604
				}
			}
--Light 3/4
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.anim_event = "attack_swing_down"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.damage_window_start = 0.38
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.damage_window_end = 0.47
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.width_mod = 10
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.total_time = 1.95
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.anim_time_scale = 1.3
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.2625,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2625,
					external_multiplier = 0.5,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.baked_sweep = {
				{
					0.3466666666666667,
					0.22458600997924805,
					0.19822120666503906,
					0.32592344284057617,
					-0.6857628226280212,
					-0.08758018910884857,
					0.0413111113011837,
					-0.7213546633720398
				},
				{
					0.37277777777777776,
					0.20093774795532227,
					0.33371734619140625,
					0.30137157440185547,
					-0.5833305716514587,
					-0.10599827021360397,
					0.006187887396663427,
					-0.8052648901939392
				},
				{
					0.3988888888888889,
					0.17713594436645508,
					0.42899131774902344,
					0.270113468170166,
					-0.48434484004974365,
					-0.10985085368156433,
					-0.018101675435900688,
					-0.8677644729614258
				},
				{
					0.425,
					0.12107229232788086,
					0.5991630554199219,
					0.13934659957885742,
					-0.1875552088022232,
					-0.10446847975254059,
					-0.04407147318124771,
					-0.9756880402565002
				},
				{
					0.4511111111111111,
					0.03217744827270508,
					0.7447166442871094,
					-0.1747441291809082,
					0.45921188592910767,
					-0.04430054873228073,
					-0.0331922322511673,
					-0.8866003751754761
				},
				{
					0.4772222222222222,
					-0.07396316528320312,
					0.6359577178955078,
					-0.5543045997619629,
					0.8496612310409546,
					-0.010238771326839924,
					-0.1143631711602211,
					-0.5146768093109131
				},
				{
					0.5033333333333333,
					-0.09254312515258789,
					0.4187297821044922,
					-0.713139533996582,
					0.9608858823776245,
					-0.021566079929471016,
					-0.15341436862945557,
					-0.22955891489982605
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.hit_mass_count = nil
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.anim_event = "attack_swing_down_right"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.damage_window_start = 0.38
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.damage_window_end = 0.45
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.width_mod = 10
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.range_mod = 1.2
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.total_time = 1.95
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.anim_time_scale = 1.3
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.2625,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2625,
					external_multiplier = 0.5,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.baked_sweep = {
				{
					0.3466666666666667,
					-0.2155599594116211,
					0.2979586124420166,
					0.17695772647857666,
					-0.6996107697486877,
					0.22854512929916382,
					-0.2507716715335846,
					-0.6288286447525024
				},
				{
					0.36944444444444446,
					-0.1874837875366211,
					0.4160645008087158,
					0.1811835765838623,
					-0.6091817021369934,
					0.21570880711078644,
					-0.17163197696208954,
					-0.7435790300369263
				},
				{
					0.39222222222222225,
					-0.12880611419677734,
					0.5870962142944336,
					0.16123104095458984,
					-0.4042046070098877,
					0.21779610216617584,
					-0.12262416630983353,
					-0.8798561096191406
				},
				{
					0.41500000000000004,
					-0.05316925048828125,
					0.7178025245666504,
					0.038548946380615234,
					0.051250312477350235,
					0.17500180006027222,
					-0.04108492285013199,
					-0.9823746085166931
				},
				{
					0.43777777777777777,
					0.1009054183959961,
					0.770221471786499,
					-0.3026658296585083,
					0.6162154674530029,
					0.1098581999540329,
					0.08260688930749893,
					-0.7754907011985779
				},
				{
					0.46055555555555555,
					0.4026670455932617,
					0.3218672275543213,
					-0.8195931911468506,
					0.841169536113739,
					0.19860783219337463,
					0.13755077123641968,
					-0.4838063418865204
				},
				{
					0.48333333333333334,
					0.7746467590332031,
					0.25507259368896484,
					-0.6675475835800171,
					0.6638069152832031,
					0.40127646923065186,
					0.46785926818847656,
					-0.4236098527908325
				}
			}
--Pushstab
Weapons.one_handed_hammer_template_2.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.damage_window_start = 0.33
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.damage_window_end = 0.47
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.total_time = 1.95
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.baked_sweep = {
				{
					0.2966666666666667,
					-0.4027719497680664,
					0.48967480659484863,
					-0.09750592708587646,
					-0.5091506242752075,
					0.5468618869781494,
					-0.20141266286373138,
					-0.6333567500114441
				},
				{
					0.33111111111111113,
					-0.3001747131347656,
					0.6076433658599854,
					-0.09796810150146484,
					-0.3777002692222595,
					0.6286516785621643,
					-0.13852091133594513,
					-0.6655460596084595
				},
				{
					0.3655555555555556,
					-0.11081981658935547,
					0.6949076652526855,
					-0.10968446731567383,
					-0.14913177490234375,
					0.6919703483581543,
					0.050288889557123184,
					-0.7045621871948242
				},
				{
					0.4,
					0.1674661636352539,
					0.6748830080032349,
					-0.13327240943908691,
					0.2410525530576706,
					0.6148346066474915,
					0.4279842972755432,
					-0.6170101761817932
				},
				{
					0.4344444444444444,
					0.45091819763183594,
					0.555657148361206,
					-0.1395580768585205,
					0.48617297410964966,
					0.40079790353775024,
					0.6452553868293762,
					-0.43202120065689087
				},
				{
					0.4688888888888889,
					0.6192913055419922,
					0.38524699211120605,
					-0.15521931648254395,
					0.5911787152290344,
					0.30636364221572876,
					0.715324342250824,
					-0.21203793585300446
				},
				{
					0.5033333333333333,
					0.7134914398193359,
					0.2103252410888672,
					-0.18308770656585693,
					0.63018798828125,
					0.2797117531299591,
					0.723551869392395,
					-0.03312431648373604
				}
			}
--Heavies
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.anim_event = "attack_swing_heavy_left_diagonal"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_tank_1h_finesse"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.damage_window_start = 0.15
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.damage_window_end = 0.3
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.width_mod = 10
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.range_mod = 1.2
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.286125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.286125,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.baked_sweep = {
				{
					0.11666666666666667,
					0.3286566734313965,
					0.38442182540893555,
					0.15373265743255615,
					-0.22785641252994537,
					-0.38962307572364807,
					0.17433500289916992,
					-0.8751472234725952
				},
				{
					0.1527777777777778,
					0.21822237968444824,
					0.4396076202392578,
					0.06386721134185791,
					0.1544835865497589,
					-0.42459359765052795,
					-0.03281427174806595,
					-0.8915034532546997
				},
				{
					0.18888888888888888,
					-0.012676715850830078,
					0.5074033737182617,
					-0.06316161155700684,
					0.5247191190719604,
					-0.3467475473880768,
					-0.22564420104026794,
					-0.7439897656440735
				},
				{
					0.22499999999999998,
					-0.2814059257507324,
					0.5217838287353516,
					-0.1962108612060547,
					0.6932355165481567,
					-0.24881912767887115,
					-0.329641729593277,
					-0.5906351804733276
				},
				{
					0.26111111111111107,
					-0.5007836818695068,
					0.3227109909057617,
					-0.3174067735671997,
					0.7806180119514465,
					-0.19367828965187073,
					-0.4433147609233856,
					-0.39572247862815857
				},
				{
					0.29722222222222217,
					-0.5927212238311768,
					0.14726734161376953,
					-0.35321223735809326,
					0.8010765314102173,
					-0.1780545860528946,
					-0.5170548558235168,
					-0.24336664378643036
				},
				{
					0.3333333333333333,
					-0.5434455871582031,
					0.06700468063354492,
					-0.3996988534927368,
					0.8120498061180115,
					-0.1683911681175232,
					-0.5328555107116699,
					-0.16818012297153473
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.anim_event = "attack_swing_heavy_right_diagonal"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.damage_profile = "medium_slashing_tank_1h_finesse"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.damage_window_start = 0.15
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.damage_window_end = 0.3
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.width_mod = 10
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.range_mod = 1.2
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.total_time = 1.5
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.anim_time_scale = 1
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.286125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.286125,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.baked_sweep = {
				{
					0.11666666666666667,
					-0.25451040267944336,
					0.2782936096191406,
					0.11283540725708008,
					-0.5216851234436035,
					0.25411659479141235,
					-0.14820538461208344,
					-0.8008149862289429
				},
				{
					0.1527777777777778,
					-0.18799638748168945,
					0.454831600189209,
					0.06292521953582764,
					-0.22307394444942474,
					0.41466546058654785,
					-0.09909883141517639,
					-0.8766242265701294
				},
				{
					0.18888888888888888,
					-0.04425811767578125,
					0.6289305686950684,
					-0.031099557876586914,
					0.21385866403579712,
					0.4696301817893982,
					0.0845828577876091,
					-0.852383553981781
				},
				{
					0.22499999999999998,
					0.21789097785949707,
					0.6650643348693848,
					-0.14887845516204834,
					0.6224513649940491,
					0.31054913997650146,
					0.3532450795173645,
					-0.6255648732185364
				},
				{
					0.26111111111111107,
					0.43033552169799805,
					0.6052908897399902,
					-0.25656676292419434,
					0.7493036389350891,
					0.22511769831180573,
					0.40261590480804443,
					-0.47514891624450684
				},
				{
					0.29722222222222217,
					0.6451857089996338,
					0.3166627883911133,
					-0.33372020721435547,
					0.7629949450492859,
					0.2770317494869232,
					0.4881516993045807,
					-0.32062461972236633
				},
				{
					0.3333333333333333,
					0.7522621154785156,
					0.050200462341308594,
					-0.3688727617263794,
					0.7538682222366333,
					0.31586551666259766,
					0.5289060473442078,
					-0.2284078747034073
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
--Dodge/Block/etc
Weapons.one_handed_hammer_template_2.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_template_2.max_fatigue_points = 6
Weapons.one_handed_hammer_template_2.dodge_count = 5
Weapons.one_handed_hammer_template_2.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.one_handed_hammer_template_2.buffs.change_dodge_speed.external_optional_multiplier = 1.2
-------------------------------------------------------Dual Axes----------------------------------------------------------------------------------
--Default State
Weapons.dual_wield_axes_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_back_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_back_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default_heavy.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default_heavy.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_3",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_3",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default_right_heavy.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.default_right_heavy.allowed_chain_actions = {
				{
					sub_action = "light_attack_back_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Light 1/2/3/4
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.width_mod = 10
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.uninterruptible = true
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.total_time = 2.25
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.5
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one",
				},
				{
					sub_action = "default_last",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold",
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.width_mod = 10
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.uninterruptible = true
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.total_time = 2.25
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.5
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one",
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold",
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.width_mod = 10
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.uninterruptible = true
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.total_time = 2.25
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.anim_time_scale = 1.5
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one",
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold",
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.width_mod = 10
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.uninterruptible = true
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.total_time = 2.25
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.anim_time_scale = 1.5
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one",
				},
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold",
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.dual_wield_axes_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.damage_profile_left = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.damage_profile_right = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.uninterruptible = true
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.total_time = 1.275
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 0.85
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.2023,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2023,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.width_mod = 10
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.total_time = 2.25
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.anim_time_scale = 1.5
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.20125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.20125,
					external_multiplier = 0.7,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions = {
				{
					sub_action = "default_right_heavy",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.width_mod = 10
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.total_time = 2.25
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.anim_time_scale = 1.5
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.20125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.20125,
					external_multiplier = 0.7,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_heavy",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_heavy",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.width_mod = 10
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.anim_time_scale = 1.5
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.20125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.20125,
					external_multiplier = 0.7,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.dual_wield_axes_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axes_template_1.max_fatigue_points = 6
Weapons.dual_wield_axes_template_1.dodge_count = 6
Weapons.dual_wield_axes_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_axes_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
-------------------------------------------------------Dual Hammers------------------------------------------------------------------------------
--Simple Template Changes
DamageProfileTemplates.medium_blunt_tank_dual.cleave_distribution = {attack = 0.2, impact = 0.4}
--Lower base damage of lights to 8, lower infantry damage of heavies to 9ish?
--Default State
Weapons.dual_wield_hammers_template.actions.action_one.default.anim_event = "attack_swing_charge_left"
Weapons.dual_wield_hammers_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_uppercut",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_diagonal",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.default_down.anim_event = "attack_swing_charge_left"
Weapons.dual_wield_hammers_template.actions.action_one.default_down.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.default_down.allowed_chain_actions = {
				{
					sub_action = "light_attack_down",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.width_mod = 10
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.total_time = 2.55
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.anim_time_scale = 1.7
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.595,
					end_time = 1.53,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.595,
					end_time = 1.53,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.53,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.53,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.51,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.51,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.width_mod = 10
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.total_time = 2.25
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.anim_time_scale = 1.5
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.width_mod = 10
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.total_time = 2.25
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.5
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.dual_wield_hammers_template.actions.action_one.push.anim_time_scale = 1
Weapons.dual_wield_hammers_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.anim_event = "attack_swing_heavy_down"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.weapon_action_hand = "both"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.damage_profile = nil
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.damage_profile_right = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.damage_profile_left = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.damage_window_start = 0.2
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.damage_window_end = 0.3
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.uninterruptible = true
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.total_time = 1.275
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.anim_time_scale = 0.85
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.baked_sweep = nil
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.baked_sweep_right = {
				{
					0.16666666666666669,
					0.15340900421142578,
					0.022681236267089844,
					0.31192725896835327,
					-0.6669479608535767,
					0.15328240394592285,
					0.037133511155843735,
					-0.7282211780548096
				},
				{
					0.19444444444444445,
					0.2624702453613281,
					0.056777000427246094,
					0.29408079385757446,
					-0.576887309551239,
					0.029039764776825905,
					0.08213230967521667,
					-0.8121650218963623
				},
				{
					0.22222222222222224,
					0.26246070861816406,
					0.24053955078125,
					0.2266255021095276,
					-0.46749746799468994,
					-0.028498703613877296,
					0.13691098988056183,
					-0.872862696647644
				},
				{
					0.25,
					0.17998886108398438,
					0.5145392417907715,
					0.07952648401260376,
					-0.24201716482639313,
					-0.03133665770292282,
					0.16409756243228912,
					-0.9557812213897705
				},
				{
					0.2777777777777778,
					0.08797359466552734,
					0.68780517578125,
					-0.1181708574295044,
					0.31712836027145386,
					0.04660911113023758,
					0.04366336017847061,
					-0.9462297558784485
				},
				{
					0.3055555555555556,
					0.061356544494628906,
					0.6818208694458008,
					-0.321580708026886,
					0.7780440449714661,
					-0.05824137479066849,
					-0.059088706970214844,
					-0.6227068901062012
				},
				{
					0.3333333333333333,
					0.052669525146484375,
					0.612861156463623,
					-0.504933774471283,
					0.8211949467658997,
					-0.03282196447253227,
					-0.04387543722987175,
					-0.5680110454559326
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.baked_sweep_left = {
				{
					0.16666666666666669,
					-0.25355052947998047,
					-0.010162353515625,
					0.33458298444747925,
					-0.6665594577789307,
					0.03129694610834122,
					-0.1015719473361969,
					-0.7378361225128174
				},
				{
					0.19444444444444445,
					-0.24542713165283203,
					0.12862157821655273,
					0.27509063482284546,
					-0.5418754816055298,
					0.16467265784740448,
					-0.11314110457897186,
					-0.8163657188415527
				},
				{
					0.22222222222222224,
					-0.2404041290283203,
					0.25894641876220703,
					0.19186967611312866,
					-0.4603138267993927,
					0.2059851884841919,
					-0.11556581407785416,
					-0.855760395526886
				},
				{
					0.25,
					-0.17955684661865234,
					0.46997785568237305,
					0.0723116397857666,
					-0.3039548099040985,
					0.14505678415298462,
					-0.012773843482136726,
					-0.9414918422698975
				},
				{
					0.2777777777777778,
					-0.16126346588134766,
					0.6719145774841309,
					-0.2012990117073059,
					0.3521061837673187,
					0.10027950257062912,
					0.05293290317058563,
					-0.9290658831596375
				},
				{
					0.3055555555555556,
					-0.16443443298339844,
					0.5848512649536133,
					-0.539160430431366,
					0.824092447757721,
					0.033354438841342926,
					0.0017702712211757898,
					-0.5654698014259338
				},
				{
					0.3333333333333333,
					-0.18922805786132812,
					0.37192249298095703,
					-0.6749441623687744,
					0.8215515613555908,
					-0.01847025193274021,
					-0.01583564095199108,
					-0.5696148872375488
				}
			}
--Heavies
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.anim_event = "attack_swing_heavy_left_diagonal"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.damage_profile_right = "medium_blunt_tank_dual"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.damage_profile_left = "medium_blunt_tank_dual"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.damage_window_start = 0.3
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.damage_window_end = 0.42
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.slide_armour_hit = true
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.width_mod = 10
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.total_time = 2.25
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.anim_time_scale = 1.5
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.27,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.27,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.baked_sweep_right = {
				{
					0.26666666666666666,
					0.5159835815429688,
					0.335909366607666,
					0.13469535112380981,
					-0.5986664295196533,
					-0.22196927666664124,
					0.15760773420333862,
					-0.7533179521560669
				},
				{
					0.29777777777777775,
					0.4815683364868164,
					0.44315052032470703,
					0.1052362322807312,
					-0.4813177287578583,
					-0.27839094400405884,
					0.07050122320652008,
					-0.8281673789024353
				},
				{
					0.3288888888888889,
					0.42522144317626953,
					0.5582351684570312,
					0.05046498775482178,
					-0.32423874735832214,
					-0.33436110615730286,
					-0.013259543105959892,
					-0.8848141431808472
				},
				{
					0.36,
					0.34302330017089844,
					0.641972541809082,
					0.01797538995742798,
					-0.16361278295516968,
					-0.38203465938568115,
					-0.11320219933986664,
					-0.902477502822876
				},
				{
					0.3911111111111111,
					0.23041439056396484,
					0.660184383392334,
					-0.09702461957931519,
					0.11198609322309494,
					-0.41556796431541443,
					-0.1744474619626999,
					-0.885624349117279
				},
				{
					0.42222222222222217,
					0.05782604217529297,
					0.6502432823181152,
					-0.17595112323760986,
					0.40240731835365295,
					-0.4008876085281372,
					-0.2775212228298187,
					-0.7748157978057861
				},
				{
					0.4533333333333333,
					-0.1553049087524414,
					0.5616488456726074,
					-0.26309889554977417,
					0.6676645278930664,
					-0.3222145736217499,
					-0.37100347876548767,
					-0.5592480301856995
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.baked_sweep_left = {
				{
					0.26666666666666666,
					0.28891944885253906,
					0.34432220458984375,
					0.022870004177093506,
					-0.7112331986427307,
					-0.2814701497554779,
					0.32855603098869324,
					-0.5540512800216675
				},
				{
					0.29777777777777775,
					0.22621440887451172,
					0.5096778869628906,
					0.011641323566436768,
					-0.46250513195991516,
					-0.4156496524810791,
					0.21353645622730255,
					-0.7534763216972351
				},
				{
					0.3288888888888889,
					-0.004611968994140625,
					0.7643823623657227,
					-0.11498332023620605,
					0.19557605683803558,
					-0.47286203503608704,
					-0.06238310784101486,
					-0.8568896651268005
				},
				{
					0.36,
					-0.30275440216064453,
					0.711824893951416,
					-0.2953203320503235,
					0.5634450316429138,
					-0.3315998911857605,
					-0.28148120641708374,
					-0.7023813724517822
				},
				{
					0.3911111111111111,
					-0.4653797149658203,
					0.41956615447998047,
					-0.4361359775066376,
					0.6702195405960083,
					-0.2804245054721832,
					-0.35347336530685425,
					-0.589257538318634
				},
				{
					0.42222222222222217,
					-0.5335521697998047,
					0.12540531158447266,
					-0.47935646772384644,
					0.7536861896514893,
					-0.2346968799829483,
					-0.39009711146354675,
					-0.47402405738830566
				},
				{
					0.4533333333333333,
					-0.5541400909423828,
					0.015500068664550781,
					-0.5182145833969116,
					0.8014243841171265,
					-0.20546598732471466,
					-0.37823784351348877,
					-0.4152575433254242
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.slide_armour_hit = true
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.width_mod = 10
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.total_time = 2.25
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.anim_time_scale = 1.5
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.27,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.27,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.dual_wield_hammers_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_template.max_fatigue_points = 6
Weapons.dual_wield_hammers_template.dodge_count = 6
Weapons.dual_wield_hammers_template.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_hammers_template.buffs.change_dodge_speed.external_optional_multiplier = 1.25
-------------------------------------------------2H Pickaxe-------------------------------------------------------------------------------------
--Default State
Weapons.two_handed_picks_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					end_time = 0.75,
					buff_name = "planted_charging_decrease_movement"
				},
				{
					start_time =  0.75,
					external_multiplier = 1.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					end_time = 0.8,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 0.9,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.9,
					end_time = 1.8,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 1.6,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					end_time = 0.75,
					buff_name = "planted_charging_decrease_movement"
				},
				{
					start_time =  0.75,
					external_multiplier = 1.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					end_time = 0.8,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right_charged",
					start_time = 0.9,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.9,
					end_time = 1.8,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right_charged",
					start_time = 1.6,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					end_time = 0.75,
					buff_name = "planted_charging_decrease_movement"
				},
				{
					start_time =  0.75,
					external_multiplier = 1.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					end_time = 0.8,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 0.9,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.9,
					end_time = 1.8,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 1.6,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.damage_profile = "medium_slashing_axe_linesman"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.range_mod = 1.5
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.total_time = 1.575
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.05
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6825,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6825,
					end_time = 1.26,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.26,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5775,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5775,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.damage_profile = "medium_slashing_axe_linesman"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.range_mod = 1.5
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.total_time = 1.575
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.05
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6825,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6825,
					end_time = 1.26,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.26,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5775,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5775,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.two_handed_picks_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_axe_linesman"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.range_mod = 1.5
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.total_time = 1.575
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.05
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6825,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6825,
					end_time = 1.26,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.26,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5775,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5775,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "pick_axe_heavy_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.total_time = 1.8
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1.2
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.35,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.impact_sound_event = "pick_axe_heavy_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.hit_armor_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.hit_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.ignore_armour_hit = true
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.total_time = 1.8
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.anim_time_scale = 1.2
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.35,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "pick_axe_heavy_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.total_time = 1.8
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1.2
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.impact_sound_event = "pick_axe_heavy_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.hit_armor_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.hit_stop_anim = "attack_hit"
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.ignore_armour_hit = true
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.total_time = 1.8
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.anim_time_scale = 1.2
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.two_handed_picks_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_picks_template_1.dodge_count = 4
Weapons.two_handed_picks_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_picks_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
---------------------------------------------------------2h Greataxe---------------------------------------------------------------------------------------
--Default State
Weapons.two_handed_axes_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.2,
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.2,
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_up",
					start_time = 0,
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.2,
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_left.impact_sound_event = "axe_2h_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_left.total_time = 1.5
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.31,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.5,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.60,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.60,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.impact_sound_event = "axe_2h_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.total_time = 1.65
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.1
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.31,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.5,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.715,
					end_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.715,
					end_time = 1.1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.605,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.605,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 3/Pushstab
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.damage_profile = "medium_slashing_axe_linesman"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.anim_event = "attack_swing_left"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.additional_critical_strike_chance = nil
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.total_time = 1.8
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.anim_time_scale = 1.2
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.66,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.baked_sweep = {
				{
					0.2966666666666667,
					0.21077193319797516,
					0.6221046447753906,
					-0.1839979887008667,
					-0.3384746015071869,
					-0.6340773105621338,
					0.269125759601593,
					-0.6410555839538574
				},
				{
					0.33611111111111114,
					-0.007198050618171692,
					0.5757160186767578,
					-0.1794758439064026,
					-0.15742217004299164,
					-0.6828205585479736,
					0.08879106491804123,
					-0.7078774571418762
				},
				{
					0.3755555555555556,
					-0.12727214395999908,
					0.2956056594848633,
					-0.16419607400894165,
					0.22681403160095215,
					-0.6349596381187439,
					-0.34904390573501587,
					-0.65080726146698
				},
				{
					0.41500000000000004,
					-0.035101816058158875,
					0.1360187530517578,
					-0.15848535299301147,
					-0.5875982642173767,
					0.2689453959465027,
					0.7130617499351501,
					0.271918386220932
				},
				{
					0.45444444444444443,
					-0.07925726473331451,
					0.09978866577148438,
					-0.1642041802406311,
					-0.6085383892059326,
					0.19425241649150848,
					0.7267554402351379,
					0.2525344491004944
				},
				{
					0.49388888888888893,
					-0.11346744000911713,
					0.05952167510986328,
					-0.17968767881393433,
					-0.6205357313156128,
					0.16474968194961548,
					0.7261893153190613,
					0.24584966897964478
				},
				{
					0.5333333333333333,
					-0.09872712194919586,
					0.08066654205322266,
					-0.20998507738113403,
					-0.6353895664215088,
					0.13595740497112274,
					0.7455921769142151,
					0.1479455679655075
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_axes_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_bopp.total_time = 1.8
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.2
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.66,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.66,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "axe_2h_hit"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.range_mod = 1.65
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.33635,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.33635,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "axe_2h_hit"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.range_mod = 1.65
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.total_time = 1.5
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.33635,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.33635,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
--Dodge/Block/etc
Weapons.two_handed_axes_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_1.dodge_count = 3
Weapons.two_handed_axes_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_axes_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
----------------------------------------------------------2h Hammer---------------------------------------------------------------------------------------
--All code from Kruber 2h Hammer affects the entirety of Bardin 2h Hammer
---------------------------------------------------------2h Coghammer------------------------------------------------------------------------------
local push_radius = 2.5
local extra_range_add = 1.1
local time_mod = 0.9
local weapon_template = {
actions = {
	action_one = {
		default = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1.2,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_left = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge_right_down",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1.2,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1.2,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_last = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge_right_down",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_up_right_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1.2,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack_right = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			width_mod = 30,
			damage_profile = "heavy_slashing_smiter_executioner",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.5,
			impact_sound_event = "cog_axe_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_down_right",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = 1.4,
			range_mod = 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.31,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.84,
					end_time = 1.4,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.84,
					end_time = 1.4,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.26666666666666666,
					-0.2115662693977356,
					0.40229129791259766,
					0.11554169654846191,
					-0.7105236649513245,
					-0.05646563693881035,
					0.08672874420881271,
					-0.6960214376449585
				},
				{
					0.3111111111111111,
					-0.17420077323913574,
					0.4217958450317383,
					0.11385989189147949,
					-0.650105357170105,
					-0.04077683389186859,
					0.07961060106754303,
					-0.7545611262321472
				},
				{
					0.35555555555555557,
					-0.09588050842285156,
					0.5142498016357422,
					0.05380558967590332,
					-0.5770925283432007,
					0.14896130561828613,
					-0.02357780560851097,
					-0.8026323914527893
				},
				{
					0.4,
					0.02708590030670166,
					0.5960054397583008,
					-0.0680689811706543,
					-0.39922022819519043,
					0.3183591961860657,
					-0.09279802441596985,
					-0.8547860383987427
				},
				{
					0.4444444444444444,
					0.1325927972793579,
					0.46024322509765625,
					-0.2983694076538086,
					0.039847247302532196,
					0.27095627784729004,
					0.06325963139533997,
					-0.959683895111084
				},
				{
					0.48888888888888893,
					0.08225429058074951,
					0.07795906066894531,
					-0.2586348056793213,
					0.8491173982620239,
					0.08629218488931656,
					0.24388031661510468,
					-0.4605167508125305
				},
				{
					0.5333333333333333,
					0.18428468704223633,
					-0.12858009338378906,
					-0.43176913261413574,
					0.8976349234580994,
					0.03377867117524147,
					0.20743080973625183,
					-0.3874056041240692
				}
			}
		},
		heavy_attack_left = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			width_mod = 30,
			use_precision_sweep = false,
			damage_profile = "heavy_slashing_smiter_executioner",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.5,
			impact_sound_event = "cog_axe_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_down_left",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = 1.4,
			range_mod = 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.31,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.84,
					end_time = 1.4,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.84,
					end_time = 1.4,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.26666666666666666,
					0.20002281665802002,
					0.56011962890625,
					0.11138796806335449,
					-0.6806483864784241,
					-0.15076157450675964,
					0.17208169400691986,
					-0.6959717869758606
				},
				{
					0.3111111111111111,
					0.17410898208618164,
					0.6228351593017578,
					0.036095380783081055,
					-0.6208077073097229,
					-0.11256221681833267,
					0.15769657492637634,
					-0.7596442699432373
				},
				{
					0.35555555555555557,
					0.08746147155761719,
					0.7350349426269531,
					-0.16718792915344238,
					-0.42610085010528564,
					-0.09147147089242935,
					0.12421617656946182,
					-0.8914266228675842
				},
				{
					0.4,
					-0.0471416711807251,
					0.4007844924926758,
					-0.4451773166656494,
					0.3082645833492279,
					-0.10261204093694687,
					-0.02660544030368328,
					-0.9453760385513306
				},
				{
					0.4444444444444444,
					-0.05750548839569092,
					0.23860645294189453,
					-0.30161261558532715,
					0.7795809507369995,
					-0.08923015743494034,
					-0.13032348453998566,
					-0.6060587763786316
				},
				{
					0.48888888888888893,
					-0.16644203662872314,
					0.0554046630859375,
					-0.2852213382720947,
					0.950158417224884,
					-0.06215202808380127,
					-0.18474514782428741,
					-0.24332159757614136
				},
				{
					0.5333333333333333,
					-0.18291616439819336,
					0.02299976348876953,
					-0.27282023429870605,
					0.9799988269805908,
					-0.046204548329114914,
					-0.18585151433944702,
					-0.054098233580589294
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.35,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank_impact",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.5,
			impact_sound_event = "cog_blunt_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_up",
			hit_stop_anim = "attack_hit",
			total_time = 1.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = 1.2,
			range_mod = 1.5,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.325,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.325,
					external_multiplier = 0.7,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_wield",
					input = "action_wield"
				}
			},
			additional_hit_effects = {
				"fx/coghammer_impact"
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.31666666666666665,
					0.37423861026763916,
					0.5812749862670898,
					-0.20066529512405396,
					0.7442251443862915,
					-0.37621578574180603,
					0.46924009919166565,
					0.29052433371543884
				},
				{
					0.35277777777777775,
					0.22149372100830078,
					0.6298847198486328,
					-0.15874451398849487,
					0.8269151449203491,
					-0.15851706266403198,
					0.5100840926170349,
					0.1757780909538269
				},
				{
					0.3888888888888889,
					0.07932281494140625,
					0.6009492874145508,
					-0.05563300848007202,
					0.8502056002616882,
					-0.0005969275953248143,
					0.4955514967441559,
					-0.17770417034626007
				},
				{
					0.425,
					-0.10826826095581055,
					0.45558738708496094,
					-0.00920182466506958,
					0.667561411857605,
					0.2176109105348587,
					0.40440067648887634,
					-0.5860608220100403
				},
				{
					0.46111111111111114,
					-0.23037469387054443,
					0.24475574493408203,
					-0.05542820692062378,
					0.3567037880420685,
					0.39477965235710144,
					0.23739518225193024,
					-0.8127453327178955
				},
				{
					0.49722222222222223,
					-0.17906928062438965,
					0.17382431030273438,
					-0.17646974325180054,
					0.14127856492996216,
					0.4720184803009033,
					-0.024167919531464577,
					-0.8698590993881226
				},
				{
					0.5333333333333333,
					-0.14319682121276855,
					0.17606163024902344,
					-0.2560728192329407,
					0.054749492555856705,
					0.5002443790435791,
					-0.249727264046669,
					-0.8272812962532043
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.35,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank_impact",
			hit_shield_stop_anim = "attack_hit_shield",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.53,
			impact_sound_event = "cog_blunt_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 1.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = 1.2,
			range_mod = 1.5,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.325,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.325,
					external_multiplier = 0.7,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.31666666666666665,
					-0.1651219129562378,
					0.41902637481689453,
					-0.12357282638549805,
					-0.35473594069480896,
					-0.43480953574180603,
					0.7788936495780945,
					-0.2800496220588684
				},
				{
					0.35777777777777775,
					0.014032959938049316,
					0.4897041320800781,
					-0.14508891105651855,
					-0.46682223677635193,
					-0.26358669996261597,
					0.8325770497322083,
					-0.13933588564395905
				},
				{
					0.3988888888888889,
					0.16783201694488525,
					0.4859123229980469,
					-0.1843559741973877,
					-0.5155827403068542,
					-0.020326634868979454,
					0.8565773963928223,
					0.006041984539479017
				},
				{
					0.44,
					0.23536741733551025,
					0.37369251251220703,
					-0.22095942497253418,
					-0.4831708073616028,
					0.2752068340778351,
					0.8144212365150452,
					0.16590768098831177
				},
				{
					0.48111111111111116,
					0.33757781982421875,
					0.09530067443847656,
					-0.31476402282714844,
					-0.234669491648674,
					0.6974785923957825,
					0.5167436599731445,
					0.4375268518924713
				},
				{
					0.5222222222222223,
					0.3845963478088379,
					-0.0766305923461914,
					-0.39172816276550293,
					0.11856687068939209,
					-0.7932396531105042,
					-0.29416516423225403,
					-0.5197882056236267
				},
				{
					0.5633333333333334,
					0.3412182331085205,
					-0.19030284881591797,
					-0.36787962913513184,
					0.13064886629581451,
					-0.8158949613571167,
					-0.11737420409917831,
					-0.5508808493614197
				}
			}
		},
		light_attack_last = {
			damage_window_start = 0.3,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank_impact",
			hit_shield_stop_anim = "attack_hit_shield",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.45,
			impact_sound_event = "cog_blunt_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 1.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = 1.2,
			range_mod = 1.5,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.325,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.325,
					external_multiplier = 0.7,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.26666666666666666,
					0.35154640674591064,
					0.6105613708496094,
					-0.013287782669067383,
					0.3414539694786072,
					-0.5722248554229736,
					0.6815572381019592,
					0.30240345001220703
				},
				{
					0.30277777777777776,
					0.21344292163848877,
					0.6865348815917969,
					-0.08280587196350098,
					0.3867288827896118,
					-0.47263258695602417,
					0.7539681792259216,
					0.24205638468265533
				},
				{
					0.3388888888888889,
					0.008887767791748047,
					0.6877231597900391,
					-0.2301170825958252,
					0.42069894075393677,
					-0.23887230455875397,
					0.8661098480224609,
					0.1257227659225464
				},
				{
					0.375,
					-0.13148605823516846,
					0.3379478454589844,
					-0.3322117328643799,
					0.3491513133049011,
					0.38807761669158936,
					0.8230494856834412,
					-0.2237825244665146
				},
				{
					0.4111111111111111,
					-0.037958502769470215,
					0.21931171417236328,
					-0.22301840782165527,
					0.1010207086801529,
					0.768790602684021,
					0.35491928458213806,
					-0.5222911238670349
				},
				{
					0.44722222222222224,
					-0.09986889362335205,
					0.15837764739990234,
					-0.24700427055358887,
					0.06424062699079514,
					0.7897444367408752,
					0.27032071352005005,
					-0.5469035506248474
				},
				{
					0.48333333333333334,
					-0.1390310525894165,
					0.04988288879394531,
					-0.26990199089050293,
					0.0747339278459549,
					0.790736734867096,
					0.28017276525497437,
					-0.5391227006912231
				}
			}
		},
		light_attack_up_right_last = {
			damage_window_start = 0.3,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank_impact",
			hit_shield_stop_anim = "attack_hit_shield",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.45,
			impact_sound_event = "cog_blunt_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_up_right",
			hit_stop_anim = "attack_hit",
			total_time = 1.95,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = 1.3,
			range_mod = 1.5,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.325,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.325,
					external_multiplier = 0.7,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.78,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.78,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.715,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.715,
					action = "action_wield",
					input = "action_wield"
				}
			},
			additional_hit_effects = {
				"fx/coghammer_impact"
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.26666666666666666,
					-0.018985867500305176,
					0.4225139617919922,
					-0.03986763954162598,
					0.8562652468681335,
					0.1614139825105667,
					-0.49023109674453735,
					-0.02070920355618
				},
				{
					0.30277777777777776,
					0.07023012638092041,
					0.4202117919921875,
					-0.002153158187866211,
					0.822195291519165,
					0.011076490394771099,
					-0.539947509765625,
					-0.17980246245861053
				},
				{
					0.3388888888888889,
					0.2331087589263916,
					0.2840118408203125,
					-0.024387359619140625,
					0.64033043384552,
					-0.2317727655172348,
					-0.438251256942749,
					-0.5866804718971252
				},
				{
					0.375,
					0.33568012714385986,
					0.0990591049194336,
					-0.05949687957763672,
					0.40570268034935,
					-0.2882540822029114,
					-0.16608624160289764,
					-0.8513109087944031
				},
				{
					0.4111111111111111,
					0.40175437927246094,
					-0.0743865966796875,
					-0.08070993423461914,
					0.2557642459869385,
					-0.33797702193260193,
					0.009457919746637344,
					-0.9056857824325562
				},
				{
					0.44722222222222224,
					0.4656496047973633,
					-0.13145160675048828,
					-0.12792420387268066,
					0.22943119704723358,
					-0.3850713074207306,
					-0.006239800248295069,
					-0.8938917517662048
				},
				{
					0.48333333333333334,
					0.46444451808929443,
					-0.16685962677001953,
					-0.21241021156311035,
					0.10743074864149094,
					-0.41462868452072144,
					-0.03283121436834335,
					-0.9030303359031677
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.33,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank_impact",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.5,
			impact_sound_event = "cog_blunt_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			anim_event = "attack_swing_left",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = 1.5,
			range_mod = 1.5,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.375,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.55,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.9,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.9,
					end_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.825,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.825,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.2966666666666667,
					0.20107793807983398,
					0.6221380233764648,
					-0.18470454216003418,
					0.636563777923584,
					-0.3307386338710785,
					0.646638035774231,
					0.2593413293361664
				},
				{
					0.33611111111111114,
					-0.019190192222595215,
					0.5687437057495117,
					-0.18055987358093262,
					0.6845629215240479,
					-0.14283502101898193,
					0.7111994624137878,
					0.07188310474157333
				},
				{
					0.3755555555555556,
					-0.12409496307373047,
					0.2719612121582031,
					-0.16562724113464355,
					0.6177322864532471,
					0.2582583725452423,
					0.634552538394928,
					-0.3860732316970825
				},
				{
					0.41500000000000004,
					-0.03525340557098389,
					0.13697528839111328,
					-0.1588754653930664,
					0.27740272879600525,
					0.5863404273986816,
					0.27610501646995544,
					-0.7092381119728088
				},
				{
					0.45444444444444443,
					-0.07584583759307861,
					0.10315513610839844,
					-0.1643686294555664,
					0.19519448280334473,
					0.6083497405052185,
					0.24793025851249695,
					-0.7282446622848511
				},
				{
					0.49388888888888893,
					-0.11358177661895752,
					0.059683799743652344,
					-0.17803096771240234,
					0.1671963781118393,
					0.6194040179252625,
					0.24888458847999573,
					-0.7255622148513794
				},
				{
					0.5333333333333333,
					-0.09941041469573975,
					0.07971858978271484,
					-0.21016907691955566,
					0.13351668417453766,
					0.6358784437179565,
					0.14564372599124908,
					-0.746069610118866
				}
			}
		},
		push = {
			damage_window_start = 0.05,
			anim_end_event = "attack_finished",
			outer_push_angle = 180,
			kind = "push_stagger",
			damage_profile_outer = "light_push",
			weapon_action_hand = "right",
			push_angle = 100,
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.2,
			impact_sound_event = "slashing_hit",
			charge_value = "action_push",
			no_damage_impact_sound_event = "slashing_hit_armour",
			dedicated_target_range = 2,
			anim_event = "attack_push",
			damage_profile_inner = "medium_push",
			total_time = 0.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			},
			push_radius = push_radius,
			chain_condition_func = function (attacker_unit, input_extension)
				local status_extension = ScriptUnit.extension(attacker_unit, "status_system")

				return not status_extension:fatigued()
			end
		},
	},
	action_two = {
		default = {
			cooldown = 0.15,
			minimum_hold_time = 0.2,
			anim_end_event = "parry_finished",
			kind = "block",
			hold_input = "action_two_hold",
			anim_event = "parry_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			enter_function = function (attacker_unit, input_extension, remaining_time)
				return input_extension:reset_release_input_with_delay(remaining_time)
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "push",
					start_time = 0.2,
					action = "action_one",
					doubleclick_window = 0,
					input = "action_one",
					hold_required = {
						"action_two_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one"
				}
			}
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
	}
}
weapon_template.right_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.coghammer
weapon_template.display_unit = "units/weapons/weapon_display/display_2h_axes"
weapon_template.wield_anim = "to_cog_hammer"
weapon_template.buff_type = "MELEE_2H"
weapon_template.weapon_type = "AXE_2H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 3
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.sound_event_block_within_arc = "weapon_foley_blunt_2h_block_wood"
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.1
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.1
	}
}
weapon_template.attack_meta_data = {
	tap_attack = {
		penetrating = true,
		arc = 0
	},
	hold_attack = {
		penetrating = true,
		arc = 1
	}
}
weapon_template.aim_assist_settings = {
	max_range = 5,
	no_aim_input_multiplier = 0,
	base_multiplier = 0,
	effective_max_range = 4,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 0.5,
		skaven_slave = 0.5
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_high_damage",
	"weapon_keyword_shield_breaking",
	"weapon_keyword_armour_piercing"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_left"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "heavy_attack_left"
	}
}
weapon_template.tooltip_detail = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	push = {
		action_name = "action_one",
		sub_action_name = "push"
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/coghammer"
}
weapon_template.wwise_dep_left_hand = {
	"wwise/coghammer"
}

Weapons.two_handed_cog_hammers_template_2 = weapon_template

ItemMasterList.dr_2h_cog_hammer.template = "two_handed_cog_hammers_template_2"
NetworkLookup.item_template_names = "two_handed_cog_hammers_template_2"
-------------------------------------------------------Ranged-------------------------------------------------------------------------------------
--Dodge/Ammo/Reload/Etc
Weapons.drakegun_template_1.dodge_count = 3
Weapons.drakegun_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.drakegun_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--Dodge/Ammo/Reload/Etc
Weapons.dr_deus_01_template_1.dodge_count = 2
Weapons.dr_deus_01_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.dr_deus_01_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--Dodge/Ammo/Reload/Etc
Weapons.heavy_steam_pistol_template_1.actions.action_one.shoot.impact_data.damage_profile = "shot_repeating"
Weapons.heavy_steam_pistol_template_1.actions.action_one.fast_shot.impact_data.damage_profile = "shot_repeating"
Weapons.heavy_steam_pistol_template_1.default_spread_template = "brace_of_pistols"
Weapons.heavy_steam_pistol_template_1.actions.action_one.fast_shot.crosshair_style = nil
Weapons.heavy_steam_pistol_template_1.actions.action_one.fast_shot.spread_template_override = "pistol_special"
Weapons.heavy_steam_pistol_template_1.actions.action_two.default.crosshair_style = nil
Weapons.heavy_steam_pistol_template_1.actions.action_two.default.spread_template_override = "pistol_special"
Weapons.heavy_steam_pistol_template_1.ammo_data.ammo_per_reload = 8
Weapons.heavy_steam_pistol_template_1.ammo_data.max_ammo = 32
Weapons.heavy_steam_pistol_template_1.ammo_data.ammo_per_clip = 8
Weapons.heavy_steam_pistol_template_1.ammo_data.reload_time = 1.5
Weapons.heavy_steam_pistol_template_1.actions.action_one.default.allowed_chain_actions[3].start_time = 0.5
Weapons.heavy_steam_pistol_template_1.actions.action_one.shoot.allowed_chain_actions[2].start_time = 0
Weapons.heavy_steam_pistol_template_1.actions.action_one.fast_shot.allowed_chain_actions[1].start_time = 0.25
Weapons.heavy_steam_pistol_template_1.actions.action_one.fast_shot.allowed_chain_actions[2].start_time = 0.25
Weapons.heavy_steam_pistol_template_1.actions.action_one.fast_shot.allowed_chain_actions[3].start_time = 0.25
Weapons.heavy_steam_pistol_template_1.actions.action_two.default.allowed_chain_actions[2].start_time = 0
Weapons.heavy_steam_pistol_template_1.actions.action_two.default.allowed_chain_actions[3].start_time = 0
Weapons.heavy_steam_pistol_template_1.dodge_count = 4
Weapons.heavy_steam_pistol_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.heavy_steam_pistol_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--Dodge/Ammo/Reload/Etc
Weapons.grudge_raker_template_1.ammo_data.reload_time = 1.5
Weapons.grudge_raker_template_1.dodge_count = 3
Weapons.grudge_raker_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.grudge_raker_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--Dodge/Ammo/Reload/Etc
Weapons.handgun_template_2.dodge_count = 2
Weapons.handgun_template_2.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.handgun_template_2.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--Dodge/Ammo/Reload/Etc
Weapons.brace_of_drakefirepistols_template_1.dodge_count = 4
Weapons.brace_of_drakefirepistols_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.brace_of_drakefirepistols_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--Dodge/Ammo/Reload/Etc
Weapons.crossbow_template_1.actions.action_one.default.impact_data.damage_profile = "arrow_sniper"
Weapons.crossbow_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.crossbow_template_1.actions.action_one.zoomed_shot.impact_data.damage_profile = "arrow_sniper"
Weapons.crossbow_template_1.actions.action_one.zoomed_shot.minimum_hold_time = 0.2
Weapons.crossbow_template_1.actions.action_one.zoomed_shot.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold",
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.crossbow_template_1.actions.action_two.default.minimum_hold_time = 0
Weapons.crossbow_template_1.default_spread_template = "longbow"
Weapons.crossbow_template_1.actions.action_one.default.speed = 16000
Weapons.crossbow_template_1.actions.action_one.zoomed_shot.speed = 16000
Weapons.crossbow_template_1.dodge_count = 2
Weapons.crossbow_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.crossbow_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--Dodge/Ammo/Reload/Etc
Weapons.one_handed_throwing_axes_template.actions.action_one.default.impact_data.damage_profile = "thrown_javelin"
Weapons.one_handed_throwing_axes_template.actions.action_one.throw_charged.impact_data.damage_profile = "thrown_javelin"
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.default.allowed_chain_actions[1].start_time = 0
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.default.allowed_chain_actions[2].start_time = 1.25
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.default.one_ammo_catch_time = 1
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.default.minimum_hold_time = 0
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.default.total_time = 1.55
Weapons.one_handed_throwing_axes_template.actions.action_two.default.allowed_chain_actions[3].start_time = 0.5
Weapons.one_handed_throwing_axes_template.actions.action_two.default.allowed_chain_actions[4].start_time = 0.5
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.catch.allowed_chain_actions[1].start_time = 0
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.catch.allowed_chain_actions[2].start_time = 1
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.catch.total_time = 1.25
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.catch.catch_time = 0
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.catch.minimum_hold_time = 0
Weapons.one_handed_throwing_axes_template.actions.action_one.default.speed = 7000
Weapons.one_handed_throwing_axes_template.actions.action_one.throw_charged.speed = 7000
Weapons.one_handed_throwing_axes_template.dodge_count = 3
Weapons.one_handed_throwing_axes_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.one_handed_throwing_axes_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--////////////////////////////////////////////////////////////////////////////Kerillian///////////////////////////////////////////////////////////////////////////////////////////////
-------------------------------------------------------------------1h Axe---------------------------------------------------------------------------
--Default State
Weapons.we_one_hand_axe_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.default_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3/4
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.damage_profile = "light_slashing_smiter_finesse"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.width_mod = 10
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.additional_critical_strike_chance = nil
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.total_time = 1.95
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.anim_time_scale = 1.3
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.anim_event = "attack_swing_down_right"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_finesse"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.damage_window_start = 0.38
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.damage_window_end = 0.45
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.width_mod = 10
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.additional_critical_strike_chance = nil
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.total_time = 1.95
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.anim_time_scale = 1.3
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.676,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.676,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.baked_sweep = {
				{
					0.3466666666666667,
					-0.21572208404541016,
					0.29787349700927734,
					0.17684197425842285,
					-0.6989205479621887,
					0.22974303364753723,
					-0.25195690989494324,
					-0.6286859512329102
				},
				{
					0.36944444444444446,
					-0.18794512748718262,
					0.41394901275634766,
					0.1811058521270752,
					-0.6107937693595886,
					0.21561715006828308,
					-0.17237038910388947,
					-0.7421109676361084
				},
				{
					0.39222222222222225,
					-0.12941884994506836,
					0.5860424041748047,
					0.161668062210083,
					-0.4067637622356415,
					0.21792417764663696,
					-0.12306150794029236,
					-0.8785830736160278
				},
				{
					0.41500000000000004,
					-0.05363321304321289,
					0.7172584533691406,
					0.039534568786621094,
					0.0483129657804966,
					0.17534899711608887,
					-0.04186074063181877,
					-0.982428789138794
				},
				{
					0.43777777777777777,
					0.09318161010742188,
					0.772120475769043,
					-0.28412365913391113,
					0.6048346757888794,
					0.10831542313098907,
					0.07993455231189728,
					-0.7848905920982361
				},
				{
					0.46055555555555555,
					0.39004945755004883,
					0.3316831588745117,
					-0.8175486326217651,
					0.842195987701416,
					0.19276681542396545,
					0.12989677488803864,
					-0.48649120330810547
				},
				{
					0.48333333333333334,
					0.7735424041748047,
					0.254913330078125,
					-0.6688098907470703,
					0.6647912859916687,
					0.4007580280303955,
					0.4667152762413025,
					-0.42381882667541504
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.anim_event = "attack_swing_down"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_finesse"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.impact_sound_event = "axe_1h_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.damage_window_start = 0.38
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.damage_window_end = 0.47
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.width_mod = 10
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.total_time = 1.95
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.anim_time_scale = 1.3
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.676,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.676,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.baked_sweep = {
				{
					0.3466666666666667,
					0.21557140350341797,
					0.2605247497558594,
					0.3151884078979492,
					-0.6432750225067139,
					-0.09760115295648575,
					0.026322241872549057,
					-0.7589324712753296
				},
				{
					0.37777777777777777,
					0.18022561073303223,
					0.418182373046875,
					0.274908185005188,
					-0.49719056487083435,
					-0.10988546162843704,
					-0.015279554761946201,
					-0.8605192303657532
				},
				{
					0.4088888888888889,
					0.12532854080200195,
					0.5871024131774902,
					0.1521773338317871,
					-0.2178935706615448,
					-0.10642500221729279,
					-0.04476016387343407,
					-0.9691195487976074
				},
				{
					0.44,
					0.022722721099853516,
					0.7474188804626465,
					-0.20616459846496582,
					0.5046781301498413,
					-0.040759846568107605,
					-0.03638869896531105,
					-0.8615767359733582
				},
				{
					0.4711111111111111,
					-0.08340907096862793,
					0.5843019485473633,
					-0.6157277822494507,
					0.8930391073226929,
					-0.014335322193801403,
					-0.12749531865119934,
					-0.431301087141037
				},
				{
					0.5022222222222222,
					-0.09804725646972656,
					0.17070770263671875,
					-0.7457141876220703,
					0.975835919380188,
					-0.030366793274879456,
					-0.2099905014038086,
					0.052212152630090714
				},
				{
					0.5333333333333333,
					-0.07681035995483398,
					0.009710311889648438,
					-0.7074311971664429,
					0.9465683102607727,
					-0.04525452107191086,
					-0.22046200931072235,
					0.23099148273468018
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.anim_event = "attack_swing_right"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.damage_profile = "light_slashing_smiter_finesse"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.impact_sound_event = "axe_1h_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.damage_window_start = 0.35
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.damage_window_end = 0.47
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.width_mod = 10
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.additional_critical_strike_chance = nil
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.total_time = 1.95
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.anim_time_scale = 1.3
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.baked_sweep = {
				{
					0.31666666666666665,
					-0.35820066928863525,
					0.551788330078125,
					-0.0971219539642334,
					-0.44832417368888855,
					0.5898890495300293,
					-0.17337659001350403,
					-0.6488273739814758
				},
				{
					0.34777777777777774,
					-0.2294255495071411,
					0.6592044830322266,
					-0.09808707237243652,
					-0.29563063383102417,
					0.6608599424362183,
					-0.08005252480506897,
					-0.6851702332496643
				},
				{
					0.3788888888888889,
					-0.00933539867401123,
					0.7010517120361328,
					-0.1212151050567627,
					-0.0053623938001692295,
					0.6900889873504639,
					0.18919384479522705,
					-0.6985371708869934
				},
				{
					0.41,
					0.2595735788345337,
					0.6497220993041992,
					-0.1333606243133545,
					0.3374190926551819,
					0.5514644980430603,
					0.5184585452079773,
					-0.5596750378608704
				},
				{
					0.44111111111111106,
					0.4877122640609741,
					0.5269002914428711,
					-0.1436471939086914,
					0.5130868554115295,
					0.3724185526371002,
					0.66352379322052,
					-0.39721861481666565
				},
				{
					0.4722222222222222,
					0.636212944984436,
					0.36120033264160156,
					-0.1584303379058838,
					0.598544180393219,
					0.3022090792655945,
					0.7190064787864685,
					-0.18287771940231323
				},
				{
					0.5033333333333333,
					0.713760495185852,
					0.20956707000732422,
					-0.18317461013793945,
					0.630311906337738,
					0.2794775068759918,
					0.7235577702522278,
					-0.03260987997055054
				}
			}
--Pushstab
Weapons.we_one_hand_axe_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_finesse"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.additional_critical_strike_chance = nil
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.total_time = 1.95
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.width_mod = 10
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.range_mod = 1.2
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.26,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time =1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.damage_profile = "medium_slashing_smiter_1h"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.width_mod = 10
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.range_mod = 1.2
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.total_time = 1.5
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.anim_time_scale = 1
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.26,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time =1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.we_one_hand_axe_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.dodge_count = 5
Weapons.we_one_hand_axe_template.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.we_one_hand_axe_template.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--------------------------------------------------------------------1h Sword------------------------------------------------------------------------
--Default
Weapons.we_one_hand_sword_template_1.actions.action_one.default.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.we_one_hand_sword_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.default_right.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.we_one_hand_sword_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.default_left.anim_event = "attack_swing_charge_left"
Weapons.we_one_hand_sword_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_up",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_up",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.anim_event = "attack_swing_left"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.damage_window_start = 0.38
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.damage_window_end = 0.5
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.sweep_z_offset = 0
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.width_mod = 10
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.total_time = 1.95
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.3
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.baked_sweep = {
				{
					0.3466666666666667,
					0.4979362487792969,
					0.5005283355712891,
					0.018489837646484375,
					-0.38468441367149353,
					-0.5321440100669861,
					0.3524048924446106,
					-0.6668219566345215
				},
				{
					0.37777777777777777,
					0.42641258239746094,
					0.5578670501708984,
					0.016463279724121094,
					-0.32481276988983154,
					-0.5670905709266663,
					0.297601580619812,
					-0.6959441900253296
				},
				{
					0.4088888888888889,
					0.28052520751953125,
					0.6403789520263672,
					-0.0013265609741210938,
					-0.16875989735126495,
					-0.6170117259025574,
					0.15781056880950928,
					-0.7522715330123901
				},
				{
					0.44,
					0.03853797912597656,
					0.7116661071777344,
					-0.04547691345214844,
					0.14948996901512146,
					-0.6078135371208191,
					-0.12879861891269684,
					-0.7691725492477417
				},
				{
					0.4711111111111111,
					-0.3188743591308594,
					0.5574417114257812,
					-0.16222667694091797,
					-0.5650471448898315,
					0.3253098130226135,
					0.5767348408699036,
					0.4922116696834564
				},
				{
					0.5022222222222222,
					-0.4058952331542969,
					0.4154987335205078,
					-0.24257755279541016,
					-0.6630380153656006,
					0.15885120630264282,
					0.668820321559906,
					0.29635515809059143
				},
				{
					0.5333333333333333,
					-0.43575096130371094,
					0.29512977600097656,
					-0.3425750732421875,
					-0.6130070090293884,
					0.039156798273324966,
					0.7446082830429077,
					0.26124265789985657
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.damage_window_start = 0.4
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.damage_window_end = 0.47
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.sweep_z_offset = 0
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.width_mod = 10
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.total_time = 1.95
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.3
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.585,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.585,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.baked_sweep = {
				{
					0.3666666666666667,
					-0.23061680793762207,
					0.38203907012939453,
					0.06376850605010986,
					-0.7343723773956299,
					0.2405681610107422,
					-0.18290375173091888,
					-0.6077585816383362
				},
				{
					0.3894444444444445,
					-0.14942240715026855,
					0.5445704460144043,
					0.03229475021362305,
					-0.5191318988800049,
					0.361085444688797,
					-0.09627567231655121,
					-0.768667995929718
				},
				{
					0.4122222222222222,
					-0.04363560676574707,
					0.6534061431884766,
					-0.036274075508117676,
					-0.21883073449134827,
					0.42477378249168396,
					0.006604961585253477,
					-0.87842857837677
				},
				{
					0.435,
					0.2490684986114502,
					0.7248177528381348,
					-0.23397958278656006,
					0.3424864113330841,
					0.3733581602573395,
					0.25992855429649353,
					-0.8220364451408386
				},
				{
					0.4577777777777778,
					0.6050543785095215,
					0.5543885231018066,
					-0.4286525249481201,
					0.7123553156852722,
					0.21618635952472687,
					0.4235277771949768,
					-0.5161759853363037
				},
				{
					0.4805555555555555,
					0.8123147487640381,
					0.3333110809326172,
					-0.5413068532943726,
					0.6377313137054443,
					0.3634047210216522,
					0.53066486120224,
					-0.4238286018371582
				},
				{
					0.5033333333333333,
					0.8569226264953613,
					0.17516088485717773,
					-0.607397198677063,
					0.6263313293457031,
					0.44641754031181335,
					0.5322622656822205,
					-0.35371941328048706
				}
			}
--Light 3
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.anim_event = "attack_swing_down"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.impact_sound_event = "axe_1h_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.damage_window_start = 0.38
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.damage_window_end = 0.5
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.sweep_z_offset = 0
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.width_mod = 10
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.range_mod = 1.2
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.total_time = 1.95
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.3
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.75,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.baked_sweep = {
				{
					0.3466666666666667,
					0.21557140350341797,
					0.2605247497558594,
					0.3151884078979492,
					-0.6432750225067139,
					-0.09760115295648575,
					0.026322241872549057,
					-0.7589324712753296
				},
				{
					0.37777777777777777,
					0.18022561073303223,
					0.418182373046875,
					0.274908185005188,
					-0.49719056487083435,
					-0.10988546162843704,
					-0.015279554761946201,
					-0.8605192303657532
				},
				{
					0.4088888888888889,
					0.12532854080200195,
					0.5871024131774902,
					0.1521773338317871,
					-0.2178935706615448,
					-0.10642500221729279,
					-0.04476016387343407,
					-0.9691195487976074
				},
				{
					0.44,
					0.022722721099853516,
					0.7474188804626465,
					-0.20616459846496582,
					0.5046781301498413,
					-0.040759846568107605,
					-0.03638869896531105,
					-0.8615767359733582
				},
				{
					0.4711111111111111,
					-0.08340907096862793,
					0.5843019485473633,
					-0.6157277822494507,
					0.8930391073226929,
					-0.014335322193801403,
					-0.12749531865119934,
					-0.431301087141037
				},
				{
					0.5022222222222222,
					-0.09804725646972656,
					0.17070770263671875,
					-0.7457141876220703,
					0.975835919380188,
					-0.030366793274879456,
					-0.2099905014038086,
					0.052212152630090714
				},
				{
					0.5333333333333333,
					-0.07681035995483398,
					0.009710311889648438,
					-0.7074311971664429,
					0.9465683102607727,
					-0.04525452107191086,
					-0.22046200931072235,
					0.23099148273468018
				}
			}
--Pushstab
Weapons.we_one_hand_sword_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.anim_event = "attack_swing_up"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "slashing_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.32
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.47
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.sweep_z_offset = 0
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.total_time = 2.55
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.7
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.731,
					end_time = 1.7,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.731,
					end_time = 1.7,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.7,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.7,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.68,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.68,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.baked_sweep = {
				{
					0.2866666666666667,
					-0.41350293159484863,
					0.4844527244567871,
					-0.2562311887741089,
					-0.35652849078178406,
					0.7300900220870972,
					-0.07681212574243546,
					-0.5778892040252686
				},
				{
					0.3227777777777778,
					-0.24625730514526367,
					0.6289796829223633,
					-0.15109312534332275,
					-0.08411410450935364,
					0.823539674282074,
					0.08839388191699982,
					-0.5539799928665161
				},
				{
					0.35888888888888887,
					-0.01707768440246582,
					0.7289881706237793,
					-0.06512629985809326,
					0.14864933490753174,
					0.7197073101997375,
					0.4392889440059662,
					-0.5166720747947693
				},
				{
					0.395,
					0.21272587776184082,
					0.7487025260925293,
					0.017190933227539062,
					0.35783877968788147,
					0.5050615072250366,
					0.6767236590385437,
					-0.39863458275794983
				},
				{
					0.4311111111111111,
					0.45523858070373535,
					0.6404848098754883,
					0.11985599994659424,
					0.3606576919555664,
					0.4471580684185028,
					0.7828224301338196,
					-0.23909156024456024
				},
				{
					0.4672222222222222,
					0.7496340274810791,
					0.46806859970092773,
					0.065185546875,
					0.5301265120506287,
					0.26427510380744934,
					0.8056764602661133,
					-0.0031827588099986315
				},
				{
					0.5033333333333333,
					0.8966436386108398,
					0.19035005569458008,
					-0.04712677001953125,
					0.5857776403427124,
					0.07754908502101898,
					0.8066393136978149,
					0.013556430116295815
				}
			}
--Heavies
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_slashing_smiter_1h"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.additional_critical_strike_chance = nil
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.sweep_z_offset = 0
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.width_mod = 10
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.total_time = 1.5
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.235,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.235,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.anim_event = "attack_swing_heavy"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.damage_profile = "medium_slashing_tank_1h_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.impact_sound_event = "slashing_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.hit_shield_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.hit_armor_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.hit_stop_anim = "attack_hit"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.slide_armour_hit = true
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.additional_critical_strike_chance = nil
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.damage_window_start = 0.15
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.damage_window_end = 0.3
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.sweep_z_offset = -0.125
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.width_mod = 10
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.total_time = 1.5
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.anim_time_scale = 1
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.235,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.235,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.baked_sweep = {
				{
					0.11666666666666667,
					0.3648395538330078,
					0.3408393859863281,
					-0.08428192138671875,
					-0.2939467132091522,
					-0.5669031739234924,
					0.09543472528457642,
					-0.7636153697967529
				},
				{
					0.1527777777777778,
					0.3161191940307617,
					0.48991966247558594,
					-0.11098527908325195,
					-0.12825623154640198,
					-0.6123620271682739,
					-0.023620005697011948,
					-0.7797468900680542
				},
				{
					0.18888888888888888,
					0.11617136001586914,
					0.7000885009765625,
					-0.15999460220336914,
					0.16052234172821045,
					-0.6228265762329102,
					-0.2715951204299927,
					-0.7159300446510315
				},
				{
					0.22499999999999998,
					-0.15909624099731445,
					0.6685962677001953,
					-0.14235925674438477,
					-0.5006442666053772,
					0.44516289234161377,
					0.588365912437439,
					0.4527813494205475
				},
				{
					0.26111111111111107,
					-0.3959183692932129,
					0.475067138671875,
					-0.15259647369384766,
					-0.6386439800262451,
					0.2562183141708374,
					0.662607729434967,
					0.2956976890563965
				},
				{
					0.29722222222222217,
					-0.4992341995239258,
					0.31254005432128906,
					-0.20154094696044922,
					0.7131814360618591,
					-0.10256817936897278,
					-0.6710095405578613,
					-0.17492347955703735
				},
				{
					0.3333333333333333,
					-0.515383243560791,
					0.18102455139160156,
					-0.26951122283935547,
					0.7617275714874268,
					0.03979433700442314,
					-0.6423617005348206,
					-0.0745590552687645
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.hit_mass_count = TANK_HIT_MASS_COUNT
--Dodge/Block/etc
Weapons.we_one_hand_sword_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_sword_template_1.outer_block_fatigue_point_multiplier  = 2
Weapons.we_one_hand_sword_template_1.dodge_count = 5
Weapons.we_one_hand_sword_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.we_one_hand_sword_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
-------------------------------------------------------------------Dual Daggers---------------------------------------------------------------------
--Simple Template Changes
DamageProfileTemplates.light_fencer_stab_diag.armor_modifier.attack = { 1.45, 0, 1.5, 1, 1.04} --Inf/Armor/Monster/Super/Zerker
DamageProfileTemplates.light_fencer_stab_diag.critical_strike.attack_armor_power_modifer = {1.45, 0.5, 2, 1, 1.04} --1/0.5/2/1/1
DamageProfileTemplates.light_fencer_stab_diag.cleave_distribution.attack = 0.075
DamageProfileTemplates.light_fencer_stab_diag.cleave_distribution.impact = 0.075
DamageProfileTemplates.light_fencer_stab_diag.targets[1].dot_template_name = nil
DamageProfileTemplates.light_fencer_stab.targets[1].dot_template_name = nil
--Default State
Weapons.dual_wield_daggers_template_1.actions.action_one.default.uninterruptible = nil
Weapons.dual_wield_daggers_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.default_right.uninterruptible = nil
Weapons.dual_wield_daggers_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.default_left.uninterruptible = nil
Weapons.dual_wield_daggers_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_quick_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.default_left_last.uninterruptible = nil
Weapons.dual_wield_daggers_template_1.actions.action_one.default_left_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.default_left_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.default_stab.uninterruptible = nil
Weapons.dual_wield_daggers_template_1.actions.action_one.default_stab.anim_time_scale = 1
Weapons.dual_wield_daggers_template_1.actions.action_one.default_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.default_stab.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3/4
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.width_mod = 10
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.range_mod = 1.15
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.total_time = 2.25
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.5
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.169,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.169,
					external_multiplier = 0.9,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.width_mod = 10
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.range_mod = 1.15
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.uninterruptible = true
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.total_time = 2.25
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.5
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.169,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.169,
					external_multiplier = 0.9,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.hit_stop_anim = "attack_hit"Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.width_mod = 10
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.range_mod = 1.15
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.total_time = 2.25
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.anim_time_scale = 1.5
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.169,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.169,
					external_multiplier = 0.9,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.allowed_chain_actions = {
				{
					sub_action = "default_left_last",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left_last",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.width_mod = 10
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.range_mod = 1.15
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.uninterruptible = true
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.total_time = 2.25
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.5
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.169,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.169,
					external_multiplier = 0.9,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.dual_wield_daggers_template_1.actions.action_one.push.fatigue_cost = nil
Weapons.dual_wield_daggers_template_1.actions.action_one.push.damage_profile_inner = "medium_push"
Weapons.dual_wield_daggers_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "push_stab",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.anim_event = "attack_swing_heavy"
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.weapon_action_hand = "both"
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.damage_profile = nil
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.damage_profile_left = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.damage_profile_right = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.hit_armor_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.hit_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.damage_window_start = 0.15
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.damage_window_end = 0.25
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.width_mod = 10
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.range_mod = 1.15
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.additional_critical_strike_chance = nil
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.uninterruptible = true
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.total_time = 1.275
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.anim_time_scale = 0.85
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.20125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.20125,
					external_multiplier = 0.7,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.allowed_chain_actions = {
				{
					sub_action = "default_stab",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_stab",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.baked_sweep = nil
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.baked_sweep_right = {
				{
					0.11666666666666667,
					0.069488525390625,
					0.3930821120738983,
					0.1820770502090454,
					-0.4213496446609497,
					0.0655088871717453,
					0.08426084369421005,
					-0.900596022605896
				},
				{
					0.14444444444444443,
					0.08718585968017578,
					0.46456459164619446,
					0.1596163511276245,
					-0.13596732914447784,
					-0.024861132726073265,
					0.1551389992237091,
					-0.9781752228736877
				},
				{
					0.17222222222222222,
					0.09003639221191406,
					0.5841156244277954,
					-0.020306110382080078,
					0.41208335757255554,
					-0.07677217572927475,
					0.005165729206055403,
					-0.9078913331031799
				},
				{
					0.2,
					0.07197093963623047,
					0.6795880794525146,
					-0.16673636436462402,
					0.6655995845794678,
					-0.04366239160299301,
					-0.033580146729946136,
					-0.7442736029624939
				},
				{
					0.22777777777777777,
					0.06752586364746094,
					0.6778186559677124,
					-0.3245853781700134,
					0.7557472586631775,
					-0.05285021662712097,
					-0.05853281170129776,
					-0.6500975489616394
				},
				{
					0.25555555555555554,
					0.07218551635742188,
					0.5829885005950928,
					-0.5514176487922668,
					0.8357394933700562,
					-0.018138976767659187,
					-0.058612558990716934,
					-0.545687735080719
				},
				{
					0.2833333333333333,
					0.13320541381835938,
					0.3728419840335846,
					-0.7472038269042969,
					0.8793743252754211,
					0.015139274299144745,
					0.04753914102911949,
					-0.47350993752479553
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.baked_sweep_left = {
				{
					0.11666666666666667,
					-0.25020408630371094,
					0.1997722089290619,
					0.23025262355804443,
					-0.4550740718841553,
					0.10765039175748825,
					-0.045053690671920776,
					-0.8827735781669617
				},
				{
					0.14444444444444443,
					-0.2686433792114258,
					0.24974289536476135,
					0.1711972951889038,
					-0.4543502628803253,
					0.2238570600748062,
					-0.10981801152229309,
					-0.8552156686782837
				},
				{
					0.17222222222222222,
					-0.1758136749267578,
					0.4629117548465729,
					0.07120609283447266,
					-0.31413358449935913,
					0.13823837041854858,
					0.004798284266144037,
					-0.939248263835907
				},
				{
					0.2,
					-0.14138031005859375,
					0.6883893013000488,
					-0.23610615730285645,
					0.4612760841846466,
					0.07001012563705444,
					0.07897954434156418,
					-0.8809570074081421
				},
				{
					0.22777777777777777,
					-0.16327571868896484,
					0.5802057981491089,
					-0.5077384114265442,
					0.8560749292373657,
					-0.015441500581800938,
					0.07410864531993866,
					-0.5112781524658203
				},
				{
					0.25555555555555554,
					-0.193756103515625,
					0.36037567257881165,
					-0.6669842004776001,
					0.8806235790252686,
					-0.11680147051811218,
					0.06994866579771042,
					-0.4538355767726898
				},
				{
					0.2833333333333333,
					-0.1986408233642578,
					0.3060527741909027,
					-0.6857901811599731,
					0.8890352249145508,
					-0.17120574414730072,
					0.08628104627132416,
					-0.41576510667800903
				}
			}
--Heavies
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.damage_profile_left = "light_slashing_smiter_dual"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.damage_profile_right = "light_slashing_smiter_dual"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.damage_window_start = 0.15
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.damage_window_end = 0.25
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.width_mod = 10
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.range_mod = 1.15
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.total_time = 1.5
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.anim_time_scale = 1
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.20125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.20125,
					external_multiplier = 0.7,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_stab",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_stab",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.baked_sweep_right = {
				{
					0.11666666666666667,
					0.069488525390625,
					0.3930821120738983,
					0.1820770502090454,
					-0.4213496446609497,
					0.0655088871717453,
					0.08426084369421005,
					-0.900596022605896
				},
				{
					0.14444444444444443,
					0.08718585968017578,
					0.46456459164619446,
					0.1596163511276245,
					-0.13596732914447784,
					-0.024861132726073265,
					0.1551389992237091,
					-0.9781752228736877
				},
				{
					0.17222222222222222,
					0.09003639221191406,
					0.5841156244277954,
					-0.020306110382080078,
					0.41208335757255554,
					-0.07677217572927475,
					0.005165729206055403,
					-0.9078913331031799
				},
				{
					0.2,
					0.07197093963623047,
					0.6795880794525146,
					-0.16673636436462402,
					0.6655995845794678,
					-0.04366239160299301,
					-0.033580146729946136,
					-0.7442736029624939
				},
				{
					0.22777777777777777,
					0.06752586364746094,
					0.6778186559677124,
					-0.3245853781700134,
					0.7557472586631775,
					-0.05285021662712097,
					-0.05853281170129776,
					-0.6500975489616394
				},
				{
					0.25555555555555554,
					0.07218551635742188,
					0.5829885005950928,
					-0.5514176487922668,
					0.8357394933700562,
					-0.018138976767659187,
					-0.058612558990716934,
					-0.545687735080719
				},
				{
					0.2833333333333333,
					0.13320541381835938,
					0.3728419840335846,
					-0.7472038269042969,
					0.8793743252754211,
					0.015139274299144745,
					0.04753914102911949,
					-0.47350993752479553
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.baked_sweep_left = {
				{
					0.11666666666666667,
					-0.25020408630371094,
					0.1997722089290619,
					0.23025262355804443,
					-0.4550740718841553,
					0.10765039175748825,
					-0.045053690671920776,
					-0.8827735781669617
				},
				{
					0.14444444444444443,
					-0.2686433792114258,
					0.24974289536476135,
					0.1711972951889038,
					-0.4543502628803253,
					0.2238570600748062,
					-0.10981801152229309,
					-0.8552156686782837
				},
				{
					0.17222222222222222,
					-0.1758136749267578,
					0.4629117548465729,
					0.07120609283447266,
					-0.31413358449935913,
					0.13823837041854858,
					0.004798284266144037,
					-0.939248263835907
				},
				{
					0.2,
					-0.14138031005859375,
					0.6883893013000488,
					-0.23610615730285645,
					0.4612760841846466,
					0.07001012563705444,
					0.07897954434156418,
					-0.8809570074081421
				},
				{
					0.22777777777777777,
					-0.16327571868896484,
					0.5802057981491089,
					-0.5077384114265442,
					0.8560749292373657,
					-0.015441500581800938,
					0.07410864531993866,
					-0.5112781524658203
				},
				{
					0.25555555555555554,
					-0.193756103515625,
					0.36037567257881165,
					-0.6669842004776001,
					0.8806235790252686,
					-0.11680147051811218,
					0.06994866579771042,
					-0.4538355767726898
				},
				{
					0.2833333333333333,
					-0.1986408233642578,
					0.3060527741909027,
					-0.6857901811599731,
					0.8890352249145508,
					-0.17120574414730072,
					0.08628104627132416,
					-0.41576510667800903
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.damage_profile_left = "light_slashing_smiter_dual"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.damage_profile_right = "light_slashing_smiter_dual"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.hit_armor_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.hit_stop_anim = "attack_hit"
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.damage_window_start = 0.15
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.damage_window_end = 0.25
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.sweep_z_offset = -0.25
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.height_mod = 2.25
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.width_mod = 10
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.range_mod = 1.45
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.total_time = 1.5
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.anim_time_scale = 1
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.20125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.20125,
					external_multiplier = 0.7,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.baked_sweep_left = {
				{
					0.11666666666666667,
					-0.11956787109375,
					-0.3799896240234375,
					-0.2718777656555176,
					0.6635675430297852,
					-0.10039208084344864,
					-0.07106880098581314,
					-0.737935483455658
				},
				{
					0.14777777777777779,
					-0.11657047271728516,
					-0.4659233093261719,
					-0.2660231590270996,
					0.6628608107566833,
					-0.09071440249681473,
					-0.0518939234316349,
					-0.7414131760597229
				},
				{
					0.1788888888888889,
					-0.11586475372314453,
					-0.5019912719726562,
					-0.26612281799316406,
					0.6631579399108887,
					-0.08262740820646286,
					-0.037607159465551376,
					-0.7429535984992981
				},
				{
					0.21000000000000002,
					-0.14737987518310547,
					-0.352874755859375,
					-0.2938976287841797,
					0.6895628571510315,
					-0.04556431993842125,
					-0.012300392612814903,
					-0.7226864099502563
				},
				{
					0.2411111111111111,
					-0.1730489730834961,
					0.00420379638671875,
					-0.25743532180786133,
					0.7239410877227783,
					-0.03765839710831642,
					0.016766367480158806,
					-0.688629150390625
				},
				{
					0.27222222222222225,
					-0.14651107788085938,
					0.49611663818359375,
					-0.10723447799682617,
					0.5981757640838623,
					-0.17554986476898193,
					-0.12112105637788773,
					-0.7724621295928955
				},
				{
					0.30333333333333334,
					-0.11355113983154297,
					0.6282615661621094,
					-0.09052801132202148,
					0.6144089102745056,
					-0.23548826575279236,
					-0.16102513670921326,
					-0.7356071472167969
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.baked_sweep_right = {
				{
					0.11666666666666667,
					-0.11956787109375,
					-0.3799896240234375,
					-0.2718777656555176,
					0.6635675430297852,
					-0.10039208084344864,
					-0.07106880098581314,
					-0.737935483455658
				},
				{
					0.14777777777777779,
					-0.11657047271728516,
					-0.4659233093261719,
					-0.2660231590270996,
					0.6628608107566833,
					-0.09071440249681473,
					-0.0518939234316349,
					-0.7414131760597229
				},
				{
					0.1788888888888889,
					-0.11586475372314453,
					-0.5019912719726562,
					-0.26612281799316406,
					0.6631579399108887,
					-0.08262740820646286,
					-0.037607159465551376,
					-0.7429535984992981
				},
				{
					0.21000000000000002,
					-0.14737987518310547,
					-0.352874755859375,
					-0.2938976287841797,
					0.6895628571510315,
					-0.04556431993842125,
					-0.012300392612814903,
					-0.7226864099502563
				},
				{
					0.2411111111111111,
					-0.1730489730834961,
					0.00420379638671875,
					-0.25743532180786133,
					0.7239410877227783,
					-0.03765839710831642,
					0.016766367480158806,
					-0.688629150390625
				},
				{
					0.27222222222222225,
					-0.14651107788085938,
					0.49611663818359375,
					-0.10723447799682617,
					0.5981757640838623,
					-0.17554986476898193,
					-0.12112105637788773,
					-0.7724621295928955
				},
				{
					0.30333333333333334,
					-0.11355113983154297,
					0.6282615661621094,
					-0.09052801132202148,
					0.6144089102745056,
					-0.23548826575279236,
					-0.16102513670921326,
					-0.7356071472167969
				}
			}
--Dodge/Block/etc
Weapons.dual_wield_daggers_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_daggers_template_1.max_fatigue_points = 6
Weapons.dual_wield_daggers_template_1.block_angle = 90
Weapons.dual_wield_daggers_template_1.dodge_count = 6
Weapons.dual_wield_daggers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_daggers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
-----------------------------------------------------------------Sword and Dagger-------------------------------------------------------------------------
--Default State
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_second",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_stab_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left.anim_event = "attack_swing_charge"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left_last.anim_event = "attack_swing_charge"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_first",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/4
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.impact_sound_event = "slashing_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.hit_armor_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.hit_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.width_mod = 10
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.total_time = 2.25
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.anim_time_scale = 1.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.151,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.151,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.impact_sound_event = "slashing_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.hit_armor_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.hit_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.width_mod = 10
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.total_time = 2.25
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.anim_time_scale = 1.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.151,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.151,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 2/3/Pushstab
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.hit_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.sweep_z_offset = -0.3
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.width_mod = 10
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.range_mod = 1.2
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.uninterruptible = true
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.ignore_armour_hit = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.total_time = 2.1
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.anim_time_scale = 1.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.151,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.151,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.height_mod = 2.25
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.width_mod = 10
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.range_mod = 1.2
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.uninterruptible = true
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.ignore_armour_hit = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.total_time = 2.1
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.151,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.151,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default_left_last",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left_last",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.baked_sweep = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push.fatigue_cost = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "push_stab",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.hit_armor_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.hit_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.damage_window_start = 0.2
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.damage_window_end = 0.35
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.height_mod = 2.25
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.width_mod = 10
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.range_mod = 1.2
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.uninterruptible = true
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.ignore_armour_hit = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.total_time = 2.1
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.anim_time_scale = 1.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.151,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.151,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.baked_sweep = nil
--Heavies
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.no_damage_impact_sound_event = "slashing_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.impact_sound_event = "slashing_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.hit_shield_stop_anim = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.hit_armor_anim = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.hit_stop_anim = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.dual_hit_stop_anims.right = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.dual_hit_stop_anims.left = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.slide_armour_hit = true
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.damage_window_start = 0.28
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.damage_window_end = 0.38
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.width_mod = 10
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.range_mod = 1.15
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.total_time = 2.25
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.anim_time_scale = 1.25
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.21925,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.21925,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_left_last",
					start_time = 0.625,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left_last",
					start_time = 0.625,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.baked_sweep_right = {
				{
					0.2466666666666667,
					0.4831409454345703,
					0.48698723316192627,
					0.07365715503692627,
					-0.21013687551021576,
					-0.3482268452644348,
					0.15649719536304474,
					-0.9000495672225952
				},
				{
					0.2744444444444445,
					0.4502573013305664,
					0.538142204284668,
					0.039531826972961426,
					-0.1930287629365921,
					-0.3628109395503998,
					0.13808147609233856,
					-0.9011335372924805
				},
				{
					0.3022222222222222,
					0.3921937942504883,
					0.5993307828903198,
					-0.005006074905395508,
					-0.12373680621385574,
					-0.3821762800216675,
					0.09400981664657593,
					-0.9109295606613159
				},
				{
					0.33,
					0.19265270233154297,
					0.6771864891052246,
					-0.08213496208190918,
					0.1362636238336563,
					-0.38444599509239197,
					-0.09692196547985077,
					-0.9078764319419861
				},
				{
					0.3577777777777778,
					-0.09639835357666016,
					0.6088640689849854,
					-0.21333599090576172,
					0.557586133480072,
					-0.2713889181613922,
					-0.37125587463378906,
					-0.6910969614982605
				},
				{
					0.38555555555555554,
					-0.26140594482421875,
					0.45535075664520264,
					-0.27567732334136963,
					0.7723384499549866,
					-0.11809723824262619,
					-0.49190616607666016,
					-0.3841545879840851
				},
				{
					0.41333333333333333,
					-0.35877037048339844,
					0.2813742160797119,
					-0.2915459871292114,
					0.8473331332206726,
					0.042392831295728683,
					-0.5235275030136108,
					-0.07841183990240097
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.baked_sweep_left = {
				{
					0.2466666666666667,
					-0.3429546356201172,
					0.49334442615509033,
					0.09717845916748047,
					-0.4679473638534546,
					0.46329325437545776,
					-0.13110584020614624,
					-0.7410775423049927
				},
				{
					0.2744444444444445,
					-0.2556886672973633,
					0.6012797355651855,
					0.04737412929534912,
					-0.18335023522377014,
					0.5010954141616821,
					-0.03076697513461113,
					-0.8451860547065735
				},
				{
					0.3022222222222222,
					0.015298843383789062,
					0.6668350696563721,
					-0.0965045690536499,
					0.3519492745399475,
					0.4375739097595215,
					0.19289909303188324,
					-0.8046432733535767
				},
				{
					0.33,
					0.374725341796875,
					0.47258687019348145,
					-0.2790175676345825,
					0.7522538304328918,
					0.2572481334209442,
					0.3870849907398224,
					-0.46701478958129883
				},
				{
					0.3577777777777778,
					0.5246038436889648,
					0.265183687210083,
					-0.35896146297454834,
					0.8404071927070618,
					0.1975586712360382,
					0.44412335753440857,
					-0.2396681010723114
				},
				{
					0.38555555555555554,
					0.5398674011230469,
					0.24686002731323242,
					-0.37237095832824707,
					0.8518901467323303,
					0.18182983994483948,
					0.47309231758117676,
					-0.13192720711231232
				},
				{
					0.41333333333333333,
					0.5119791030883789,
					0.23988008499145508,
					-0.38613665103912354,
					0.8563364148139954,
					0.15323446691036224,
					0.4914897382259369,
					-0.0405593141913414
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.damage_profile_left = "light_slashing_smiter_dual"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.damage_profile_right = "light_slashing_smiter_dual"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.hit_armor_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.hit_stop_anim = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.damage_window_start = 0.15
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.damage_window_end = 0.25
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.width_mod = 10
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.range_mod = 1.15
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.total_time = 1.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.anim_time_scale = 1
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.21925,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.21925,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.baked_sweep_right = {
				{
					0.11666666666666667,
					0.069488525390625,
					0.3930821120738983,
					0.1820770502090454,
					-0.4213496446609497,
					0.0655088871717453,
					0.08426084369421005,
					-0.900596022605896
				},
				{
					0.14444444444444443,
					0.08718585968017578,
					0.46456459164619446,
					0.1596163511276245,
					-0.13596732914447784,
					-0.024861132726073265,
					0.1551389992237091,
					-0.9781752228736877
				},
				{
					0.17222222222222222,
					0.09003639221191406,
					0.5841156244277954,
					-0.020306110382080078,
					0.41208335757255554,
					-0.07677217572927475,
					0.005165729206055403,
					-0.9078913331031799
				},
				{
					0.2,
					0.07197093963623047,
					0.6795880794525146,
					-0.16673636436462402,
					0.6655995845794678,
					-0.04366239160299301,
					-0.033580146729946136,
					-0.7442736029624939
				},
				{
					0.22777777777777777,
					0.06752586364746094,
					0.6778186559677124,
					-0.3245853781700134,
					0.7557472586631775,
					-0.05285021662712097,
					-0.05853281170129776,
					-0.6500975489616394
				},
				{
					0.25555555555555554,
					0.07218551635742188,
					0.5829885005950928,
					-0.5514176487922668,
					0.8357394933700562,
					-0.018138976767659187,
					-0.058612558990716934,
					-0.545687735080719
				},
				{
					0.2833333333333333,
					0.13320541381835938,
					0.3728419840335846,
					-0.7472038269042969,
					0.8793743252754211,
					0.015139274299144745,
					0.04753914102911949,
					-0.47350993752479553
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.baked_sweep_left = {
				{
					0.11666666666666667,
					-0.25020408630371094,
					0.1997722089290619,
					0.23025262355804443,
					-0.4550740718841553,
					0.10765039175748825,
					-0.045053690671920776,
					-0.8827735781669617
				},
				{
					0.14444444444444443,
					-0.2686433792114258,
					0.24974289536476135,
					0.1711972951889038,
					-0.4543502628803253,
					0.2238570600748062,
					-0.10981801152229309,
					-0.8552156686782837
				},
				{
					0.17222222222222222,
					-0.1758136749267578,
					0.4629117548465729,
					0.07120609283447266,
					-0.31413358449935913,
					0.13823837041854858,
					0.004798284266144037,
					-0.939248263835907
				},
				{
					0.2,
					-0.14138031005859375,
					0.6883893013000488,
					-0.23610615730285645,
					0.4612760841846466,
					0.07001012563705444,
					0.07897954434156418,
					-0.8809570074081421
				},
				{
					0.22777777777777777,
					-0.16327571868896484,
					0.5802057981491089,
					-0.5077384114265442,
					0.8560749292373657,
					-0.015441500581800938,
					0.07410864531993866,
					-0.5112781524658203
				},
				{
					0.25555555555555554,
					-0.193756103515625,
					0.36037567257881165,
					-0.6669842004776001,
					0.8806235790252686,
					-0.11680147051811218,
					0.06994866579771042,
					-0.4538355767726898
				},
				{
					0.2833333333333333,
					-0.1986408233642578,
					0.3060527741909027,
					-0.6857901811599731,
					0.8890352249145508,
					-0.17120574414730072,
					0.08628104627132416,
					-0.41576510667800903
				}
			}
--Dodge/Block/etc
Weapons.dual_wield_sword_dagger_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.block_fatigue_point_multiplier = 0.5
Weapons.dual_wield_sword_dagger_template_1.outer_block_fatigue_point_multiplier  = 2
Weapons.dual_wield_sword_dagger_template_1.dodge_count = 6
Weapons.dual_wield_sword_dagger_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_sword_dagger_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
--------------------------------------------------------------------Dual Swords---------------------------------------------------------------------
--Default State
Weapons.dual_wield_swords_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.default_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_up_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.default_left.anim_event = "attack_swing_charge_left"
Weapons.dual_wield_swords_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_up_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3/4
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.width_mod = 10
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.total_time = 2.25
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.5
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.width_mod = 10
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.total_time = 2.25
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.5
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.impact_sound_event = "slashing_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.hit_stop_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.additional_critical_strike_chance = nil
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.width_mod = 10
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.total_time = 2.25
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.anim_time_scale = 1.5
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.impact_sound_event = "slashing_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.hit_armor_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.hit_stop_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.additional_critical_strike_chance = nil
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.width_mod = 10
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.total_time = 2.25
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.anim_time_scale = 1.5
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.dual_wield_swords_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "push_stab",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.anim_event = "attack_swing_heavy"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.weapon_action_hand = "both"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.attack_direction = "up"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.damage_profile = nil
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.damage_profile_left = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.damage_profile_right = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.hit_armor_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.hit_stop_anim = "attack_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.damage_window_start = 0.15
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.damage_window_end = 0.25
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.additional_critical_strike_chance = nil
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.reset_aim_on_attack = true
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.ignore_armour_hit = nil
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.uninterruptible = true
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.width_mod = 10
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.range_mod = 1.15
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.total_time = 1.275
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.anim_time_scale = 0.85
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.20125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.20125,
					external_multiplier = 0.7,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.baked_sweep = nil
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.baked_sweep_right = {
				{
					0.11666666666666667,
					0.069488525390625,
					0.3930821120738983,
					0.1820770502090454,
					-0.4213496446609497,
					0.0655088871717453,
					0.08426084369421005,
					-0.900596022605896
				},
				{
					0.14444444444444443,
					0.08718585968017578,
					0.46456459164619446,
					0.1596163511276245,
					-0.13596732914447784,
					-0.024861132726073265,
					0.1551389992237091,
					-0.9781752228736877
				},
				{
					0.17222222222222222,
					0.09003639221191406,
					0.5841156244277954,
					-0.020306110382080078,
					0.41208335757255554,
					-0.07677217572927475,
					0.005165729206055403,
					-0.9078913331031799
				},
				{
					0.2,
					0.07197093963623047,
					0.6795880794525146,
					-0.16673636436462402,
					0.6655995845794678,
					-0.04366239160299301,
					-0.033580146729946136,
					-0.7442736029624939
				},
				{
					0.22777777777777777,
					0.06752586364746094,
					0.6778186559677124,
					-0.3245853781700134,
					0.7557472586631775,
					-0.05285021662712097,
					-0.05853281170129776,
					-0.6500975489616394
				},
				{
					0.25555555555555554,
					0.07218551635742188,
					0.5829885005950928,
					-0.5514176487922668,
					0.8357394933700562,
					-0.018138976767659187,
					-0.058612558990716934,
					-0.545687735080719
				},
				{
					0.2833333333333333,
					0.13320541381835938,
					0.3728419840335846,
					-0.7472038269042969,
					0.8793743252754211,
					0.015139274299144745,
					0.04753914102911949,
					-0.47350993752479553
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.baked_sweep_left = {
				{
					0.11666666666666667,
					-0.25020408630371094,
					0.1997722089290619,
					0.23025262355804443,
					-0.4550740718841553,
					0.10765039175748825,
					-0.045053690671920776,
					-0.8827735781669617
				},
				{
					0.14444444444444443,
					-0.2686433792114258,
					0.24974289536476135,
					0.1711972951889038,
					-0.4543502628803253,
					0.2238570600748062,
					-0.10981801152229309,
					-0.8552156686782837
				},
				{
					0.17222222222222222,
					-0.1758136749267578,
					0.4629117548465729,
					0.07120609283447266,
					-0.31413358449935913,
					0.13823837041854858,
					0.004798284266144037,
					-0.939248263835907
				},
				{
					0.2,
					-0.14138031005859375,
					0.6883893013000488,
					-0.23610615730285645,
					0.4612760841846466,
					0.07001012563705444,
					0.07897954434156418,
					-0.8809570074081421
				},
				{
					0.22777777777777777,
					-0.16327571868896484,
					0.5802057981491089,
					-0.5077384114265442,
					0.8560749292373657,
					-0.015441500581800938,
					0.07410864531993866,
					-0.5112781524658203
				},
				{
					0.25555555555555554,
					-0.193756103515625,
					0.36037567257881165,
					-0.6669842004776001,
					0.8806235790252686,
					-0.11680147051811218,
					0.06994866579771042,
					-0.4538355767726898
				},
				{
					0.2833333333333333,
					-0.1986408233642578,
					0.3060527741909027,
					-0.6857901811599731,
					0.8890352249145508,
					-0.17120574414730072,
					0.08628104627132416,
					-0.41576510667800903
				}
			}
--Heavies
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.impact_sound_event = "slashing_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.hit_shield_stop_anim = nil
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.hit_armor_anim = nil
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.hit_stop_anim = nil
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.width_mod = 10
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.total_time = 1.875
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.anim_time_scale = 1.25
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.27,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.27,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.625,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.625,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.impact_sound_event = "slashing_hit"
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.hit_shield_stop_anim = nil
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.hit_armor_anim = nil
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.hit_stop_anim = nil
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.width_mod = 10
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.total_time = 1.875
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.anim_time_scale = 1.25
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.27,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.27,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.625,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.625,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.dual_wield_swords_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_swords_template_1.outer_block_fatigue_point_multiplier  = 2
Weapons.dual_wield_swords_template_1.dodge_count = 6
Weapons.dual_wield_swords_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_swords_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
---------------------------------------------------------------------Elf Spear-----------------------------------------------------------------------
--Default State
Weapons.two_handed_spears_elf_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.default_last_1.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.default_last_1.allowed_chain_actions = {
				{
					sub_action = "light_attack_stab_2",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.hit_armor_anim = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.hit_stop_anim = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.damage_window_start = 0.3
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.damage_window_end = 0.45
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.height_mod = 3
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.width_mod = 15
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.range_mod = 1.6
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.range_mod_add = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.total_time = 1.5
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.hit_mass_count = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.baked_sweep = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.hit_shield_stop_anim = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.hit_armor_anim = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.hit_stop_anim = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.damage_window_start = 0.12
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.damage_window_end = 0.27
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.height_mod = 3
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.width_mod = 15
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.range_mod = 1.6
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.range_mod_add = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.total_time = 1.5
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.anim_time_scale = 1
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.55,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.55,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.baked_sweep = nil
--Lights 3/Pushstab
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.anim_event = "push_stab"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.range_mod = 1.5
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.range_mod_add = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.damage_window_start = 0.23
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.damage_window_end = 0.35
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.total_time = 1.5
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.anim_time_scale = 1
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.baked_sweep = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.anim_event = "attack_swing_heavy_right"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "slashing_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.range_mod = 1.5
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.range_mod_add = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.3
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.41
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.total_time = 1.65
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.1
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.66,
					end_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.66,
					end_time = 1.1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.605,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.605,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.baked_sweep = nil
--Heavies
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.damage_profile = "heavy_slashing_linesman_polearm"
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "slashing_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.slide_armour_hit = true
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.range_mod = 1.5
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.range_mod_add = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.total_time = 1.8
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1.2
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2675,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2675,
					external_multiplier = 0.5,
					end_time = 0.50,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.48,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.48,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.hit_shield_stop_anim = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.hit_armor_anim = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.hit_stop_anim = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.height_mod = 3
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.width_mod = 15
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.range_mod = 1.8
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.range_mod_add = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.total_time = 1.35
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.anim_time_scale = 0.9
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2675,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2675,
					external_multiplier = 0.5,
					end_time = 0.40,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.45,
					end_time = 0.9,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					end_time = 0.9,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.9,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.9,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.36,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.36,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.hit_mass_count = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.baked_sweep = nil
--Dodge/Block/etc
Weapons.two_handed_spears_elf_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.dodge_count = 4
Weapons.two_handed_spears_elf_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_spears_elf_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
Weapons.two_handed_spears_elf_template_1.block_angle = 90
---------------------------------------------------------------------2h Sword-----------------------------------------------------------------------
--Default State
Weapons.two_handed_swords_wood_elf_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_upward",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_upward",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_upward",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_left_upward.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_left_upward.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_left_upward.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_left_upward.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_left_upward.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_left_upward.anim_time_scale = 1.134
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_left_upward.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.355,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.355,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_left_upward.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6804,
					end_time = 1.134,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6804,
					end_time = 1.134,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.134,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.134,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6237,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6237,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_right_upward.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_right_upward.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_right_upward.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_right_upward.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_right_upward.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_right_upward.anim_time_scale = 1.134
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_right_upward.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.355,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.355,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_right_upward.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6804,
					end_time = 1.134,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6804,
					end_time = 1.134,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.134,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.134,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6237,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6237,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.two_handed_swords_wood_elf_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_bopp.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.355,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.355,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.damage_profile = "heavy_slashing_smiter_stab_polearm"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.height_mod = 3
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.width_mod = 15
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.range_mod = 1.95
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.range_mod_add = nil
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.anim_time_scale = 1.6
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.29,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.29,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.8,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					start_time = 0.64,
					blocker = true,
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_down_second",
					start_time = 0.72,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0.64,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.64,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.baked_sweep = nil
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.damage_profile = "heavy_slashing_linesman"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.impact_sound_event = "slashing_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.hit_armor_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.hit_stop_anim = "attack_hit"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.slide_armour_hit = true
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.anim_time_scale = 1.6
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.25125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25125,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.96,
					end_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.96,
					end_time = 1.6,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.6,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.8,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.8,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
--Dodge/Block/etc
Weapons.two_handed_swords_wood_elf_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_swords_wood_elf_template.dodge_count = 4
Weapons.two_handed_swords_wood_elf_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_swords_wood_elf_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
------------------------------------------------------------------------Glaive-----------------------------------------------------------------------
--Default State
Weapons.two_handed_axes_template_2.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_upward",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1.2,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_upward",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1.2,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1.2,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_down_first",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.range_mod = 1.5
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.additional_critical_strike_chance = 0.1
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.anim_time_scale = 1.05
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.31575,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.31575,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.63,
					end_time = 1.05,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.63,
					end_time = 1.05,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.05,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.05,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.53,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.53,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_right_upward.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_right_upward.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_right_upward.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_right_upward.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_right_upward.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_right_upward.range_mod = 1.5
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_right_upward.anim_time_scale = 1.197
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_right_upward.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.31575,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.31575,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_right_upward.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.68229,
					end_time = 1.197,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.68229,
					end_time = 1.197,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.197,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.197,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5985,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5985,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.range_mod = 1.5
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.anim_time_scale = 1.1
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.31575,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.31575,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.594,
					end_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.594,
					end_time = 1.1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.two_handed_axes_template_2.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.range_mod = 1.5
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.anim_time_scale = 1.0925
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.31575,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.31575,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.58995,
					end_time = 1.0925,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.58995,
					end_time = 1.0925,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.0925,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.0925,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54625,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54625,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.damage_profile = "heavy_slashing_smiter_executioner"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.impact_sound_event = "slashing_hit"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.range_mod = 1.4
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.anim_time_scale = 1.2
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.31,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.allowed_chain_actions = {
				{
					sub_action = "heavy_attack_down_second",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "heavy_attack_down_second",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.hit_mass_count = nil
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.damage_profile = "heavy_slashing_smiter_executioner"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.impact_sound_event = "slashing_hit"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.hit_armor_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.hit_stop_anim = "attack_hit"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.range_mod = 1.4
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.anim_time_scale = 1.4
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.31,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.84,
					end_time = 1.68,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.84,
					end_time = 1.68,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.68,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.68,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.two_handed_axes_template_2.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_axes_template_2.dodge_count = 3
Weapons.two_handed_axes_template_2.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_axes_template_2.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-----------------------------------------------Ranged---------------------------------------------------------
--Dodge/Ammo/Reload/Etc
Weapons.staff_life.dodge_count = 5
Weapons.staff_life.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.staff_life.buffs.change_dodge_speed.external_optional_multiplier = 1.25
--Dodge/Ammo/Reload/Etc
Weapons.longbow_template_1.actions.action_one.default.total_time = 0.91
Weapons.longbow_template_1.actions.action_one.default.anim_time_scale = 1.3
Weapons.longbow_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.longbow_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.78,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.78,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one",
				},
				{
					sub_action = "default",
					start_time = 0.78,
					action = "action_two",
					input = "action_two_hold",
				},
				{
					sub_action = "default",
					start_time = 0.78,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_template_1.actions.action_one.shoot_charged.minimum_hold_time = 0.5
Weapons.longbow_template_1.actions.action_one.shoot_charged.total_time =0.66
Weapons.longbow_template_1.actions.action_one.shoot_charged.anim_time_scale = 1.1
Weapons.longbow_template_1.actions.action_one.shoot_charged.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_two",
					input = "action_two_hold",
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_template_1.actions.action_two.default.anim_time_scale = 1.5
Weapons.longbow_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.25,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.longbow_template_1.actions.action_two.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield",
				},
				{
					sub_action = "shoot_charged",
					start_time = 0.75,
					action = "action_one",
					input = "action_one",
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_template_1.actions.action_one.default.speed = 9000
Weapons.longbow_template_1.actions.action_one.shoot_charged.speed = 16000
Weapons.longbow_template_1.dodge_count = 2
Weapons.longbow_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.longbow_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--Dodge/Ammo/Reload/Etc
DamageProfileTemplates.thrown_javelin.cleave_distribution.attack = 0.52825
DamageProfileTemplates.thrown_javelin.cleave_distribution.impact = 0.52825
Weapons.javelin_template.dodge_count = 3
Weapons.javelin_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.javelin_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--Dodge/Ammo/Reload/Etc
Weapons.repeating_crossbow_elf_template.dodge_count = 5
Weapons.repeating_crossbow_elf_template.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.repeating_crossbow_elf_template.buffs.change_dodge_speed.external_optional_multiplier = 1.25
--Dodge/Ammo/Reload/Etc
Weapons.shortbow_template_1.actions.action_one.default.impact_data.damage_profile = "shot_repeating"
Weapons.shortbow_template_1.actions.action_one.shoot_charged.impact_data.damage_profile = "shot_repeating"
Weapons.shortbow_template_1.actions.action_one.shoot_special_charged.impact_data.damage_profile = "shot_repeating"
Weapons.shortbow_template_1.default_spread_template = "brace_of_pistols"
Weapons.shortbow_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.shortbow_template_1.actions.action_one.default.allowed_chain_actions[1].start_time = 0.25
Weapons.shortbow_template_1.actions.action_one.default.allowed_chain_actions[2].start_time = 0.25
Weapons.shortbow_template_1.actions.action_one.default.allowed_chain_actions[3].start_time = 0.25
Weapons.shortbow_template_1.actions.action_one.shoot_charged.allowed_chain_actions[1].start_time = 0
Weapons.shortbow_template_1.actions.action_one.shoot_charged.allowed_chain_actions[2].start_time = 0
Weapons.shortbow_template_1.actions.action_one.shoot_charged.allowed_chain_actions[3].start_time = 0
Weapons.shortbow_template_1.actions.action_one.shoot_charged.allowed_chain_actions[4].start_time = 0
Weapons.shortbow_template_1.actions.action_one.shoot_charged.minimum_hold_time = 0
Weapons.shortbow_template_1.actions.action_one.shoot_charged.total_time = 0.001
Weapons.shortbow_template_1.actions.action_two.default.anim_time_scale = 1
Weapons.shortbow_template_1.actions.action_one.default.speed = 16000
Weapons.shortbow_template_1.actions.action_one.shoot_charged.speed = 16000
Weapons.shortbow_template_1.ammo_data.max_ammo = 32
Weapons.shortbow_template_1.dodge_count = 4
Weapons.shortbow_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.shortbow_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--Dodge/Ammo/Reload/Etc
Weapons.shortbow_hagbane_template_1.dodge_count = 3
Weapons.shortbow_hagbane_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.shortbow_hagbane_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--Dodge/Ammo/Reload/Etc
Weapons.we_deus_01_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.we_deus_01_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--///////////////////////////////////////////////Saltzpyre////////////////////////////////////////////////////////////////////////////////////////
-------------------------------------------------1h Axe-------------------------------------------------------------------------------------------
--Default State
Weapons.one_hand_axe_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.additional_critical_strike_chance = nil
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.total_time = 1.95
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.3
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.additional_critical_strike_chance = nil
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.total_time = 1.95
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.3
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.total_time = 1.95
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.3
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.one_hand_axe_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.35
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.47
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.additional_critical_strike_chance = nil
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.total_time = 1.95
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.255,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.baked_sweep = {
				{
					0.3466666666666667,
					-0.2943267822265625,
					0.6125030517578125,
					-0.09795379638671875,
					-0.37085556983947754,
					0.6318093538284302,
					-0.1342034935951233,
					-0.6672874093055725
				},
				{
					0.37777777777777777,
					-0.14261770248413086,
					0.68890380859375,
					-0.10671520233154297,
					-0.19007164239883423,
					0.6863868236541748,
					0.011293779127299786,
					-0.7018677592277527
				},
				{
					0.4088888888888889,
					0.07872343063354492,
					0.6932487487792969,
					-0.12723970413208008,
					0.11975399404764175,
					0.663720428943634,
					0.3122141659259796,
					-0.6690713763237
				},
				{
					0.44,
					0.40059852600097656,
					0.5883598327636719,
					-0.1368088722229004,
					0.4506254494190216,
					0.4421606957912445,
					0.6173749566078186,
					-0.4693388044834137
				},
				{
					0.4711111111111111,
					0.5653223991394043,
					0.450836181640625,
					-0.14811325073242188,
					0.5648464560508728,
					0.3231636583805084,
					0.6988108158111572,
					-0.29694655537605286
				},
				{
					0.5022222222222222,
					0.6720681190490723,
					0.3026695251464844,
					-0.1696014404296875,
					0.6130120158195496,
					0.29641494154930115,
					0.7230486869812012,
					-0.11642627418041229
				},
				{
					0.5333333333333333,
					0.733741044998169,
					0.12903976440429688,
					-0.19726800918579102,
					0.6488717198371887,
					0.24066811800003052,
					0.7217421531677246,
					-0.011515703052282333
				}
			}
--Heavies
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.range_mod = 1.2
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.26,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.range_mod = 1.2
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.total_time = 1.5
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.26,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.one_hand_axe_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.dodge_count = 5
Weapons.one_hand_axe_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.one_hand_axe_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
-------------------------------------------------------------1H Falchion-----------------------------------------------------------------------------
--Default State
Weapons.one_hand_falchion_template_1.actions.action_one.default.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.one_hand_falchion_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.default_right.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.one_hand_falchion_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.default_down.anim_event = "attack_swing_charge_left"
Weapons.one_hand_falchion_template_1.actions.action_one.default_down.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.default_down.allowed_chain_actions = {
				{
					sub_action = "light_attack_down",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.anim_event = "attack_swing_left"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_finesse"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.damage_window_start = 0.38
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.damage_window_end = 0.5
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.sweep_z_offset = 0
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.width_mod = 10
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.total_time = 1.95
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.3
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.baked_sweep = {
				{
					0.3466666666666667,
					0.4979362487792969,
					0.5005283355712891,
					0.018489837646484375,
					-0.38468441367149353,
					-0.5321440100669861,
					0.3524048924446106,
					-0.6668219566345215
				},
				{
					0.37777777777777777,
					0.42641258239746094,
					0.5578670501708984,
					0.016463279724121094,
					-0.32481276988983154,
					-0.5670905709266663,
					0.297601580619812,
					-0.6959441900253296
				},
				{
					0.4088888888888889,
					0.28052520751953125,
					0.6403789520263672,
					-0.0013265609741210938,
					-0.16875989735126495,
					-0.6170117259025574,
					0.15781056880950928,
					-0.7522715330123901
				},
				{
					0.44,
					0.03853797912597656,
					0.7116661071777344,
					-0.04547691345214844,
					0.14948996901512146,
					-0.6078135371208191,
					-0.12879861891269684,
					-0.7691725492477417
				},
				{
					0.4711111111111111,
					-0.3188743591308594,
					0.5574417114257812,
					-0.16222667694091797,
					-0.5650471448898315,
					0.3253098130226135,
					0.5767348408699036,
					0.4922116696834564
				},
				{
					0.5022222222222222,
					-0.4058952331542969,
					0.4154987335205078,
					-0.24257755279541016,
					-0.6630380153656006,
					0.15885120630264282,
					0.668820321559906,
					0.29635515809059143
				},
				{
					0.5333333333333333,
					-0.43575096130371094,
					0.29512977600097656,
					-0.3425750732421875,
					-0.6130070090293884,
					0.039156798273324966,
					0.7446082830429077,
					0.26124265789985657
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_finesse"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.sweep_z_offset = 0
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.width_mod = 10
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.total_time = 1.95
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.3
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_down",
					start_time = 0.585,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.585,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 3
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.hit_armor_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.hit_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.sweep_z_offset = 0
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.width_mod = 10
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.total_time = 1.95
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.anim_time_scale = 1.3
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.75,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_down.hit_mass_count = nil
--Pushstab
Weapons.one_hand_falchion_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_finesse"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "slashing_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.sweep_z_offset = 0
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.total_time = 2.55
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.7
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.731,
					end_time = 1.7,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.731,
					end_time = 1.7,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.7,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.7,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.68,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.68,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.anim_event = "attack_swing_heavy_down_right"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.impact_sound_event = "axe_1h_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.damage_window_start = 0.15
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.damage_window_end = 0.3
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.sweep_z_offset = 0
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.width_mod = 10
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.range_mod = 1.25
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.total_time = 1.5
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.anim_time_scale = 1
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.235,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.235,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_down",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.baked_sweep = {
				{
					0.11666666666666667,
					-0.28662109375,
					0.1819324493408203,
					0.12035465240478516,
					-0.7227696180343628,
					0.2325831800699234,
					-0.4103078842163086,
					-0.5051302909851074
				},
				{
					0.1527777777777778,
					-0.2315807342529297,
					0.2779579162597656,
					0.16219520568847656,
					-0.6767522096633911,
					0.27557551860809326,
					-0.3155561685562134,
					-0.6053833365440369
				},
				{
					0.18888888888888888,
					-0.20079994201660156,
					0.3498249053955078,
					0.17940616607666016,
					-0.697175920009613,
					0.22929394245147705,
					-0.16625148057937622,
					-0.6585821509361267
				},
				{
					0.22499999999999998,
					-0.09911537170410156,
					0.5906581878662109,
					0.10559654235839844,
					-0.2825137972831726,
					0.2524477243423462,
					-0.0819401666522026,
					-0.921814501285553
				},
				{
					0.26111111111111107,
					0.04291534423828125,
					0.7441082000732422,
					-0.23987960815429688,
					0.4724188446998596,
					0.16327537596225739,
					0.051981121301651,
					-0.8645574450492859
				},
				{
					0.29722222222222217,
					0.5388584136962891,
					0.38440513610839844,
					-0.7426252365112305,
					0.7752327919006348,
					0.24314343929290771,
					0.2818926274776459,
					-0.5103254318237305
				},
				{
					0.3333333333333333,
					0.8699836730957031,
					0.20418167114257812,
					-0.5786771774291992,
					0.6148661375045776,
					0.4367455244064331,
					0.5501883029937744,
					-0.358449250459671
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.hit_mass_count = nil
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.anim_event = "attack_swing_heavy"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.damage_profile = "medium_slashing_tank_1h_finesse"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.impact_sound_event = "slashing_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.hit_shield_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.hit_armor_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.hit_stop_anim = "attack_hit"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.slide_armour_hit = true
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.damage_window_start = 0.15
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.damage_window_end = 0.3
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.sweep_z_offset = -0.1
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.width_mod = 10
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.range_mod = 1.25
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.total_time = 1.5
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.anim_time_scale = 1
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.235,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.235,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.baked_sweep = {
				{
					0.11666666666666667,
					0.3648395538330078,
					0.3408393859863281,
					-0.08428192138671875,
					-0.2939467132091522,
					-0.5669031739234924,
					0.09543472528457642,
					-0.7636153697967529
				},
				{
					0.1527777777777778,
					0.3161191940307617,
					0.48991966247558594,
					-0.11098527908325195,
					-0.12825623154640198,
					-0.6123620271682739,
					-0.023620005697011948,
					-0.7797468900680542
				},
				{
					0.18888888888888888,
					0.11617136001586914,
					0.7000885009765625,
					-0.15999460220336914,
					0.16052234172821045,
					-0.6228265762329102,
					-0.2715951204299927,
					-0.7159300446510315
				},
				{
					0.22499999999999998,
					-0.15909624099731445,
					0.6685962677001953,
					-0.14235925674438477,
					-0.5006442666053772,
					0.44516289234161377,
					0.588365912437439,
					0.4527813494205475
				},
				{
					0.26111111111111107,
					-0.3959183692932129,
					0.475067138671875,
					-0.15259647369384766,
					-0.6386439800262451,
					0.2562183141708374,
					0.662607729434967,
					0.2956976890563965
				},
				{
					0.29722222222222217,
					-0.4992341995239258,
					0.31254005432128906,
					-0.20154094696044922,
					0.7131814360618591,
					-0.10256817936897278,
					-0.6710095405578613,
					-0.17492347955703735
				},
				{
					0.3333333333333333,
					-0.515383243560791,
					0.18102455139160156,
					-0.26951122283935547,
					0.7617275714874268,
					0.03979433700442314,
					-0.6423617005348206,
					-0.0745590552687645
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.hit_mass_count = TANK_HIT_MASS_COUNT
--Dodge/Block/etc
Weapons.one_hand_falchion_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_falchion_template_1.dodge_count = 5
Weapons.one_hand_falchion_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.one_hand_falchion_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--------------------------------------------------------------1h Skullsplitter--------------------------------------------------------------------
--Default State
Weapons.one_handed_hammer_priest_template.actions.action_one.default.anim_event = "attack_swing_charge_left_diagonal"
Weapons.one_handed_hammer_priest_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_01",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_01",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_01",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.default_02.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.one_handed_hammer_priest_template.actions.action_one.default_02.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.default_02.allowed_chain_actions = {
				{
					sub_action = "light_attack_02",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_02",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_02",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.default_03.anim_event = "attack_swing_charge_left_diagonal"
Weapons.one_handed_hammer_priest_template.actions.action_one.default_03.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.default_03.allowed_chain_actions = {
				{
					sub_action = "light_attack_03",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_01",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_01",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.default_04.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.one_handed_hammer_priest_template.actions.action_one.default_04.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.default_04.allowed_chain_actions = {
				{
					sub_action = "light_attack_04",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_02",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_02",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.anim_event = "attack_swing_left"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.damage_window_start = 0.38
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.damage_window_end = 0.5
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.width_mod = 10
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.total_time = 1.95
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.anim_time_scale = 1.3
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.allowed_chain_actions = {
				{
					sub_action = "default_02",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_02",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.baked_sweep = {
				{
					0.3466666666666667,
					0.4979362487792969,
					0.5005283355712891,
					0.018489837646484375,
					-0.38468441367149353,
					-0.5321440100669861,
					0.3524048924446106,
					-0.6668219566345215
				},
				{
					0.37777777777777777,
					0.42641258239746094,
					0.5578670501708984,
					0.016463279724121094,
					-0.32481276988983154,
					-0.5670905709266663,
					0.297601580619812,
					-0.6959441900253296
				},
				{
					0.4088888888888889,
					0.28052520751953125,
					0.6403789520263672,
					-0.0013265609741210938,
					-0.16875989735126495,
					-0.6170117259025574,
					0.15781056880950928,
					-0.7522715330123901
				},
				{
					0.44,
					0.03853797912597656,
					0.7116661071777344,
					-0.04547691345214844,
					0.14948996901512146,
					-0.6078135371208191,
					-0.12879861891269684,
					-0.7691725492477417
				},
				{
					0.4711111111111111,
					-0.3188743591308594,
					0.5574417114257812,
					-0.16222667694091797,
					-0.5650471448898315,
					0.3253098130226135,
					0.5767348408699036,
					0.4922116696834564
				},
				{
					0.5022222222222222,
					-0.4058952331542969,
					0.4154987335205078,
					-0.24257755279541016,
					-0.6630380153656006,
					0.15885120630264282,
					0.668820321559906,
					0.29635515809059143
				},
				{
					0.5333333333333333,
					-0.43575096130371094,
					0.29512977600097656,
					-0.3425750732421875,
					-0.6130070090293884,
					0.039156798273324966,
					0.7446082830429077,
					0.26124265789985657
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.anim_event = "attack_swing_right"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.damage_window_start = 0.33
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.damage_window_end = 0.47
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.width_mod = 10
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.total_time = 1.95
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.anim_time_scale = 1.3
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.allowed_chain_actions = {
				{
					sub_action = "default_03",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_03",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.baked_sweep = {
				{
					0.2966666666666667,
					-0.4027719497680664,
					0.48967480659484863,
					-0.09750592708587646,
					-0.5091506242752075,
					0.5468618869781494,
					-0.20141266286373138,
					-0.6333567500114441
				},
				{
					0.33111111111111113,
					-0.3001747131347656,
					0.6076433658599854,
					-0.09796810150146484,
					-0.3777002692222595,
					0.6286516785621643,
					-0.13852091133594513,
					-0.6655460596084595
				},
				{
					0.3655555555555556,
					-0.11081981658935547,
					0.6949076652526855,
					-0.10968446731567383,
					-0.14913177490234375,
					0.6919703483581543,
					0.050288889557123184,
					-0.7045621871948242
				},
				{
					0.4,
					0.1674661636352539,
					0.6748830080032349,
					-0.13327240943908691,
					0.2410525530576706,
					0.6148346066474915,
					0.4279842972755432,
					-0.6170101761817932
				},
				{
					0.4344444444444444,
					0.45091819763183594,
					0.555657148361206,
					-0.1395580768585205,
					0.48617297410964966,
					0.40079790353775024,
					0.6452553868293762,
					-0.43202120065689087
				},
				{
					0.4688888888888889,
					0.6192913055419922,
					0.38524699211120605,
					-0.15521931648254395,
					0.5911787152290344,
					0.30636364221572876,
					0.715324342250824,
					-0.21203793585300446
				},
				{
					0.5033333333333333,
					0.7134914398193359,
					0.2103252410888672,
					-0.18308770656585693,
					0.63018798828125,
					0.2797117531299591,
					0.723551869392395,
					-0.03312431648373604
				}
			}
--Light 3/4
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.anim_event = "attack_swing_down"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.damage_window_start = 0.38
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.damage_window_end = 0.47
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.width_mod = 10
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.additional_critical_strike_chance = nil
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.total_time = 1.95
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.anim_time_scale = 1.3
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.2625,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2625,
					external_multiplier = 0.5,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.allowed_chain_actions = {
				{
					sub_action = "default_04",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_04",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.baked_sweep = {
				{
					0.3466666666666667,
					0.22458600997924805,
					0.19822120666503906,
					0.32592344284057617,
					-0.6857628226280212,
					-0.08758018910884857,
					0.0413111113011837,
					-0.7213546633720398
				},
				{
					0.37277777777777776,
					0.20093774795532227,
					0.33371734619140625,
					0.30137157440185547,
					-0.5833305716514587,
					-0.10599827021360397,
					0.006187887396663427,
					-0.8052648901939392
				},
				{
					0.3988888888888889,
					0.17713594436645508,
					0.42899131774902344,
					0.270113468170166,
					-0.48434484004974365,
					-0.10985085368156433,
					-0.018101675435900688,
					-0.8677644729614258
				},
				{
					0.425,
					0.12107229232788086,
					0.5991630554199219,
					0.13934659957885742,
					-0.1875552088022232,
					-0.10446847975254059,
					-0.04407147318124771,
					-0.9756880402565002
				},
				{
					0.4511111111111111,
					0.03217744827270508,
					0.7447166442871094,
					-0.1747441291809082,
					0.45921188592910767,
					-0.04430054873228073,
					-0.0331922322511673,
					-0.8866003751754761
				},
				{
					0.4772222222222222,
					-0.07396316528320312,
					0.6359577178955078,
					-0.5543045997619629,
					0.8496612310409546,
					-0.010238771326839924,
					-0.1143631711602211,
					-0.5146768093109131
				},
				{
					0.5033333333333333,
					-0.09254312515258789,
					0.4187297821044922,
					-0.713139533996582,
					0.9608858823776245,
					-0.021566079929471016,
					-0.15341436862945557,
					-0.22955891489982605
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.hit_mass_count = nil
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.anim_event = "attack_swing_down_right"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.damage_window_start = 0.38
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.damage_window_end = 0.45
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.width_mod = 10
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.range_mod = 1.2
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.additional_critical_strike_chance = nil
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.total_time = 1.95
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.anim_time_scale = 1.3
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.2625,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2625,
					external_multiplier = 0.5,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.baked_sweep = {
				{
					0.3466666666666667,
					-0.2155599594116211,
					0.2979586124420166,
					0.17695772647857666,
					-0.6996107697486877,
					0.22854512929916382,
					-0.2507716715335846,
					-0.6288286447525024
				},
				{
					0.36944444444444446,
					-0.1874837875366211,
					0.4160645008087158,
					0.1811835765838623,
					-0.6091817021369934,
					0.21570880711078644,
					-0.17163197696208954,
					-0.7435790300369263
				},
				{
					0.39222222222222225,
					-0.12880611419677734,
					0.5870962142944336,
					0.16123104095458984,
					-0.4042046070098877,
					0.21779610216617584,
					-0.12262416630983353,
					-0.8798561096191406
				},
				{
					0.41500000000000004,
					-0.05316925048828125,
					0.7178025245666504,
					0.038548946380615234,
					0.051250312477350235,
					0.17500180006027222,
					-0.04108492285013199,
					-0.9823746085166931
				},
				{
					0.43777777777777777,
					0.1009054183959961,
					0.770221471786499,
					-0.3026658296585083,
					0.6162154674530029,
					0.1098581999540329,
					0.08260688930749893,
					-0.7754907011985779
				},
				{
					0.46055555555555555,
					0.4026670455932617,
					0.3218672275543213,
					-0.8195931911468506,
					0.841169536113739,
					0.19860783219337463,
					0.13755077123641968,
					-0.4838063418865204
				},
				{
					0.48333333333333334,
					0.7746467590332031,
					0.25507259368896484,
					-0.6675475835800171,
					0.6638069152832031,
					0.40127646923065186,
					0.46785926818847656,
					-0.4236098527908325
				}
			}
--Pushstab
Weapons.one_handed_hammer_priest_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.damage_window_start = 0.33
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.damage_window_end = 0.47
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.total_time = 1.95
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0.05,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.45,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.baked_sweep = {
				{
					0.2966666666666667,
					-0.4027719497680664,
					0.48967480659484863,
					-0.09750592708587646,
					-0.5091506242752075,
					0.5468618869781494,
					-0.20141266286373138,
					-0.6333567500114441
				},
				{
					0.33111111111111113,
					-0.3001747131347656,
					0.6076433658599854,
					-0.09796810150146484,
					-0.3777002692222595,
					0.6286516785621643,
					-0.13852091133594513,
					-0.6655460596084595
				},
				{
					0.3655555555555556,
					-0.11081981658935547,
					0.6949076652526855,
					-0.10968446731567383,
					-0.14913177490234375,
					0.6919703483581543,
					0.050288889557123184,
					-0.7045621871948242
				},
				{
					0.4,
					0.1674661636352539,
					0.6748830080032349,
					-0.13327240943908691,
					0.2410525530576706,
					0.6148346066474915,
					0.4279842972755432,
					-0.6170101761817932
				},
				{
					0.4344444444444444,
					0.45091819763183594,
					0.555657148361206,
					-0.1395580768585205,
					0.48617297410964966,
					0.40079790353775024,
					0.6452553868293762,
					-0.43202120065689087
				},
				{
					0.4688888888888889,
					0.6192913055419922,
					0.38524699211120605,
					-0.15521931648254395,
					0.5911787152290344,
					0.30636364221572876,
					0.715324342250824,
					-0.21203793585300446
				},
				{
					0.5033333333333333,
					0.7134914398193359,
					0.2103252410888672,
					-0.18308770656585693,
					0.63018798828125,
					0.2797117531299591,
					0.723551869392395,
					-0.03312431648373604
				}
			}
--Heavies
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.anim_event = "attack_swing_heavy_left_diagonal"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.damage_profile = "medium_slashing_tank_1h_finesse"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.slide_armour_hit = true
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.damage_window_start = 0.15
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.damage_window_end = 0.3
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.width_mod = 10
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.range_mod = 1.2
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.total_time = 1.5
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.anim_time_scale = 1
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.286125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.286125,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.allowed_chain_actions = {
				{
					sub_action = "default_02",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_02",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.baked_sweep = {
				{
					0.11666666666666667,
					0.3286566734313965,
					0.38442182540893555,
					0.15373265743255615,
					-0.22785641252994537,
					-0.38962307572364807,
					0.17433500289916992,
					-0.8751472234725952
				},
				{
					0.1527777777777778,
					0.21822237968444824,
					0.4396076202392578,
					0.06386721134185791,
					0.1544835865497589,
					-0.42459359765052795,
					-0.03281427174806595,
					-0.8915034532546997
				},
				{
					0.18888888888888888,
					-0.012676715850830078,
					0.5074033737182617,
					-0.06316161155700684,
					0.5247191190719604,
					-0.3467475473880768,
					-0.22564420104026794,
					-0.7439897656440735
				},
				{
					0.22499999999999998,
					-0.2814059257507324,
					0.5217838287353516,
					-0.1962108612060547,
					0.6932355165481567,
					-0.24881912767887115,
					-0.329641729593277,
					-0.5906351804733276
				},
				{
					0.26111111111111107,
					-0.5007836818695068,
					0.3227109909057617,
					-0.3174067735671997,
					0.7806180119514465,
					-0.19367828965187073,
					-0.4433147609233856,
					-0.39572247862815857
				},
				{
					0.29722222222222217,
					-0.5927212238311768,
					0.14726734161376953,
					-0.35321223735809326,
					0.8010765314102173,
					-0.1780545860528946,
					-0.5170548558235168,
					-0.24336664378643036
				},
				{
					0.3333333333333333,
					-0.5434455871582031,
					0.06700468063354492,
					-0.3996988534927368,
					0.8120498061180115,
					-0.1683911681175232,
					-0.5328555107116699,
					-0.16818012297153473
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.anim_event = "attack_swing_heavy_right_diagonal"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.damage_profile = "medium_slashing_tank_1h_finesse"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.impact_sound_event = "blunt_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.slide_armour_hit = true
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.damage_window_start = 0.15
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.damage_window_end = 0.3
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.width_mod = 10
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.range_mod = 1.2
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.total_time = 1.5
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.anim_time_scale = 1
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.286125,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.286125,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.allowed_chain_actions = {
				{
					sub_action = "default_03",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_03",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.baked_sweep = {
				{
					0.11666666666666667,
					-0.25451040267944336,
					0.2782936096191406,
					0.11283540725708008,
					-0.5216851234436035,
					0.25411659479141235,
					-0.14820538461208344,
					-0.8008149862289429
				},
				{
					0.1527777777777778,
					-0.18799638748168945,
					0.454831600189209,
					0.06292521953582764,
					-0.22307394444942474,
					0.41466546058654785,
					-0.09909883141517639,
					-0.8766242265701294
				},
				{
					0.18888888888888888,
					-0.04425811767578125,
					0.6289305686950684,
					-0.031099557876586914,
					0.21385866403579712,
					0.4696301817893982,
					0.0845828577876091,
					-0.852383553981781
				},
				{
					0.22499999999999998,
					0.21789097785949707,
					0.6650643348693848,
					-0.14887845516204834,
					0.6224513649940491,
					0.31054913997650146,
					0.3532450795173645,
					-0.6255648732185364
				},
				{
					0.26111111111111107,
					0.43033552169799805,
					0.6052908897399902,
					-0.25656676292419434,
					0.7493036389350891,
					0.22511769831180573,
					0.40261590480804443,
					-0.47514891624450684
				},
				{
					0.29722222222222217,
					0.6451857089996338,
					0.3166627883911133,
					-0.33372020721435547,
					0.7629949450492859,
					0.2770317494869232,
					0.4881516993045807,
					-0.32062461972236633
				},
				{
					0.3333333333333333,
					0.7522621154785156,
					0.050200462341308594,
					-0.3688727617263794,
					0.7538682222366333,
					0.31586551666259766,
					0.5289060473442078,
					-0.2284078747034073
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.hit_mass_count = TANK_HIT_MASS_COUNT
--Dodge/Block/etc
Weapons.one_handed_hammer_priest_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_priest_template.max_fatigue_points = 6
Weapons.one_handed_hammer_priest_template.dodge_count = 5
Weapons.one_handed_hammer_priest_template.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.one_handed_hammer_priest_template.buffs.change_dodge_speed.external_optional_multiplier = 1.2
-------------------------------------------------Rapier-------------------------------------------------------------------------------------------
--Simple Template Changes
DamageProfileTemplates.medium_fencer_stab.armor_modifier.attack = {1, 0.4, 1.5, 1,  1, 0.4}
DamageProfileTemplates.medium_fencer_stab_charged.default_target.power_distribution = {attack = 0.579, impact = 0.125}
--Default State
Weapons.fencing_sword_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.35,
					end_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_charged",
					start_time = 0.7,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_three",
					input = "action_three"
				},
				{
					start_time = 0.35,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_charged",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.35,
					end_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_charged",
					start_time = 0.7,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_three",
					input = "action_three"
				},
				{
					start_time = 0.35,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_charged",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.35,
					end_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_charged",
					start_time = 0.7,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_three",
					input = "action_three"
				},
				{
					start_time = 0.35,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_charged",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.range_mod = 1.3
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.total_time = 2.25
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.5
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.18,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.18,
					external_multiplier = 0.9,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.range_mod = 1.3
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.total_time = 2.25
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.5
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.18,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.18,
					external_multiplier = 0.9,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.impact_sound_event = "slashing_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.hit_shield_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.hit_armor_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.hit_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.range_mod = 1.3
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.total_time = 2.25
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.anim_time_scale = 1.5
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.18,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.18,
					external_multiplier = 0.9,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Pushstab
Weapons.fencing_sword_template_1.actions.action_one.push.fatigue_cost = nil
Weapons.fencing_sword_template_1.actions.action_one.push.damage_profile_inner = "medium_push"
Weapons.fencing_sword_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "slashing_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.range_mod = 1.3
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.total_time = 2.25
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.5
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.18,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.18,
					external_multiplier = 0.9,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.impact_sound_event = "axe_1h_hit"
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.height_mod = 1.5
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.width_mod = 9
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.range_mod = 1.3
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.total_time = 1.5
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.anim_time_scale = 1
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.5,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.3,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.3,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.baked_sweep = nil
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.impact_sound_event = "axe_1h_hit"
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.hit_shield_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.hit_armor_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.hit_stop_anim = "attack_hit"
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.height_mod = 1.5
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.width_mod = 9
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.range_mod = 1.3
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.total_time = 1.5
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.anim_time_scale = 1
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.5,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.3,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.3,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.baked_sweep = nil
--Dodge/Block/etc
Weapons.fencing_sword_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.fencing_sword_template_1.block_fatigue_point_multiplier = 0.5
Weapons.fencing_sword_template_1.dodge_count = 6
Weapons.fencing_sword_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.fencing_sword_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
-------------------------------------------------Axe and Falchion---------------------------------------------------------------------------------
--Default State
Weapons.dual_wield_axe_falchion_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.default_down.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.default_down.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_diagonal",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_diagonal",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.default_down_heavy.anim_event = "attack_swing_charge_left"
Weapons.dual_wield_axe_falchion_template.actions.action_one.default_down_heavy.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.default_down_heavy.allowed_chain_actions = {
				{
					sub_action = "light_attack_down_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/4
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.uninterruptible = true
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.width_mod = 10
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.total_time = 2.25
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.anim_time_scale = 1.5
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.151,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.151,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_down",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.uninterruptible = true
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.width_mod = 10
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.total_time = 2.25
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.anim_time_scale = 1.5
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.151,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.151,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Lights 2/3/Pushstab
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.impact_sound_event = "slashing_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.width_mod = 10
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.total_time = 2.25
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.anim_time_scale = 1.5
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.151,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.151,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.impact_sound_event = "slashing_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.width_mod = 10
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.total_time = 2.25
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.5
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.151,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.151,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.allowed_chain_actions = {
				{
					sub_action = "default_down_heavy",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_down_heavy",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_axe_falchion_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.impact_sound_event = "slashing_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.total_time = 2.25
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.5
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.151,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.151,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_down",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.damage_profile_left = "light_slashing_smiter_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.damage_profile_right = "light_slashing_smiter_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.impact_sound_event = "axe_1h_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.dual_hit_stop_anims.left = "attack_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.width_mod = 10
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.range_mod = 1.2
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.total_time = 1.5
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.anim_time_scale = 1
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.21925,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.21925,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_down_heavy",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_down_heavy",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.damage_profile_left = "light_slashing_linesman_dual_medium"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.damage_profile_right = "light_slashing_linesman_dual_medium"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.impact_sound_event = "slashing_hit"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.hit_shield_stop_anim = nil
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.hit_armor_anim = nil
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.hit_stop_anim = nil
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.dual_hit_stop_anims.right = nil
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.dual_hit_stop_anims.left = nil
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.width_mod = 10
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.range_mod = 1.2
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.total_time = 1.875
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.anim_time_scale = 1.25
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.21925,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.21925,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.allowed_chain_actions = {
				{
					sub_action = "default_down",
					start_time = 0.625,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.625,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
--Dodge/Block/etc
Weapons.dual_wield_axe_falchion_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.dodge_count = 6
Weapons.dual_wield_axe_falchion_template.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_axe_falchion_template.buffs.change_dodge_speed.external_optional_multiplier = 1.25
--------------------------------------------------------------Dual Skullsplitter------------------------------------------------------------------
--Default State
Weapons.dual_wield_hammers_priest_template.actions.action_one.default.anim_event = "attack_swing_charge_left"
Weapons.dual_wield_hammers_priest_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_uppercut",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_diagonal",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.default_down.anim_event = "attack_swing_charge_left"
Weapons.dual_wield_hammers_priest_template.actions.action_one.default_down.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.default_down.allowed_chain_actions = {
				{
					sub_action = "light_attack_down",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.width_mod = 10
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.total_time = 2.55
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.anim_time_scale = 1.7
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.595,
					end_time = 1.53,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.595,
					end_time = 1.53,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.53,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.53,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.51,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.51,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.width_mod = 10
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.total_time = 2.25
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.anim_time_scale = 1.5
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.width_mod = 10
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.total_time = 2.25
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.5
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.525,
					end_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.35,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 4/Pushstab
Weapons.dual_wield_hammers_priest_template.actions.action_one.push.anim_time_scale = 1
Weapons.dual_wield_hammers_priest_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.anim_event = "attack_swing_heavy_down"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.weapon_action_hand = "both"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.damage_profile = nil
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.damage_profile_right = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.damage_profile_left = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.damage_window_start = 0.2
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.damage_window_end = 0.3
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.uninterruptible = true
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.total_time = 1.275
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.anim_time_scale = 0.85
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.baked_sweep = nil
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.baked_sweep_right = {
				{
					0.16666666666666669,
					0.15340900421142578,
					0.022681236267089844,
					0.31192725896835327,
					-0.6669479608535767,
					0.15328240394592285,
					0.037133511155843735,
					-0.7282211780548096
				},
				{
					0.19444444444444445,
					0.2624702453613281,
					0.056777000427246094,
					0.29408079385757446,
					-0.576887309551239,
					0.029039764776825905,
					0.08213230967521667,
					-0.8121650218963623
				},
				{
					0.22222222222222224,
					0.26246070861816406,
					0.24053955078125,
					0.2266255021095276,
					-0.46749746799468994,
					-0.028498703613877296,
					0.13691098988056183,
					-0.872862696647644
				},
				{
					0.25,
					0.17998886108398438,
					0.5145392417907715,
					0.07952648401260376,
					-0.24201716482639313,
					-0.03133665770292282,
					0.16409756243228912,
					-0.9557812213897705
				},
				{
					0.2777777777777778,
					0.08797359466552734,
					0.68780517578125,
					-0.1181708574295044,
					0.31712836027145386,
					0.04660911113023758,
					0.04366336017847061,
					-0.9462297558784485
				},
				{
					0.3055555555555556,
					0.061356544494628906,
					0.6818208694458008,
					-0.321580708026886,
					0.7780440449714661,
					-0.05824137479066849,
					-0.059088706970214844,
					-0.6227068901062012
				},
				{
					0.3333333333333333,
					0.052669525146484375,
					0.612861156463623,
					-0.504933774471283,
					0.8211949467658997,
					-0.03282196447253227,
					-0.04387543722987175,
					-0.5680110454559326
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.baked_sweep_left = {
				{
					0.16666666666666669,
					-0.25355052947998047,
					-0.010162353515625,
					0.33458298444747925,
					-0.6665594577789307,
					0.03129694610834122,
					-0.1015719473361969,
					-0.7378361225128174
				},
				{
					0.19444444444444445,
					-0.24542713165283203,
					0.12862157821655273,
					0.27509063482284546,
					-0.5418754816055298,
					0.16467265784740448,
					-0.11314110457897186,
					-0.8163657188415527
				},
				{
					0.22222222222222224,
					-0.2404041290283203,
					0.25894641876220703,
					0.19186967611312866,
					-0.4603138267993927,
					0.2059851884841919,
					-0.11556581407785416,
					-0.855760395526886
				},
				{
					0.25,
					-0.17955684661865234,
					0.46997785568237305,
					0.0723116397857666,
					-0.3039548099040985,
					0.14505678415298462,
					-0.012773843482136726,
					-0.9414918422698975
				},
				{
					0.2777777777777778,
					-0.16126346588134766,
					0.6719145774841309,
					-0.2012990117073059,
					0.3521061837673187,
					0.10027950257062912,
					0.05293290317058563,
					-0.9290658831596375
				},
				{
					0.3055555555555556,
					-0.16443443298339844,
					0.5848512649536133,
					-0.539160430431366,
					0.824092447757721,
					0.033354438841342926,
					0.0017702712211757898,
					-0.5654698014259338
				},
				{
					0.3333333333333333,
					-0.18922805786132812,
					0.37192249298095703,
					-0.6749441623687744,
					0.8215515613555908,
					-0.01847025193274021,
					-0.01583564095199108,
					-0.5696148872375488
				}
			}
--Heavies
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.anim_event = "attack_swing_heavy_left_diagonal"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.damage_profile_right = "medium_blunt_tank_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.damage_profile_left = "medium_blunt_tank_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.dual_hit_stop_anims.left = "attack_hit" 
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.damage_window_start = 0.3
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.damage_window_end = 0.42
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.slide_armour_hit = true
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.width_mod = 10
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.total_time = 2.25
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.anim_time_scale = 1.5
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.27,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.27,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.baked_sweep_right = {
				{
					0.26666666666666666,
					0.5159835815429688,
					0.335909366607666,
					0.13469535112380981,
					-0.5986664295196533,
					-0.22196927666664124,
					0.15760773420333862,
					-0.7533179521560669
				},
				{
					0.29777777777777775,
					0.4815683364868164,
					0.44315052032470703,
					0.1052362322807312,
					-0.4813177287578583,
					-0.27839094400405884,
					0.07050122320652008,
					-0.8281673789024353
				},
				{
					0.3288888888888889,
					0.42522144317626953,
					0.5582351684570312,
					0.05046498775482178,
					-0.32423874735832214,
					-0.33436110615730286,
					-0.013259543105959892,
					-0.8848141431808472
				},
				{
					0.36,
					0.34302330017089844,
					0.641972541809082,
					0.01797538995742798,
					-0.16361278295516968,
					-0.38203465938568115,
					-0.11320219933986664,
					-0.902477502822876
				},
				{
					0.3911111111111111,
					0.23041439056396484,
					0.660184383392334,
					-0.09702461957931519,
					0.11198609322309494,
					-0.41556796431541443,
					-0.1744474619626999,
					-0.885624349117279
				},
				{
					0.42222222222222217,
					0.05782604217529297,
					0.6502432823181152,
					-0.17595112323760986,
					0.40240731835365295,
					-0.4008876085281372,
					-0.2775212228298187,
					-0.7748157978057861
				},
				{
					0.4533333333333333,
					-0.1553049087524414,
					0.5616488456726074,
					-0.26309889554977417,
					0.6676645278930664,
					-0.3222145736217499,
					-0.37100347876548767,
					-0.5592480301856995
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.baked_sweep_left = {
				{
					0.26666666666666666,
					0.28891944885253906,
					0.34432220458984375,
					0.022870004177093506,
					-0.7112331986427307,
					-0.2814701497554779,
					0.32855603098869324,
					-0.5540512800216675
				},
				{
					0.29777777777777775,
					0.22621440887451172,
					0.5096778869628906,
					0.011641323566436768,
					-0.46250513195991516,
					-0.4156496524810791,
					0.21353645622730255,
					-0.7534763216972351
				},
				{
					0.3288888888888889,
					-0.004611968994140625,
					0.7643823623657227,
					-0.11498332023620605,
					0.19557605683803558,
					-0.47286203503608704,
					-0.06238310784101486,
					-0.8568896651268005
				},
				{
					0.36,
					-0.30275440216064453,
					0.711824893951416,
					-0.2953203320503235,
					0.5634450316429138,
					-0.3315998911857605,
					-0.28148120641708374,
					-0.7023813724517822
				},
				{
					0.3911111111111111,
					-0.4653797149658203,
					0.41956615447998047,
					-0.4361359775066376,
					0.6702195405960083,
					-0.2804245054721832,
					-0.35347336530685425,
					-0.589257538318634
				},
				{
					0.42222222222222217,
					-0.5335521697998047,
					0.12540531158447266,
					-0.47935646772384644,
					0.7536861896514893,
					-0.2346968799829483,
					-0.39009711146354675,
					-0.47402405738830566
				},
				{
					0.4533333333333333,
					-0.5541400909423828,
					0.015500068664550781,
					-0.5182145833969116,
					0.8014243841171265,
					-0.20546598732471466,
					-0.37823784351348877,
					-0.4152575433254242
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.impact_sound_event = "blunt_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.hit_shield_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.hit_armor_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.hit_stop_anim = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.dual_hit_stop_anims.right = "attack_hit"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.dual_hit_stop_anims.left = "attack_hit" 
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.slide_armour_hit = true
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.width_mod = 10
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.total_time = 2.25
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.anim_time_scale = 1.5
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4145,
					end_time = 0.27,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.27,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.dual_wield_hammers_priest_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_hammers_priest_template.max_fatigue_points = 6
Weapons.dual_wield_hammers_priest_template.dodge_count = 6
Weapons.dual_wield_hammers_priest_template.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_hammers_priest_template.buffs.change_dodge_speed.external_optional_multiplier = 1.25
-----------------------------------------------------Billhook-----------------------------------------------------------------------------------------
--Default State
Weapons.two_handed_billhooks_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_stab",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_three",
					input = "action_three"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_down",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_three",
					input = "action_three"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_down",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.default_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.default_stab.allowed_chain_actions = {
				{
					sub_action = "light_attack_stab_2",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_three",
					input = "action_three"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.hit_shield_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.hit_armor_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.hit_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.height_mod = 3
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.width_mod = 15
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.range_mod = 1.6
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.range_mod_add = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.total_time = 1.275
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.anim_time_scale = 0.85
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.4675,
					end_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.4675,
					end_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.hit_shield_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.hit_armor_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.hit_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.height_mod = 3
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.width_mod = 15
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.range_mod = 1.6
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.range_mod_add = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.total_time = 1.275
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.anim_time_scale = 0.85
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_three",
					input = "action_three"
				}
			}
--Light 3/Pushstab
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.hit_shield_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.hit_armor_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.hit_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.range_mod = 1.35
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.total_time = 1.275
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.anim_time_scale = 0.85
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_stab",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_stab",
					start_time = 0.51,
					end_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.425,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.impact_sound_event = "slashing_hit"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.hit_shield_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.hit_armor_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.hit_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.range_mod = 1.35
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.total_time = 1.725
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.15
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.335,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.335,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.69,
					end_time = 1.15,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.69,
					end_time = 1.15,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.15,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.15,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.575,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.575,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.575,
					action = "action_three",
					input = "action_three"
				}
			}
--Heavies
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.hit_shield_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.hit_armor_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.hit_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.height_mod = 3
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.width_mod = 15
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.range_mod = 1.8
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.range_mod_add = nil
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.total_time = 1.785
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.anim_time_scale = 1.19
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.252,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.252,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.595,
					end_time = 1.19,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.595,
					end_time = 1.19,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.19,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.19,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.476,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.476,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.476,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.hit_shield_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.hit_armor_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.hit_stop_anim = nil
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.range_mod = 1.4
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.range_mod_add = nil
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.total_time = 1.53
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.anim_time_scale = 1.02
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.252,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.252,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.heavy_attack_down.allowed_chain_actions = {
				{
					sub_action = "default_stab",
					start_time = 0.51,
					end_time = 1.02,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_stab",
					start_time = 0.51,
					end_time = 1.02,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.02,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.02,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.408,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.408,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.408,
					action = "action_three",
					input = "action_three"
				}
			}
--Dodge/Block/etc
Weapons.two_handed_hammer_priest_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_billhooks_template.dodge_count = 4
Weapons.two_handed_billhooks_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_billhooks_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
-------------------------------------------------------------2H Sword-------------------------------------------------------------------------------
--All code from Kruber 2H Sword affects the entirety of Saltzpyre 2H Sword
--------------------------------------------------------------Flail-----------------------------------------------------------------------------------
--Default State
Weapons.one_handed_flail_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default_charge",
					start_time = 0.6,
					send_buffer = true,
					action = "action_one",
					auto_chain = true
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_down",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default_charge_2",
					start_time = 0.6,
					send_buffer = true,
					action = "action_one",
					auto_chain = true
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default_charge",
					start_time = 0.6,
					send_buffer = true,
					action = "action_one",
					auto_chain = true
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.default_charge.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6425,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.default_charge.allowed_chain_actions = {
				{
					sub_action = "heavy_attack",
					start_time = 0,
					end_time = 0.5,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default_charge",
					start_time = 0.5,
					action = "action_one",
					send_buffer = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.default_charge_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6425,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.default_charge_2.allowed_chain_actions = {
				{
					sub_action = "heavy_attack_left",
					start_time = 0,
					end_time = 0.5,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default_charge_2",
					start_time = 0.5,
					action = "action_one",
					send_buffer = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.impact_sound_event = "axe_2h_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.ignore_armour_hit = nil
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.total_time = 1.8
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.2
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.31,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.5,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.impact_sound_event = "axe_2h_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.hit_armor_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.hit_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.ignore_armour_hit = nil
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.total_time = 1.8
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.anim_time_scale = 1.2
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.31,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.31,
					external_multiplier = 0.5,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.78,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.78,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 3/Pushstab
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.damage_profile = "medium_slashing_axe_linesman"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.damage_window_end = 0.52
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.total_time = 2.25
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.5
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.825,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.825,
					end_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.one_handed_flail_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_axe_linesman"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.total_time = 2.25
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.5
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.825,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.825,
					end_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.damage_profile = "heavy_slashing_axe_linesman"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.impact_sound_event = "axe_2h_hit"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.ignore_armour_hit = nil
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.range_mod = 1.4
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.total_time = 1.8
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.anim_time_scale = 1.2
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.33635,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.33635,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.damage_profile = "heavy_slashing_axe_linesman"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "axe_2h_hit"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.ignore_armour_hit = nil
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.range_mod = 1.4
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.total_time = 1.8
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1.2
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.33635,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.33635,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.72,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_flail_template_1.actions.action_one.heavy_attack_left.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
--Dodge/Block/etc
Weapons.one_handed_flail_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_flail_template_1.dodge_count = 3
Weapons.one_handed_flail_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.one_handed_flail_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--------------------------------------------------------------2h Reckoner------------------------------------------------------------------------
--Default State
Weapons.two_handed_hammer_priest_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_01",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_01",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_01",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.default_02.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.default_02.allowed_chain_actions = {
				{
					sub_action = "light_attack_02",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_02",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_02",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.default_03.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.default_03.allowed_chain_actions = {
				{
					sub_action = "light_attack_03",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_03",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_03",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Light 1/2
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_01.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_01.impact_sound_event = "hammer_2h_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_01.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_01.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_01.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_01.total_time = 1.35
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_01.anim_time_scale = 0.9
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_01.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.5,
					end_time = 0.65,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_01.allowed_chain_actions = {
				{
					sub_action = "default_02",
					start_time = 0.7,
					action = "action_one",
					end_time = 1.08,
					input = "action_one"
				},
				{
					sub_action = "default_02",
					start_time = 0.7,
					action = "action_one",
					end_time = 1.08,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.08,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.impact_sound_event = "hammer_2h_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.additional_critical_strike_chance = 0.1
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.total_time = 1.35
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.anim_time_scale = 0.9
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.5,
					end_time = 0.65,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.allowed_chain_actions = {
				{
					sub_action = "default_03",
					start_time = 0.65,
					action = "action_one",
					end_time = 1.08,
					input = "action_one"
				},
				{
					sub_action = "default_03",
					start_time = 0.65,
					action = "action_one",
					end_time = 1.08,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.08,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_three",
					input = "action_three"
				}
			}
--Light 3/Pushstab
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.impact_sound_event = "cog_blunt_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.additional_critical_strike_chance = nil
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.total_time = 1.35
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.anim_time_scale = 0.9
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.325,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.325,
					external_multiplier = 0.7,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_one",
					end_time = 1.08,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_one",
					end_time = 1.08,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.08,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.495,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.495,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_03",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_three",
					input = "action_three"
				}
			}
--Heavies
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.impact_sound_event = "hammer_2h_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.additional_critical_strike_chance = nil
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.total_time = 1.875
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.anim_time_scale = 1.25
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.3535,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3535,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.allowed_chain_actions = {
				{
					sub_action = "default_02",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_02",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.impact_sound_event = "hammer_2h_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.total_time = 1.875
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.anim_time_scale = 1.25
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.3535,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3535,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.allowed_chain_actions = {
				{
					sub_action = "default_03",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_03",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.impact_sound_event = "hammer_2h_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.hit_shield_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.hit_armor_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.hit_stop_anim = "attack_hit"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.total_time = 1.875
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.anim_time_scale = 1.25
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.3535,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3535,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.hit_mass_count = nil
--Dodge/Block/etc
Weapons.two_handed_hammer_priest_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_hammer_priest_template.dodge_count = 3
Weapons.two_handed_hammer_priest_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_hammer_priest_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
------------------------------------------------------------------------Ranged--------------------------------------------------------------------
--Dodge/Ammo/Reload/Etc
--Saltzpyre Crossbow code is effected in its entirety from Bardin Crossbow Code
--Dodge/Ammo/Reload/Etc
Weapons.wh_deus_01_template_1.ammo_data.ammo_per_reload = 1
Weapons.wh_deus_01_template_1.ammo_data.max_ammo = 16
Weapons.wh_deus_01_template_1.ammo_data.ammo_per_clip = 3
Weapons.wh_deus_01_template_1.ammo_data.reload_time = 0.75
Weapons.wh_deus_01_template_1.dodge_count = 3
Weapons.wh_deus_01_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.wh_deus_01_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--Dodge/Ammo/Reload/Etc
Weapons.repeating_pistol_template_1.dodge_count = 3
Weapons.repeating_pistol_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.repeating_pistol_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--Dodge/Ammo/Reload/Etc
Weapons.brace_of_pistols_template_1.actions.action_one.default.impact_data.damage_profile = "shot_repeating"
Weapons.brace_of_pistols_template_1.actions.action_one.default.total_time = 1
Weapons.brace_of_pistols_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_three",
					input = "action_three"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.brace_of_pistols_template_1.actions.action_one.fast_shot.impact_data.damage_profile = "shot_repeating"
Weapons.brace_of_pistols_template_1.actions.action_one.fast_shot.minimum_hold_time = 0
Weapons.brace_of_pistols_template_1.actions.action_one.fast_shot.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.brace_of_pistols_template_1.actions.action_one.fast_shot.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "fast_shot",
					start_time = 0.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "fast_shot",
					start_time = 0.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				},
			}
Weapons.brace_of_pistols_template_1.actions.action_two.default.minimum_hold_time = 0
Weapons.brace_of_pistols_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.brace_of_pistols_template_1.actions.action_two.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "fast_shot",
					start_time = 0,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "fast_shot",
					start_time = 0,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.brace_of_pistols_template_1.actions.action_three.default.total_time = 1
Weapons.brace_of_pistols_template_1.actions.action_three.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_three",
					input = "action_three"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.brace_of_pistols_template_1.ammo_data.ammo_per_reload = 4
Weapons.brace_of_pistols_template_1.ammo_data.max_ammo = 32
Weapons.brace_of_pistols_template_1.ammo_data.ammo_per_clip = 8
Weapons.brace_of_pistols_template_1.ammo_data.reload_time = 0.8
Weapons.brace_of_pistols_template_1.dodge_count = 4
Weapons.brace_of_pistols_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.brace_of_pistols_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--Dodge/Ammo/Reload/Etc
Weapons.repeating_crossbow_template_1.ammo_data.reload_time = 2.5
Weapons.repeating_crossbow_template_1.dodge_count = 5
Weapons.repeating_crossbow_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.repeating_crossbow_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
--//////////////////////////////////////////////////////////////////////Sienna//////////////////////////////////////////////////////////////////////////////////////////
--------------------------------------------------------------1H Crowbill----------------------------------------------------------------------------
--Default State
Weapons.one_handed_crowbill.actions.action_one.default.anim_event = "attack_swing_charge_left_diagonal"
Weapons.one_handed_crowbill.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_crowbill.actions.action_one.default_right.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.one_handed_crowbill.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_upper",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_crowbill.actions.action_one.default_left.anim_event = "attack_swing_charge_left_diagonal"
Weapons.one_handed_crowbill.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_crowbill.actions.action_one.default_last.anim_event = "attack_swing_charge_right_diagonal_pose"
Weapons.one_handed_crowbill.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.default_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3/4
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.anim_event = "attack_swing_left"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.damage_window_start = 0.38
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.damage_window_end = 0.47
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.sweep_z_offset = nil
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.width_mod = 10
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.total_time = 1.95
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.anim_time_scale = 1.3
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.baked_sweep = {
				{
					0.3466666666666667,
					0.4714381694793701,
					0.5227899551391602,
					0.020548582077026367,
					-0.3642655909061432,
					-0.5442494750022888,
					0.3316611647605896,
					-0.6790463924407959
				},
				{
					0.37277777777777776,
					0.3927757740020752,
					0.5802803039550781,
					0.011805057525634766,
					-0.292525053024292,
					-0.5823108553886414,
					0.27014392614364624,
					-0.7087774276733398
				},
				{
					0.3988888888888889,
					0.255051851272583,
					0.6519861221313477,
					-0.004257917404174805,
					-0.1371336728334427,
					-0.6218339204788208,
					0.1291280835866928,
					-0.7601597905158997
				},
				{
					0.425,
					0.0777289867401123,
					0.7071952819824219,
					-0.036727190017700195,
					0.09882839769124985,
					-0.6182830929756165,
					-0.08039449155330658,
					-0.775561511516571
				},
				{
					0.4511111111111111,
					-0.20235443115234375,
					0.6503229141235352,
					-0.11157631874084473,
					0.4298279583454132,
					-0.4615359902381897,
					-0.4349200427532196,
					-0.6427107453346252
				},
				{
					0.4772222222222222,
					-0.381206750869751,
					0.4709177017211914,
					-0.20796632766723633,
					-0.6358863115310669,
					0.21816132962703705,
					0.6446021199226379,
					0.3640635311603546
				},
				{
					0.5033333333333333,
					-0.42635154724121094,
					0.36040782928466797,
					-0.2850162982940674,
					-0.6546914577484131,
					0.1007532924413681,
					0.7021984457969666,
					0.261046439409256
				}
			}Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.anim_event = "attack_swing_down_right"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.hit_armor_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.hit_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.damage_window_start = 0.38
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.damage_window_end = 0.45
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.sweep_z_offset = nil
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.width_mod = 10
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.additional_critical_strike_chance = nil
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.total_time = 1.95
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.anim_time_scale = 1.3
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.676,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.676,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.baked_sweep = {
				{
					0.3466666666666667,
					-0.21572208404541016,
					0.29787349700927734,
					0.17684197425842285,
					-0.6989205479621887,
					0.22974303364753723,
					-0.25195690989494324,
					-0.6286859512329102
				},
				{
					0.36944444444444446,
					-0.18794512748718262,
					0.41394901275634766,
					0.1811058521270752,
					-0.6107937693595886,
					0.21561715006828308,
					-0.17237038910388947,
					-0.7421109676361084
				},
				{
					0.39222222222222225,
					-0.12941884994506836,
					0.5860424041748047,
					0.161668062210083,
					-0.4067637622356415,
					0.21792417764663696,
					-0.12306150794029236,
					-0.8785830736160278
				},
				{
					0.41500000000000004,
					-0.05363321304321289,
					0.7172584533691406,
					0.039534568786621094,
					0.0483129657804966,
					0.17534899711608887,
					-0.04186074063181877,
					-0.982428789138794
				},
				{
					0.43777777777777777,
					0.09318161010742188,
					0.772120475769043,
					-0.28412365913391113,
					0.6048346757888794,
					0.10831542313098907,
					0.07993455231189728,
					-0.7848905920982361
				},
				{
					0.46055555555555555,
					0.39004945755004883,
					0.3316831588745117,
					-0.8175486326217651,
					0.842195987701416,
					0.19276681542396545,
					0.12989677488803864,
					-0.48649120330810547
				},
				{
					0.48333333333333334,
					0.7735424041748047,
					0.254913330078125,
					-0.6688098907470703,
					0.6647912859916687,
					0.4007580280303955,
					0.4667152762413025,
					-0.42381882667541504
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.anim_event = "attack_swing_down"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.damage_window_start = 0.38
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.damage_window_end = 0.47
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.width_mod = 10
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.additional_critical_strike_chance = nil
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.total_time = 1.95
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.anim_time_scale = 1.3
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.676,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.676,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.baked_sweep = {
				{
					0.3466666666666667,
					0.21557140350341797,
					0.2605247497558594,
					0.3151884078979492,
					-0.6432750225067139,
					-0.09760115295648575,
					0.026322241872549057,
					-0.7589324712753296
				},
				{
					0.37777777777777777,
					0.18022561073303223,
					0.418182373046875,
					0.274908185005188,
					-0.49719056487083435,
					-0.10988546162843704,
					-0.015279554761946201,
					-0.8605192303657532
				},
				{
					0.4088888888888889,
					0.12532854080200195,
					0.5871024131774902,
					0.1521773338317871,
					-0.2178935706615448,
					-0.10642500221729279,
					-0.04476016387343407,
					-0.9691195487976074
				},
				{
					0.44,
					0.022722721099853516,
					0.7474188804626465,
					-0.20616459846496582,
					0.5046781301498413,
					-0.040759846568107605,
					-0.03638869896531105,
					-0.8615767359733582
				},
				{
					0.4711111111111111,
					-0.08340907096862793,
					0.5843019485473633,
					-0.6157277822494507,
					0.8930391073226929,
					-0.014335322193801403,
					-0.12749531865119934,
					-0.431301087141037
				},
				{
					0.5022222222222222,
					-0.09804725646972656,
					0.17070770263671875,
					-0.7457141876220703,
					0.975835919380188,
					-0.030366793274879456,
					-0.2099905014038086,
					0.052212152630090714
				},
				{
					0.5333333333333333,
					-0.07681035995483398,
					0.009710311889648438,
					-0.7074311971664429,
					0.9465683102607727,
					-0.04525452107191086,
					-0.22046200931072235,
					0.23099148273468018
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.anim_event = "attack_swing_right"
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.damage_window_start = 0.35
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.damage_window_end = 0.47
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.width_mod = 10
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.additional_critical_strike_chance = nil
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.total_time = 1.95
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.anim_time_scale = 1.3
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.baked_sweep = {
				{
					0.31666666666666665,
					-0.35820066928863525,
					0.551788330078125,
					-0.0971219539642334,
					-0.44832417368888855,
					0.5898890495300293,
					-0.17337659001350403,
					-0.6488273739814758
				},
				{
					0.34777777777777774,
					-0.2294255495071411,
					0.6592044830322266,
					-0.09808707237243652,
					-0.29563063383102417,
					0.6608599424362183,
					-0.08005252480506897,
					-0.6851702332496643
				},
				{
					0.3788888888888889,
					-0.00933539867401123,
					0.7010517120361328,
					-0.1212151050567627,
					-0.0053623938001692295,
					0.6900889873504639,
					0.18919384479522705,
					-0.6985371708869934
				},
				{
					0.41,
					0.2595735788345337,
					0.6497220993041992,
					-0.1333606243133545,
					0.3374190926551819,
					0.5514644980430603,
					0.5184585452079773,
					-0.5596750378608704
				},
				{
					0.44111111111111106,
					0.4877122640609741,
					0.5269002914428711,
					-0.1436471939086914,
					0.5130868554115295,
					0.3724185526371002,
					0.66352379322052,
					-0.39721861481666565
				},
				{
					0.4722222222222222,
					0.636212944984436,
					0.36120033264160156,
					-0.1584303379058838,
					0.598544180393219,
					0.3022090792655945,
					0.7190064787864685,
					-0.18287771940231323
				},
				{
					0.5033333333333333,
					0.713760495185852,
					0.20956707000732422,
					-0.18317461013793945,
					0.630311906337738,
					0.2794775068759918,
					0.7235577702522278,
					-0.03260987997055054
				}
			}
--Pushstab
Weapons.one_handed_crowbill.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.anim_event = "attack_swing_up"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_finesse"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.damage_window_start = 0.32
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.damage_window_end = 0.47
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.sweep_z_offset = 0.2
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.additional_critical_strike_chance = nil
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.total_time = 1.95
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.255,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.611,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.baked_sweep = {
				{
					0.2866666666666667,
					-0.4160337448120117,
					0.48052310943603516,
					-0.25862979888916016,
					-0.36285436153411865,
					0.7257198691368103,
					-0.08066707104444504,
					-0.5789303183555603
				},
				{
					0.3227777777777778,
					-0.24476408958435059,
					0.6299228668212891,
					-0.1503746509552002,
					-0.0822780430316925,
					0.8235551118850708,
					0.09011363983154297,
					-0.5539556741714478
				},
				{
					0.35888888888888887,
					-0.013920307159423828,
					0.72979736328125,
					-0.06399917602539062,
					0.1520054191350937,
					0.716920793056488,
					0.4444597363471985,
					-0.5151453018188477
				},
				{
					0.395,
					0.22315692901611328,
					0.7471513748168945,
					0.021082639694213867,
					0.36069679260253906,
					0.4987759292125702,
					0.6831395626068115,
					-0.39298954606056213
				},
				{
					0.4311111111111111,
					0.464280366897583,
					0.6327152252197266,
					0.12510442733764648,
					0.364742249250412,
					0.4421878159046173,
					0.7872908115386963,
					-0.22717007994651794
				},
				{
					0.4672222222222222,
					0.7516279220581055,
					0.4665975570678711,
					0.06435894966125488,
					0.5310858488082886,
					0.26260462403297424,
					0.8055940866470337,
					-0.0021779604721814394
				},
				{
					0.5033333333333333,
					0.8990819454193115,
					0.17259597778320312,
					-0.05380558967590332,
					0.5877859592437744,
					0.06701291352510452,
					0.8061704635620117,
					0.010306071490049362
				}
			}
--Heavies
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.anim_event = "attack_swing_heavy_down"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.damage_window_start = 0.22
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.damage_window_end = 0.32
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.width_mod = 10
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.range_mod = 1.2
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.total_time = 1.5
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.anim_time_scale = 1
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.26,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.baked_sweep = {
				{
					0.18666666666666668,
					0.19519710540771484,
					0.32386159896850586,
					0.19439482688903809,
					-0.6457839012145996,
					-0.12403582036495209,
					0.03741646558046341,
					-0.7524482011795044
				},
				{
					0.21444444444444444,
					0.15177154541015625,
					0.5001239776611328,
					0.19181489944458008,
					-0.38783565163612366,
					-0.11892493069171906,
					-0.024683630093932152,
					-0.9136909246444702
				},
				{
					0.24222222222222223,
					0.07831954956054688,
					0.694929838180542,
					0.006635546684265137,
					0.11383352428674698,
					-0.07917626947164536,
					-0.04363984242081642,
					-0.9893779158592224
				},
				{
					0.27,
					-0.03513813018798828,
					0.7209339141845703,
					-0.38570642471313477,
					0.7109565138816833,
					-0.017617790028452873,
					-0.06922681629657745,
					-0.699598491191864
				},
				{
					0.2977777777777778,
					-0.0914907455444336,
					0.5075256824493408,
					-0.6759254932403564,
					0.9336724281311035,
					-0.019165057688951492,
					-0.13821953535079956,
					-0.3298240602016449
				},
				{
					0.3255555555555556,
					-0.09056472778320312,
					0.1401684284210205,
					-0.7442107200622559,
					0.9739465713500977,
					-0.03085905872285366,
					-0.20881064236164093,
					0.08290891349315643
				},
				{
					0.35333333333333333,
					-0.07697582244873047,
					0.012116670608520508,
					-0.7079495191574097,
					0.9472152590751648,
					-0.044005539268255234,
					-0.2216540426015854,
					0.22741226851940155
				}
			}
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.anim_event = "attack_swing_heavy_down_right"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.damage_window_start = 0.2
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.damage_window_end = 0.28
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.width_mod = 10
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.range_mod = 1.2
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.26,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.26,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.baked_sweep = {
				{
					0.16666666666666669,
					-0.21466827392578125,
					0.31459784507751465,
					0.1757364273071289,
					-0.7071804404258728,
					0.23868580162525177,
					-0.22556330263614655,
					-0.6261358261108398
				},
				{
					0.19111111111111112,
					-0.17747879028320312,
					0.40781283378601074,
					0.1750502586364746,
					-0.6354955434799194,
					0.24432846903800964,
					-0.13004831969738007,
					-0.7207887768745422
				},
				{
					0.21555555555555558,
					-0.101806640625,
					0.5875358581542969,
					0.10869216918945312,
					-0.2989934980869293,
					0.2544431984424591,
					-0.08339742571115494,
					-0.9159183502197266
				},
				{
					0.24000000000000002,
					-0.016587257385253906,
					0.6661636829376221,
					-0.0385439395904541,
					0.237921804189682,
					0.16047054529190063,
					0.01347525417804718,
					-0.9578417539596558
				},
				{
					0.2644444444444445,
					0.1873950958251953,
					0.6768484115600586,
					-0.5663260221481323,
					0.7290764451026917,
					0.14877261221408844,
					0.08663395792245865,
					-0.6624264121055603
				},
				{
					0.2888888888888889,
					0.5864686965942383,
					0.33339762687683105,
					-0.753138542175293,
					0.7680940628051758,
					0.27759039402008057,
					0.312749981880188,
					-0.4849355220794678
				},
				{
					0.31333333333333335,
					0.8342294692993164,
					0.20261812210083008,
					-0.6361148357391357,
					0.6471456289291382,
					0.42881307005882263,
					0.5101239085197449,
					-0.37026381492614746
				}
			}
--Dodge/Block/etc
Weapons.one_handed_crowbill.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.dodge_count = 5
Weapons.one_handed_crowbill.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.one_handed_crowbill.buffs.change_dodge_speed.external_optional_multiplier = 1.2
-------------------------------------------------------------1h Sword----------------------------------------------------------------------------
--Code Affected Entirely by Kruber 1h Sword
-----------------------------------------------------------Sienna Dagger--------------------------------------------------------------------------
--Default State
Weapons.one_handed_daggers_template_1.actions.action_one.default.anim_event = "attack_swing_charge_left"
Weapons.one_handed_daggers_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "light_attack_stab",
					start_time = 0.35,
					end_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.7,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.35,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.default_right.anim_event = "attack_swing_charge_left"
Weapons.one_handed_daggers_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "light_attack_stab",
					start_time = 0.35,
					end_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.7,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.35,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.default_last.anim_event = "attack_swing_charge_left"
Weapons.one_handed_daggers_template_1.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.default_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "light_attack_stab",
					start_time = 0.35,
					end_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.7,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.35,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2/3
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.impact_sound_event = "slashing_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.total_time = 2.1
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.range_mod = 1.3
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.4
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.18,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.18,
					external_multiplier = 0.9,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.49,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.49,
					end_time = 1.4,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.42,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.42,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.impact_sound_event = "slashing_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.total_time = 2.4
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.range_mod = 1.3
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.6
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.18,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.18,
					external_multiplier = 0.9,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.56,
					end_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.56,
					end_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.6,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.48,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.48,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.impact_sound_event = "slashing_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.total_time = 2.4
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.range_mod = 1.3
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.6
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.18,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.18,
					external_multiplier = 0.9,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.56,
					end_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.56,
					end_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.6,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.48,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.48,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Pushstab
Weapons.one_handed_daggers_template_1.actions.action_one.push.fatigue_cost = nil
Weapons.one_handed_daggers_template_1.actions.action_one.push.damage_profile_inner = "medium_push"
Weapons.one_handed_daggers_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "push_stab",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.anim_event = "attack_swing_right_diagonal"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.damage_profile = "light_slashing_linesman_fencer"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.no_damage_impact_sound_event = "slashing_hit_armour"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.impact_sound_event = "slashing_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.hit_armor_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.hit_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.damage_window_start = 0.3
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.damage_window_end = 0.45
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.total_time = 2.4
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.range_mod = 1.3
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.anim_time_scale = 1.6
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.17,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.17,
					external_multiplier = 0.5,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.56,
					end_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.56,
					end_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.6,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.48,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.48,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.baked_sweep = {
				{
					0.26666666666666666,
					-0.2531290054321289,
					0.29268836975097656,
					0.02538585662841797,
					-0.6751670241355896,
					0.21966060996055603,
					-0.3846011757850647,
					-0.5898988842964172
				},
				{
					0.30277777777777776,
					-0.1353774070739746,
					0.5584173202514648,
					-0.020223140716552734,
					-0.3198379576206207,
					0.3744916319847107,
					-0.1682545691728592,
					-0.8539028763771057
				},
				{
					0.3388888888888889,
					0.237046480178833,
					0.6855831146240234,
					-0.18461847305297852,
					0.3954963684082031,
					0.47452473640441895,
					0.2873053550720215,
					-0.7320277094841003
				},
				{
					0.375,
					0.5467822551727295,
					0.5617399215698242,
					-0.28014135360717773,
					0.6079844236373901,
					0.37859055399894714,
					0.43843990564346313,
					-0.5429500341415405
				},
				{
					0.4111111111111111,
					0.6762780547142029,
					0.43230247497558594,
					-0.3123490810394287,
					0.6704700589179993,
					0.2954942286014557,
					0.4985191226005554,
					-0.4632837474346161
				},
				{
					0.44722222222222224,
					0.7327642440795898,
					0.30139732360839844,
					-0.3298530578613281,
					0.7075929641723633,
					0.21782293915748596,
					0.5360634922981262,
					-0.4055876135826111
				},
				{
					0.48333333333333334,
					0.7402276396751404,
					0.1753368377685547,
					-0.3313870429992676,
					0.7252988219261169,
					0.1497713327407837,
					0.560064435005188,
					-0.3712654709815979
				}
			}
--Heavies
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.anim_event = "attack_swing_heavy_right"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.damage_profile = "medium_fencer_stab"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.hit_armor_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.hit_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.damage_window_start = 0
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.damage_window_end = 0.2
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.height_mod = 1
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.width_mod = 10
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.sweep_z_offset = -0.025
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.total_time = 2.175
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.range_mod = 1.4
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.anim_time_scale = 1.45
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.17,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.17,
					external_multiplier = 0.5,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.43,
					end_time = 1.45,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.43,
					end_time = 1.45,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.45,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.45,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.435,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.435,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.baked_sweep = {
				{
					0.01666666666666667,
					-0.2785050868988037,
					0.14074230194091797,
					0.12345105409622192,
					-0.30902478098869324,
					0.5929648280143738,
					0.7406364679336548,
					0.0659850537776947
				},
				{
					0.052777777777777785,
					-0.2759028673171997,
					0.19479084014892578,
					0.12904757261276245,
					-0.29475483298301697,
					0.6137357950210571,
					0.7195271253585815,
					0.13685280084609985
				},
				{
					0.0888888888888889,
					-0.24187982082366943,
					0.2834148406982422,
					0.12611716985702515,
					-0.2715050280094147,
					0.6632059812545776,
					0.6644763946533203,
					0.21192917227745056
				},
				{
					0.125,
					-0.1845862865447998,
					0.3804283142089844,
					0.10846179723739624,
					-0.21957363188266754,
					0.7225892543792725,
					0.5898613929748535,
					0.2858595848083496
				},
				{
					0.16111111111111112,
					-0.1034398078918457,
					0.5120296478271484,
					0.056512534618377686,
					-0.11262260377407074,
					0.8095478415489197,
					0.44919553399086,
					0.36079341173171997
				},
				{
					0.19722222222222224,
					0.040532469749450684,
					0.602513313293457,
					-0.048221588134765625,
					0.019765831530094147,
					0.8626129031181335,
					0.3247770071029663,
					0.3873347043991089
				},
				{
					0.23333333333333334,
					0.2294217348098755,
					0.6241426467895508,
					-0.19251948595046997,
					0.15464042127132416,
					0.8787937164306641,
					0.11309482902288437,
					0.43705546855926514
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_fencer_stab_charged"
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.damage_window_start = 0
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.height_mod = 1
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.width_mod = 10
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.sweep_z_offset = -0.025
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.total_time = 2.175
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.range_mod = 1.8
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1.45
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.5,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.43,
					end_time = 1.45,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.43,
					end_time = 1.45,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.45,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.45,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.435,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.435,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.baked_sweep = {
				{
					0.01666666666666667,
					-0.2785050868988037,
					0.14074230194091797,
					0.12345105409622192,
					-0.30902478098869324,
					0.5929648280143738,
					0.7406364679336548,
					0.0659850537776947
				},
				{
					0.052777777777777785,
					-0.2759028673171997,
					0.19479084014892578,
					0.12904757261276245,
					-0.29475483298301697,
					0.6137357950210571,
					0.7195271253585815,
					0.13685280084609985
				},
				{
					0.0888888888888889,
					-0.24187982082366943,
					0.2834148406982422,
					0.12611716985702515,
					-0.2715050280094147,
					0.6632059812545776,
					0.6644763946533203,
					0.21192917227745056
				},
				{
					0.125,
					-0.1845862865447998,
					0.3804283142089844,
					0.10846179723739624,
					-0.21957363188266754,
					0.7225892543792725,
					0.5898613929748535,
					0.2858595848083496
				},
				{
					0.16111111111111112,
					-0.1034398078918457,
					0.5120296478271484,
					0.056512534618377686,
					-0.11262260377407074,
					0.8095478415489197,
					0.44919553399086,
					0.36079341173171997
				},
				{
					0.19722222222222224,
					0.040532469749450684,
					0.602513313293457,
					-0.048221588134765625,
					0.019765831530094147,
					0.8626129031181335,
					0.3247770071029663,
					0.3873347043991089
				},
				{
					0.23333333333333334,
					0.2294217348098755,
					0.6241426467895508,
					-0.19251948595046997,
					0.15464042127132416,
					0.8787937164306641,
					0.11309482902288437,
					0.43705546855926514
				}
			}
--Dodge/Block/etc
Weapons.one_handed_daggers_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.block_angle = 90
Weapons.one_handed_daggers_template_1.dodge_count = 6
Weapons.one_handed_daggers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.one_handed_daggers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
----------------------------------------------------------Fire Sword----------------------------------------------------------------------------
--Default State
Weapons.flaming_sword_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_spell",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_spell",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.default_right.anim_time_scale = 1
Weapons.flaming_sword_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_spell",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_spell",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_down",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.default_right_heavy.anim_time_scale = 1
Weapons.flaming_sword_template_1.actions.action_one.default_right_heavy.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.default_right_heavy.allowed_chain_actions = {
				{
					sub_action = "light_attack_stab",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.anim_event = "attack_swing_left_diagonal"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.damage_profile = "light_blunt_tank_diag"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.damage_window_start = 0.4
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.damage_window_end = 0.48
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.total_time = 1.95
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.3
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.585,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.585,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.baked_sweep = {
				{
					0.3466666666666667,
					0.4885520935058594,
					0.4679558277130127,
					0.0647127628326416,
					-0.6736188530921936,
					-0.2653895318508148,
					0.13745751976966858,
					-0.6759523749351501
				},
				{
					0.3811111111111111,
					0.39832592010498047,
					0.5772593021392822,
					0.06015574932098389,
					-0.5106564164161682,
					-0.3416144549846649,
					0.1386006772518158,
					-0.7767364382743835
				},
				{
					0.41555555555555557,
					0.20271873474121094,
					0.7084746360778809,
					-0.023415327072143555,
					-0.17738527059555054,
					-0.40113234519958496,
					0.04136456921696663,
					-0.897728443145752
				},
				{
					0.45,
					-0.13530349731445312,
					0.7280949354171753,
					-0.1989368200302124,
					0.4065392017364502,
					-0.33075085282325745,
					-0.2201131284236908,
					-0.8227271437644958
				},
				{
					0.48444444444444446,
					-0.3790121078491211,
					0.4309518337249756,
					-0.388447642326355,
					0.873930037021637,
					-0.10680823773145676,
					-0.3687586486339569,
					-0.29808616638183594
				},
				{
					0.518888888888889,
					-0.3817605972290039,
					0.10535335540771484,
					-0.5103073120117188,
					0.9383577108383179,
					-0.054721977561712265,
					-0.31594955921173096,
					0.1290976107120514
				},
				{
					0.5533333333333333,
					-0.35121917724609375,
					-0.009827613830566406,
					-0.4921696186065674,
					0.9259192943572998,
					-0.04427545890212059,
					-0.27810096740722656,
					0.2517399191856384
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.anim_event = "attack_swing_right_diagonal"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.damage_profile = "light_blunt_tank_diag"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.damage_window_start = 0.4
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.damage_window_end = 0.48
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.total_time = 1.95
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.3
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.585,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.585,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.baked_sweep = {
				{
					0.33666666666666667,
					-0.30158329010009766,
					0.20798635482788086,
					0.06473982334136963,
					0.8167173266410828,
					-0.11386890709400177,
					0.35492727160453796,
					0.4404921233654022
				},
				{
					0.36444444444444446,
					-0.2488412857055664,
					0.34107017517089844,
					0.0670328140258789,
					-0.7675599455833435,
					0.20887048542499542,
					-0.21025682985782623,
					-0.5683457255363464
				},
				{
					0.3922222222222222,
					-0.14381980895996094,
					0.5527217388153076,
					0.028610944747924805,
					-0.49988579750061035,
					0.36797869205474854,
					-0.09171658754348755,
					-0.7786487936973572
				},
				{
					0.42,
					0.011074066162109375,
					0.6854009628295898,
					-0.07478368282318115,
					-0.1005382090806961,
					0.4324178099632263,
					0.05900471657514572,
					-0.8941059112548828
				},
				{
					0.4477777777777778,
					0.4994335174560547,
					0.62831711769104,
					-0.37764662504196167,
					0.6535205245018005,
					0.26729655265808105,
					0.37946856021881104,
					-0.5978855490684509
				},
				{
					0.4755555555555555,
					0.7624044418334961,
					0.400907039642334,
					-0.5145911574363708,
					0.6807026267051697,
					0.29766547679901123,
					0.501364529132843,
					-0.44347813725471497
				},
				{
					0.5033333333333333,
					0.8569192886352539,
					0.17746353149414062,
					-0.6065747737884521,
					0.6251816153526306,
					0.4463402330875397,
					0.5327504277229309,
					-0.3551132380962372
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
--Lights 3/4
Weapons.flaming_sword_template_1.actions.action_one.light_attack_down = {
    damage_window_start = 0.38,
    range_mod = 1.2,
    kind = "sweep",
    first_person_hit_anim = "shake_hit",
    no_damage_impact_sound_event = "slashing_hit_armour",
    additional_critical_strike_chance = 0,
    use_precision_sweep = false,
    damage_profile = "light_slashing_smiter_finesse",
    hit_effect = "melee_hit_sword_1h",
    damage_window_end = 0.5,
    impact_sound_event = "slashing_hit",
    anim_end_event = "attack_finished",
    dedicated_target_range = 2.5,
    anim_event = "attack_swing_down",
    hit_stop_anim = "attack_hit",
    total_time = 1.95,
    forced_interpolation = 0.5,
    anim_end_event_condition_func = function (unit, end_reason)
        return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
    end,
    anim_time_scale = 1.3,
   buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			},
    allowed_chain_actions = {
        {
            sub_action = "default_right_heavy",
            start_time = 0.65,
			end_time = 1.3,
            action = "action_one",
            input = "action_one"
        },
        {
            sub_action = "default_right_heavy",
            start_time = 0.65,
			end_time = 1.3,
            action = "action_one",
            input = "action_one_hold"
        },
        {
            sub_action = "default",
            start_time = 1.3,
            action = "action_one",
            input = "action_one_hold"
        },
		{
            sub_action = "default",
            start_time = 1.3,
            action = "action_one",
            input = "action_one_hold"
        },
        {
            sub_action = "default",
            start_time = 0.585,
            action = "action_two",
            input = "action_two_hold"
        },
        {
            sub_action = "default",
            start_time = 0.585,
            action = "action_wield",
            input = "action_wield"
        }
    },
    
	enter_function = function (attacker_unit, input_extension)
        return input_extension:reset_release_input()
    end,
	
    hit_mass_count = nil,
    baked_sweep = {
				{
					0.3466666666666667,
					0.21557140350341797,
					0.2605247497558594,
					0.3151884078979492,
					-0.6432750225067139,
					-0.09760115295648575,
					0.026322241872549057,
					-0.7589324712753296
				},
				{
					0.37777777777777777,
					0.18022561073303223,
					0.418182373046875,
					0.274908185005188,
					-0.49719056487083435,
					-0.10988546162843704,
					-0.015279554761946201,
					-0.8605192303657532
				},
				{
					0.4088888888888889,
					0.12532854080200195,
					0.5871024131774902,
					0.1521773338317871,
					-0.2178935706615448,
					-0.10642500221729279,
					-0.04476016387343407,
					-0.9691195487976074
				},
				{
					0.44,
					0.022722721099853516,
					0.7474188804626465,
					-0.20616459846496582,
					0.5046781301498413,
					-0.040759846568107605,
					-0.03638869896531105,
					-0.8615767359733582
				},
				{
					0.4711111111111111,
					-0.08340907096862793,
					0.5843019485473633,
					-0.6157277822494507,
					0.8930391073226929,
					-0.014335322193801403,
					-0.12749531865119934,
					-0.431301087141037
				},
				{
					0.5022222222222222,
					-0.09804725646972656,
					0.17070770263671875,
					-0.7457141876220703,
					0.975835919380188,
					-0.030366793274879456,
					-0.2099905014038086,
					0.052212152630090714
				},
				{
					0.5333333333333333,
					-0.07681035995483398,
					0.009710311889648438,
					-0.7074311971664429,
					0.9465683102607727,
					-0.04525452107191086,
					-0.22046200931072235,
					0.23099148273468018
				}
			}
		}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.damage_profile = "light_slashing_smiter_finesse"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.total_time = 1.95
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.anim_time_scale = 1.3
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
Weapons.flaming_sword_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right_diagonal"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.4
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.48 
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.total_time = 1.95
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.16835,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.16835,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.585,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.52,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.baked_sweep = {
				{
					0.33666666666666667,
					-0.30158329010009766,
					0.20798635482788086,
					0.06473982334136963,
					0.8167173266410828,
					-0.11386890709400177,
					0.35492727160453796,
					0.4404921233654022
				},
				{
					0.36444444444444446,
					-0.2488412857055664,
					0.34107017517089844,
					0.0670328140258789,
					-0.7675599455833435,
					0.20887048542499542,
					-0.21025682985782623,
					-0.5683457255363464
				},
				{
					0.3922222222222222,
					-0.14381980895996094,
					0.5527217388153076,
					0.028610944747924805,
					-0.49988579750061035,
					0.36797869205474854,
					-0.09171658754348755,
					-0.7786487936973572
				},
				{
					0.42,
					0.011074066162109375,
					0.6854009628295898,
					-0.07478368282318115,
					-0.1005382090806961,
					0.4324178099632263,
					0.05900471657514572,
					-0.8941059112548828
				},
				{
					0.4477777777777778,
					0.4994335174560547,
					0.62831711769104,
					-0.37764662504196167,
					0.6535205245018005,
					0.26729655265808105,
					0.37946856021881104,
					-0.5978855490684509
				},
				{
					0.4755555555555555,
					0.7624044418334961,
					0.400907039642334,
					-0.5145911574363708,
					0.6807026267051697,
					0.29766547679901123,
					0.501364529132843,
					-0.44347813725471497
				},
				{
					0.5033333333333333,
					0.8569192886352539,
					0.17746353149414062,
					-0.6065747737884521,
					0.6251816153526306,
					0.4463402330875397,
					0.5327504277229309,
					-0.3551132380962372
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT
--Heavies
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.total_time = 1.875
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.anim_time_scale = 1.25
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2185,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2185,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.allowed_chain_actions = {
				{
					sub_action = "default_right_heavy",
					start_time = 0.625,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.625,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h"
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.total_time = 2.1
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.anim_time_scale =  1.4
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.2185,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2185,
					external_multiplier = 0.5,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.7,
					end_time = 1.4,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.7,
					end_time = 1.4,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.56,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.56,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Dodge/Block/etc
Weapons.flaming_sword_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.dodge_count = 5
Weapons.flaming_sword_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.flaming_sword_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
----------------------------------------------------------Flaming Flail------------------------------------------------------------------------------
--Postponed till later
-------------------------------------------------------------2h Mace------------------------------------------------------------------------------
--Default State
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default.anim_event = "attack_swing_charge_left_pose"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_left.anim_event = "attack_swing_charge_right"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_upper",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right_up",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right_up",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_right.anim_event = "attack_swing_charge_left_diagonal"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					end_time = 1,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.6,
					end_time = 1,
					blocker = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Lights 1/2
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.damage_profile = "medium_blunt_smiter_2h_hammer"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.damage_window_start = 0.32
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.damage_window_end = 0.47
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.width_mod = 10
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.total_time = 1.35
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.anim_time_scale = 0.9
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.5,
					end_time = 0.65,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.675,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.675,
					end_time = 1.08,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.08,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.anim_event = "attack_swing_right_diagonal"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.damage_profile = "medium_blunt_smiter_2h_hammer"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.damage_window_start = 0.31
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.damage_window_end = 0.5
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.width_mod = 10
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.total_time = 1.35
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.anim_time_scale = 0.9
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.5,
					end_time = 0.65,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.675,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.675,
					end_time = 1.08,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.08,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.585,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.baked_sweep = {
				{
					0.32666666666666666,
					-0.1517963409423828,
					0.36910486221313477,
					-0.08582866191864014,
					-0.38675689697265625,
					0.39321428537368774,
					-0.23680485785007477,
					-0.7998281717300415
				},
				{
					0.35944444444444446,
					-0.04258441925048828,
					0.43310546875,
					-0.09685027599334717,
					-0.22751112282276154,
					0.4654182195663452,
					-0.12680691480636597,
					-0.8458986878395081
				},
				{
					0.3922222222222222,
					0.07411384582519531,
					0.47009801864624023,
					-0.12025332450866699,
					-0.016115574166178703,
					0.4940354824066162,
					0.004484661854803562,
					-0.8692808151245117
				},
				{
					0.425,
					0.12717533111572266,
					0.4489874839782715,
					-0.14241981506347656,
					0.1855521947145462,
					0.47525185346603394,
					0.11657372862100601,
					-0.852124810218811
				},
				{
					0.45777777777777773,
					0.2896261215209961,
					0.30338001251220703,
					-0.22996854782104492,
					0.5621223449707031,
					0.3280510902404785,
					0.3700125813484192,
					-0.6629417538642883
				},
				{
					0.4905555555555555,
					0.4259176254272461,
					0.09722328186035156,
					-0.35876893997192383,
					0.7359717488288879,
					0.14370180666446686,
					0.5020461082458496,
					-0.430865615606308
				},
				{
					0.5233333333333333,
					0.46581554412841797,
					-0.04169178009033203,
					-0.40539073944091797,
					0.7852447628974915,
					0.09830030798912048,
					0.5502020716667175,
					-0.2664685845375061
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.hit_mass_count = nil
--Lights 3/Pushstab
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.anim_event = "attack_swing_left"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.damage_profile = "medium_blunt_tank"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.damage_window_start = 0.3
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.damage_window_end = 0.45
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.width_mod = 10
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.total_time = 1.875
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.25
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.325,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.325,
					external_multiplier = 0.7,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6875,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6875,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.baked_sweep = {
				{
					0.27666666666666667,
					0.28147774934768677,
					0.6226816177368164,
					-0.15244650840759277,
					-0.42113059759140015,
					-0.6237697601318359,
					0.29830464720726013,
					-0.5870048999786377
				},
				{
					0.3144444444444444,
					0.08839678764343262,
					0.6392812728881836,
					-0.18016982078552246,
					-0.2532898187637329,
					-0.6671435236930847,
					0.17245395481586456,
					-0.6789870262145996
				},
				{
					0.3522222222222222,
					-0.09179532527923584,
					0.5455255508422852,
					-0.18488717079162598,
					0.0035706288181245327,
					-0.6853293776512146,
					-0.08215150982141495,
					-0.7235758900642395
				},
				{
					0.39,
					-0.09104502201080322,
					0.19211387634277344,
					-0.1597146987915039,
					-0.4902234673500061,
					0.43399593234062195,
					0.6261261701583862,
					0.42343178391456604
				},
				{
					0.42777777777777776,
					-0.06569850444793701,
					0.15018844604492188,
					-0.1592562198638916,
					-0.5901875495910645,
					0.23909620940685272,
					0.7414289712905884,
					0.21164771914482117
				},
				{
					0.4655555555555555,
					-0.1071540117263794,
					0.10743236541748047,
					-0.16434526443481445,
					-0.5774407982826233,
					0.22261996567249298,
					0.7634518146514893,
					0.1847803145647049
				},
				{
					0.5033333333333333,
					-0.11633217334747314,
					0.08882999420166016,
					-0.18531203269958496,
					-0.5753210186958313,
					0.1905049979686737,
					0.7843921184539795,
					0.13207031786441803
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.damage_profile = "medium_blunt_tank"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.3
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.45
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.width_mod = 10
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.total_time = 1.875
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.25
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.325,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.325,
					external_multiplier = 0.7,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6875,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6875,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.anim_event = "attack_swing_heavy_left_up"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.damage_window_start = 0.35
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.damage_window_end = 0.48
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.width_mod = 10
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.slide_armour_hit = true
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.total_time = 1.875
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.anim_time_scale = 1.25
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.3535,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3535,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.625,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.625,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.baked_sweep = {
				{
					0.31666666666666665,
					0.5002800822257996,
					0.5058431625366211,
					-0.24350106716156006,
					-0.18271173536777496,
					-0.776508629322052,
					0.2785421311855316,
					-0.534850537776947
				},
				{
					0.34944444444444445,
					0.403793603181839,
					0.6067705154418945,
					-0.1951732635498047,
					-0.10408088564872742,
					-0.8293417692184448,
					0.1387588530778885,
					-0.5311360359191895
				},
				{
					0.3822222222222222,
					0.18211853504180908,
					0.6198396682739258,
					-0.13387322425842285,
					0.015684394165873528,
					0.841280460357666,
					0.21016494929790497,
					0.4978271424770355
				},
				{
					0.415,
					-0.030119001865386963,
					0.5683917999267578,
					-0.09688115119934082,
					-0.10499835759401321,
					0.7309853434562683,
					0.5639484524726868,
					0.369591623544693
				},
				{
					0.4477777777777777,
					-0.19824910163879395,
					0.3979024887084961,
					-0.03216385841369629,
					-0.27015671133995056,
					0.5455756187438965,
					0.7623936533927917,
					0.21935947239398956
				},
				{
					0.4805555555555555,
					-0.3168715834617615,
					0.17598628997802734,
					-0.014933586120605469,
					-0.45303875207901,
					0.2620689868927002,
					0.8294142484664917,
					0.1953144520521164
				},
				{
					0.5133333333333333,
					-0.30558228492736816,
					-0.010802268981933594,
					-0.08144688606262207,
					-0.5245541930198669,
					0.030169205740094185,
					0.8125362992286682,
					0.2524232864379883
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.anim_event = "attack_swing_heavy_right"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.damage_window_start = 0.35
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.damage_window_end = 0.5
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.sweep_z_offset = 0.05
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.weapon_up_offset_mod = 0.25
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.width_mod = 10
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.slide_armour_hit = true
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.total_time = 1.875
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.anim_time_scale = 1.25
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.3535,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3535,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.625,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.625,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.baked_sweep = {
				{
					0.31666666666666665,
					0.1709270477294922,
					0.48630619049072266,
					-0.03273367881774902,
					-0.1614055186510086,
					0.7990110516548157,
					-0.06238066032528877,
					-0.5758804678916931
				},
				{
					0.35277777777777775,
					0.2546730041503906,
					0.44964075088500977,
					-0.026308387517929077,
					-0.029036877676844597,
					0.7892667055130005,
					0.07481172680854797,
					-0.6087841391563416
				},
				{
					0.3888888888888889,
					0.28462982177734375,
					0.44634246826171875,
					-0.04371127486228943,
					0.09409001469612122,
					0.7594013214111328,
					0.1841350942850113,
					-0.616888165473938
				},
				{
					0.425,
					0.29872608184814453,
					0.4607858657836914,
					-0.12863659858703613,
					0.44291794300079346,
					0.5028029680252075,
					0.5246778130531311,
					-0.5250964164733887
				},
				{
					0.46111111111111114,
					0.3331031799316406,
					0.281646728515625,
					-0.14055129885673523,
					0.58327716588974,
					0.30630871653556824,
					0.6689275503158569,
					-0.3442362844944
				},
				{
					0.49722222222222223,
					0.27718162536621094,
					0.10568857192993164,
					-0.14002716541290283,
					0.6194241642951965,
					0.25169652700424194,
					0.7112694978713989,
					-0.21692927181720734
				},
				{
					0.5333333333333333,
					0.2727632522583008,
					-0.0037865638732910156,
					-0.21192046999931335,
					0.621498703956604,
					0.1855800747871399,
					0.7586126923561096,
					-0.06169453635811806
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.anim_event = "attack_swing_heavy_down"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.damage_profile = "priest_hammer_blunt_smiter"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.no_damage_impact_sound_event = "blunt_hit_armour"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.hit_armor_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.damage_window_start = 0.3
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.damage_window_end = 0.43
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.width_mod = 10
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.total_time = 1.875
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1.25
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.3535,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3535,
					external_multiplier = 0.5,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					end_time = 1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.625,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.625,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.baked_sweep = {
				{
					0.31666666666666665,
					0.185502290725708,
					0.4430084228515625,
					0.09503984451293945,
					-0.46458864212036133,
					-0.17775124311447144,
					0.1987147182226181,
					-0.844437301158905
				},
				{
					0.3411111111111111,
					0.13036245107650757,
					0.5404224395751953,
					0.022530555725097656,
					-0.35915857553482056,
					-0.10796545445919037,
					0.12580035626888275,
					-0.9184350371360779
				},
				{
					0.3655555555555555,
					0.08242005109786987,
					0.5804681777954102,
					-0.11921000480651855,
					0.015351179987192154,
					-0.10719998180866241,
					0.05614577606320381,
					-0.9925321936607361
				},
				{
					0.39,
					0.028069496154785156,
					0.5653829574584961,
					-0.24318814277648926,
					0.44002947211265564,
					-0.10574673116207123,
					-0.03875542804598808,
					-0.8908926844596863
				},
				{
					0.41444444444444445,
					-0.014983952045440674,
					0.5525493621826172,
					-0.40579795837402344,
					0.6955809593200684,
					-0.11643338948488235,
					-0.0778740718960762,
					-0.7046602368354797
				},
				{
					0.4388888888888889,
					-0.08300089836120605,
					0.46739864349365234,
					-0.5273251533508301,
					0.8397896885871887,
					-0.1286398321390152,
					-0.11149157583713531,
					-0.5155333876609802
				},
				{
					0.4633333333333333,
					-0.16899079084396362,
					0.2794933319091797,
					-0.5451514720916748,
					0.9270740747451782,
					-0.09056659787893295,
					-0.2016330361366272,
					-0.30277955532073975
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.hit_mass_count = nil
--Dodge/Block/etc
Weapons.one_handed_hammer_wizard_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.max_fatigue_points = 6
Weapons.one_handed_hammer_wizard_template_1.dodge_count = 3
Weapons.one_handed_hammer_wizard_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.one_handed_hammer_wizard_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------------------Sienna Ranged--------------------------------------------------------------------------------
--Dodge/Ammo/Reload/Etc
Weapons.staff_blast_beam_template_1.dodge_count = 4
Weapons.staff_blast_beam_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.staff_blast_beam_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--Dodge/Ammo/Reload/Etc
Weapons.staff_fireball_geiser_template_1.dodge_count = 3
Weapons.staff_fireball_geiser_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.staff_fireball_geiser_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--Dodge/Ammo/Reload/Etc
Weapons.staff_spark_spear_template_1.actions.action_one.default.speed = 16000
Weapons.staff_spark_spear_template_1.actions.action_one.rapid_left.speed = 16000
--Weapons.staff_spark_spear_template_1.actions.action_one.shoot_charged.speed = 9000
--Weapons.staff_spark_spear_template_1.actions.action_one.shoot_charged_2.speed = 12000
--Weapons.staff_spark_spear_template_1.actions.action_one.shoot_charged_3.speed = 12000
Weapons.staff_spark_spear_template_1.dodge_count = 2
Weapons.staff_spark_spear_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.staff_spark_spear_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--Dodge/Ammo/Reload/Etc
Weapons.bw_deus_01_template_1.dodge_count = 3
Weapons.bw_deus_01_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.bw_deus_01_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--Dodge/Ammo/Reload/Etc
Weapons.staff_flamethrower_template.dodge_count = 3
Weapons.staff_flamethrower_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.staff_flamethrower_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--Dodge/Ammo/Reload/Etc
Weapons.staff_fireball_fireball_template_1.dodge_count = 3
Weapons.staff_fireball_fireball_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.staff_fireball_fireball_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--Dodge/Ammo/Reload/Etc
Weapons.sienna_scholar_career_skill_weapon.actions.action_career_release.default.speed = 9000

--////////////////////////////////////////////////////////////////////////////////Custom Templates///////////////////////////////////////////////////////////////////////
-- boost_curve_coefficient_headshot = headshot damage multiplier changes
-- power_distribution = overall damage changes
-- armor_modifier = damage changes against certain armor types. Infantry, armour, monster, berzerker, player, super armour (defaults to armor damage if not in the list?) in that order

--Damage Profile Parent Template
PMCDamageProfileTemplates = {}
--My Table
PMCDamageProfileTemplates.DH_light_attack_dual = {
	stagger_duration_modifier = 1.25,
	armor_modifier = {
		attack = {
			--1/0/1/1/1
			0.88,
			0.22,
			0.88,
			1,
			0.66
		},
		impact = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			--1/0.25/1.5/1/1
			0.88,
			0.44,
			1.33,
			1,
			0.88
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.2,
		impact = 0.4
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.1
		}
	},
	targets = {
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 1.5,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.15,
				impact = 0.2
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.175
			}
		}
	}
}
PMCDamageProfileTemplates.DH_heavy_attack_sweep = { 
	stagger_duration_modifier = 1.5,
	armor_modifier = {
		attack = {
			--1/0.5/1/1/0.75
			0.67,
			0.39,
			0.67,
			0.67,
			0.28
		},
		impact = {
			1,
			1,
			0.5,
			1,
			0.75
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			--1/0,5/1/1/1
			0.67,
			0.67,
			0.67,
			0.67,
			0.56
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.3,
		impact = 0.6
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.05
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.225,
				impact = 0.175
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.1,
				impact = 0.15
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.1
			}
		}
	},
}
PMCDamageProfileTemplates.DS_heavy_attack_sweep = {
	melee_boost_override = 3.5,
	armor_modifier = {
		attack = {
			1,
			0.25,
			2,
			1,
			1
		},
		impact = {
			1,
			0.25,
			0.5,
			1,
			1
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.75,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.35,
		impact = 0.2
	},
	default_target = {
		boost_curve_type = "linesman_curve",
		attack_template = "light_slashing_linesman",
		power_distribution = {
			attack = 0.075,
			impact = 0.05
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "ninja_curve",
			attack_template = "light_slashing_linesman_hs",
			power_distribution = {
				attack = 0.15,
				impact = 0.125
			},
			armor_modifier = {
				attack = {
					1,
					0.4,
					2,
					1,
					1
				},
				impact = {
					1,
					0.5,
					0.5,
					1,
					1
				}
			}
		},
		{
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient_headshot = 1,
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.125,
				impact = 0.075
			}
		}
	}
}


--Adds Custom Damage Profile Templates to NetworkLookup
for key, _ in pairs(PMCDamageProfileTemplates) do
    i = #NetworkLookup.damage_profiles + 1
    NetworkLookup.damage_profiles[i] = key
    NetworkLookup.damage_profiles[key] = i
end
--Merges the Custom Damage profile Templates to the Base Game Damage Profile Table
table.merge_recursive(DamageProfileTemplates, PMCDamageProfileTemplates)

for buff_name, _ in pairs(BuffTemplates) do
    local indexed = table.contains(NetworkLookup.buff_templates, buff_name)
    if not indexed then
        local index = #NetworkLookup.buff_templates + 1
        NetworkLookup.buff_templates[index] = buff_name
        NetworkLookup.buff_templates[buff_name] = index
    end
end
--Above Function keys are Courtesy of KrazedKirb

--New Attacks/Defaults Code
local MeleeBuffTypes = MeleeBuffTypes or {
	MELEE_1H = true,
	MELEE_2H = true
}
local RangedBuffTypes = RangedBuffTypes or {
	RANGED_ABILITY = true,
	RANGED = true
}
local WEAPON_DAMAGE_UNIT_LENGTH_EXTENT = 1.919366
local TAP_ATTACK_BASE_RANGE_OFFSET = 0.6
local HOLD_ATTACK_BASE_RANGE_OFFSET = 0.65

for item_template_name, item_template in pairs(Weapons) do
	item_template.name = item_template_name
	item_template.crosshair_style = item_template.crosshair_style or "dot"
	local attack_meta_data = item_template.attack_meta_data
	local tap_attack_meta_data = attack_meta_data and attack_meta_data.tap_attack
	local hold_attack_meta_data = attack_meta_data and attack_meta_data.hold_attack
	local set_default_tap_attack_range = tap_attack_meta_data and tap_attack_meta_data.max_range == nil
	local set_default_hold_attack_range = hold_attack_meta_data and hold_attack_meta_data.max_range == nil

	if RangedBuffTypes[item_template.buff_type] and attack_meta_data then
		attack_meta_data.effective_against = attack_meta_data.effective_against or 0
		attack_meta_data.effective_against_charged = attack_meta_data.effective_against_charged or 0
		attack_meta_data.effective_against_combined = bit.bor(attack_meta_data.effective_against, attack_meta_data.effective_against_charged)
	end

	if MeleeBuffTypes[item_template.buff_type] then
		fassert(attack_meta_data, "Missing attack metadata for weapon %s", item_template_name)
		fassert(tap_attack_meta_data, "Missing tap_attack metadata for weapon %s", item_template_name)
		fassert(hold_attack_meta_data, "Missing hold_attack metadata for weapon %s", item_template_name)
		fassert(tap_attack_meta_data.arc, "Missing arc parameter in tap_attack metadata for weapon %s", item_template_name)
		fassert(hold_attack_meta_data.arc, "Missing arc parameter in hold_attack metadata for weapon %s", item_template_name)
	end

	local actions = item_template.actions

	for action_name, sub_actions in pairs(actions) do
		for sub_action_name, sub_action_data in pairs(sub_actions) do
			local lookup_data = {
				item_template_name = item_template_name,
				action_name = action_name,
				sub_action_name = sub_action_name
			}
			sub_action_data.lookup_data = lookup_data
			local action_kind = sub_action_data.kind
			local action_assert_func = ActionAssertFuncs[action_kind]

			if action_assert_func then
				action_assert_func(item_template_name, action_name, sub_action_name, sub_action_data)
			end

			if action_name == "action_one" then
				local range_mod = sub_action_data.range_mod or 1

				if set_default_tap_attack_range and string.find(sub_action_name, "light_attack") then
					local current_attack_range = tap_attack_meta_data.max_range or math.huge
					local tap_attack_range = TAP_ATTACK_BASE_RANGE_OFFSET + WEAPON_DAMAGE_UNIT_LENGTH_EXTENT * range_mod
					tap_attack_meta_data.max_range = math.min(current_attack_range, tap_attack_range)
				elseif set_default_hold_attack_range and string.find(sub_action_name, "heavy_attack") then
					local current_attack_range = hold_attack_meta_data.max_range or math.huge
					local hold_attack_range = HOLD_ATTACK_BASE_RANGE_OFFSET + WEAPON_DAMAGE_UNIT_LENGTH_EXTENT * range_mod
					hold_attack_meta_data.max_range = math.min(current_attack_range, hold_attack_range)
				end
			end

			local impact_data = sub_action_data.impact_data

			if impact_data then
				local pickup_settings = impact_data.pickup_settings

				if pickup_settings then
					local link_hit_zones = pickup_settings.link_hit_zones

					if link_hit_zones then
						for i = 1, #link_hit_zones, 1 do
							local hit_zone_name = link_hit_zones[i]
							link_hit_zones[hit_zone_name] = true
						end
					end
				end
			end
		end
	end
end