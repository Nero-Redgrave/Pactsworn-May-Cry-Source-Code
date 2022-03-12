local mod = get_mod("ef")

function mod.on_all_mods_loaded()
    for backend_id, modified_item_template in pairs(Managers.backend:get_interface("items")._modified_templates) do
        table.merge(modified_item_template, Weapons[modified_item_template.name])
    end
end

mod:echo("Reiklanders Never Cry v1.43")

--To Do List
	--Light 3 1h Sword increase to great axe light with 2x finesse
	--Get around to the rest of Saltzpyre's weapons
	--AnF 1 less combo in the chain, revert back to dual axe heavy
		--Find out how to make a new default to fix the chain
	--Rapier more headshot focus less crit reliant heavies
	--Reduce 1h axe raw damage to match old 1h axe damage
	--Great axe heavy nth damage armor damage increase to 40/20/10?
	--Great axe light 3 sweep back?
	--Remove the game crashing weapon profiles
	--Firesword reduce h2
	
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
DamageProfileTemplates.light_blunt_tank.cleave_distribution.attack = 0.3 --this is 8.95 dmg cleave
DamageProfileTemplates.light_blunt_tank.cleave_distribution.impact = 0.4 --this is 11.94 stagger cleave
DamageProfileTemplates.light_blunt_tank_diag.targets[1].boost_curve_coefficient_headshot = 2
DamageProfileTemplates.light_blunt_tank_diag.targets[2].boost_curve_coefficient_headshot = 2
DamageProfileTemplates.light_blunt_tank_diag.armor_modifier.attack = { 1, 0.3, 1, 1, 1, 0.3 } --{ 1, 0, 1, 1, 0 }
DamageProfileTemplates.light_blunt_tank_diag.critical_strike.attack_armor_power_modifer = {	1, 0.5, 1, 1, 0.5 } --{ 1, 0.5, 1, 1, 0.25 }
DamageProfileTemplates.light_blunt_smiter.default_target.boost_curve_coefficient_headshot = 2
--Lights 1/2
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.2
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
					start_time = 0.62,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.62,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.2
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
					start_time = 0.62,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.62,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 3/4
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.2
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
					start_time = 0.6,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.6,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.hit_mass_count = nil
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.range_mod = 1.2
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.anim_time_scale = 1.2
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
					start_time = 0.66,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.66,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.2
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
					start_time = 0.6,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.damage_profile = "heavy_slashing_smiter_polearm"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.range_mod = 1.2
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.total_time = 2
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.damage_profile = "heavy_slashing_smiter_polearm"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.range_mod = 1.2
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.total_time = 2
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
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
-------------------------------------------------------------------1h Sword--------------------------------------------------------------------------------
--Simple Template Changes
DamageProfileTemplates.light_slashing_linesman_finesse.targets[1].boost_curve_coefficient_headshot = 2.5
DamageProfileTemplates.light_slashing_linesman_finesse.targets[2].boost_curve_coefficient_headshot = 2.5
--Light 1/2
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
					start_time = 0.56,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.56,
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
					start_time = 0.61,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.61,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.total_time = 2.015
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
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
					start_time = 0.56,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.56,
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
--Heavies
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = nil
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.slide_armour_hit = true
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = nil
Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.slide_armour_hit = true
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Default State
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
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
----------------------------------------------------------------Mace and Sword----------------------------------------------------------------------------
--Lights 1/2
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.damage_profile = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.1
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
					start_time = 0.44,
					end_time = 0.99,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.44,
					end_time = 0.99,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.99,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.99,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.39,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.39,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.damage_profile = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.anim_time_scale = 1.35
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
					start_time = 0.61,
					end_time = 1.21,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.61,
					end_time = 1.21,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.21,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.21,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.47,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.47,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
--Lights 3/4
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.anim_time_scale = 1.2
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
					start_time = 0.48,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.48,
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
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.anim_time_scale = 1.2
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
					start_time = 0.48,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.48,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.anim_time_scale = 1
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
					start_time = 0.63,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.63,
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
					start_time = 0.53,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.63,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.hit_mass_count = nil
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.anim_time_scale = 1
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
					start_time = 0.63,
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.63,
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
					start_time = 0.53,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.63,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.hit_mass_count = nil
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Dodge/Block/etc
Weapons.dual_wield_hammer_sword_template.dodge_count = 4
--------------------------------------------------------------------Tuskgor Spear-------------------------------------------------------------------
--Lights 1/2/4
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.total_time = 1.5
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.5,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.5,
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
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.total_time = 1.5
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.anim_time_scale = 1
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.48,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.48,
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
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_2.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_2.total_time = 1.5
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_2.anim_time_scale = 1
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_2.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.45,
					end_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.45,
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
--Light 3/Pushstab
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.total_time = 1.8
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.anim_time_scale = 1.2
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_last_2",
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last_2",
					start_time = 0.6,
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
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.total_time = 1.2
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.anim_time_scale = 0.8
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.4,
					end_time = 0.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.4,
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
					start_time = 0.32,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.32,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.total_time = 1.2
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.anim_time_scale = 0.8
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.33,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.33,
					external_multiplier = 0.5,
					end_time = 0.48,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.464,
					end_time = 0.8,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.464,
					end_time = 0.8,
					action = "action_one",
					release_required = "action_one_hold",
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
					start_time = 0.384,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.464,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.total_time = 1.5
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.anim_time_scale = 1
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.23,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.23,
					external_multiplier = 0.5,
					end_time = 0.38,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.48,
					end_time =1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.48,
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
					start_time = 0.38,
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
					end_time = 0.25,
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
Weapons.two_handed_heavy_spears_template.actions.action_one.default_last_2.anim_event = "attack_swing_charge_stab"
Weapons.two_handed_heavy_spears_template.actions.action_one.default_last_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.default_last_2.allowed_chain_actions = {
				{
					sub_action = "light_attack_stab_2",
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
--Dodge/Block/etc
Weapons.two_handed_heavy_spears_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_heavy_spears_template.max_fatigue_points = 6
Weapons.two_handed_heavy_spears_template.dodge_count = 4
Weapons.two_handed_heavy_spears_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_heavy_spears_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
---------------------------------------------------------------------Halberd-------------------------------------------------------------------------
--Lights 1/2
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
					start_time = 0.64,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.64,
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
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.anim_time_scale = 0.92
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.buff_data = {
				{
					start_time = 0.1,
					external_multiplier = 1.3,
					end_time = 0.35,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.35,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.5,
					end_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.5,
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
					start_time = 0.46,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.46,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 3/PS
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.anim_time_scale = 0.8
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
					start_time = 0.5,
					end_time = 0.96,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					end_time = 0.96,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.96,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.96,
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
					doubleclick_window = 0,
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
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.anim_time_scale = 0.8
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
					start_time = 0.5,
					end_time = 0.96,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.5,
					end_time = 0.96,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.96,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.96,
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
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.anim_time_scale = 1.04
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.28,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.28,
					external_multiplier = 0.7,
					end_time = 0.38,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time =  1.25,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					end_time =  1.25,
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
					start_time = 0.4,
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
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 0.88
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.5,
					end_time = 0.38,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.38,
					external_multiplier = 0.7,
					end_time = 0.58,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5104,
					end_time = 1.06,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5104,
					end_time = 1.06,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.06,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.06,
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
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
					start_time = 0.5,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
--Dodge/Block/etc
Weapons.two_handed_halberds_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_halberds_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--------------------------------------------------------------------2h Sword-------------------------------------------------------------------------------
--Lights
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.total_time = 3
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
					start_time = 0.82,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.82,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.total_time = 3
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
					start_time = 0.82,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.82,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
					start_time = 0.72,
					end_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.72,
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
					start_time = 0.61,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.61,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = nil
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = nil
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
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
--Lights 1/2
Weapons.bastard_sword_template.actions.action_one.light_attack_left.damage_profile = "medium_slashing_linesman"
Weapons.bastard_sword_template.actions.action_one.light_attack_left.total_time = 1.95
Weapons.bastard_sword_template.actions.action_one.light_attack_left.anim_time_scale = 1.5
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
					start_time = 0.855,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right_pose",
					start_time = 0.855,
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
Weapons.bastard_sword_template.actions.action_one.light_attack_right.total_time = 1.95
Weapons.bastard_sword_template.actions.action_one.light_attack_right.anim_time_scale = 1.3
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
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left_uppercut",
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
--Light 3/Pushstab
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.damage_profile = "medium_slashing_smiter_2h"
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
					start_time = 0.78,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
					start_time = 0.78,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left_down_pose",
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
--Heavies
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
					start_time = 0.78,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					start_time = 0.78,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					end_time = 1.2,
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
					end_time = 1.2,
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
					end_time = 1.2,
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
					end_time = 1.2,
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
					end_time = 1.2,
					blocker = true,
					input = "action_one_hold"
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
Weapons.bastard_sword_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.bastard_sword_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--------------------------------------------------------------------2h Hammer-----------------------------------------------------------------------------
--Simple Template Changes
DamageProfileTemplates.medium_blunt_tank_upper_1h.shield_break = true
--Light 1/2/3
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
					start_time = 0.7,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.7,
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
					sub_action = "default_right",
					start_time = 0.7,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.7,
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
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left_up.additional_critical_strike_chance = 0.10
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left_up.anim_time_scale = 0.9
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left_up.buff_data = {
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
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left_up.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.63,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.63,
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
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_push_left_up",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.54,
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
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = nil
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.hit_stop_anim = nil
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
					end_time = 1.2,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					release_required = "action_two_hold",
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
					release_required = "action_two_hold",
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
Weapons.two_handed_hammers_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_hammers_template_1.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_up",
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
					release_required = "action_two_hold",
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
--Dodge/Block/etc
Weapons.two_handed_hammers_template_1.dodge_count = 3
Weapons.two_handed_hammers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_hammers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-----------------------------------------------------------------Executioner Sword------------------------------------------------------------------
--Simple Template Changes
DamageProfileTemplates.medium_slashing_linesman_executioner.cleave_distribution.impact = 0.4
--Lights 1/2/3
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.total_time = 2.1
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.4
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
					start_time = 1.05,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 1.05,
					end_time = 1.4,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one"
				},{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.91,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.91,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.total_time = 2.1
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.range_mod = 1.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.4
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
					start_time = 0.952,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.952,
					end_time = 1.4,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one"
				},{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.91,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.91,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.total_time = 2.7
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.range_mod = 1.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.8
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
					sub_action = "default_right",
					start_time = 1.224,
					end_time = 1.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 1.224,
					end_time = 1.8,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.8,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 1.17,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT
--Heavies
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.additional_critical_strike_chance = nil
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
					start_time = 0.72,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.additional_critical_strike_chance = nil
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
					start_time = 0.72,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
--Dodge/Block/etc
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
Weapons.longbow_empire_template.actions.action_one.shoot_charged.speed = 12000
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
DamageProfileTemplates.light_slashing_smiter_diag.default_target.boost_curve_coefficient_headshot = 2
DamageProfileTemplates.light_slashing_smiter_diag.armor_modifier.attack = {1.25, 0.65, 2.5, 1, 0.65, 0.65}
DamageProfileTemplates.light_slashing_smiter_diag.critical_strike.attack_armor_power_modifer = {1.25, 0.65, 2.5, 0.65, 0.65}
DamageProfileTemplates.medium_slashing_smiter_1h.default_target.boost_curve_coefficient_headshot = 2
--Lights 1/2/3
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
					start_time = 0.59,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.59,
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
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
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
					start_time = 0.61,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.61,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_diag"
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
					start_time = 0.58,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.58,
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
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h"
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.damage_profile = "medium_slashing_smiter_1h"
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Default States
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
--Dodge/Block/etc
Weapons.one_hand_axe_template_2.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.dodge_count = 5
--------------------------------------------------------------------1h Hammer-----------------------------------------------------------------------------
--Lights 1/2
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.anim_time_scale = 1.2
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
					start_time = 0.62,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.62,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.anim_time_scale = 1.2
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
					start_time = 0.62,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.62,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 3/4
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.anim_time_scale = 1.2
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
					start_time = 0.6,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.6,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.hit_mass_count = nil
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.range_mod = 1.2
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.anim_time_scale = 1.2
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
					start_time = 0.66,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.66,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.anim_time_scale = 1.2
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
					start_time = 0.6,
					end_time = 1.08,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.damage_profile = "heavy_slashing_smiter_polearm"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.range_mod = 1.2
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.damage_profile = "heavy_slashing_smiter_polearm"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.range_mod = 1.2
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Default State
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
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
-------------------------------------------------------Dual Axes----------------------------------------------------------------------------------
--Light 1/2/3/4
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.4
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
					start_time = 0.56,
					end_time = 1.26,
					action = "action_one",
					input = "action_one",
				},
				{
					sub_action = "default_last",
					start_time = 0.56,
					end_time = 1.26,
					action = "action_one",
					input = "action_one_hold",
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
					start_time = 0.49,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.4
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
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one",
				},
				{
					sub_action = "default_right",
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one_hold",
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
					start_time = 0.49,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.anim_time_scale = 1.4
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
					start_time = 0.56,
					end_time = 1.26,
					action = "action_one",
					input = "action_one",
				},
				{
					sub_action = "default_left",
					start_time = 0.56,
					end_time = 1.26,
					action = "action_one",
					input = "action_one_hold",
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
					start_time = 0.49,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.anim_time_scale = 1.4
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
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one",
				},
				{
					sub_action = "default",
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one_hold",
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
					start_time = 0.49,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.49,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 0.72
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
					start_time = 0.36,
					end_time = 0.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.36,
					end_time = 0.65,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.29,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.29,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
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
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					release_required = "action_one_hold",
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_heavy",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					release_required = "action_one_hold",
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					end_time = 1.35,
					action = "action_one",
					release_required = "action_one_hold",
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_3",
					start_time = 0.5,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_3",
					start_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
--Dodge/Block/etc
Weapons.dual_wield_axes_template_1.max_fatigue_points = 6
-------------------------------------------------------Dual Hammers------------------------------------------------------------------------------
--Lights 1/2/3
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.damage_profile = "DH_light_attack_dual"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.anim_time_scale = 1.4
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
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.63,
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
					start_time = 0.49,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.damage_profile = "DH_light_attack_dual"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.anim_time_scale = 1.25
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
					start_time = 0.52,
					end_time = 1.12,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.52,
					end_time = 1.12,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.12,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.12,
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
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.damage_profile = "DH_light_attack_dual"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.25
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
					start_time = 0.49,
					end_time = 1.12,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					end_time = 1.12,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.12,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.12,
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
--Light 4/Pushstab
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.26
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
					sub_action = "default_down",
					start_time = 0.48,
					end_time = 1.14,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.48,
					end_time = 1.14,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.14,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.14,
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
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_down.anim_time_scale = 1.35
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_down.buff_data = {
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
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_down.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.61,
					end_time = 1.21,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.61,
					end_time = 1.21,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.21,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.21,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.47,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.47,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.slide_armour_hit = true
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.damage_profile_left = "DH_heavy_attack_sweep"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.damage_profile_right = "DH_heavy_attack_sweep"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.anim_time_scale = 1.1
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.buff_data = {
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
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.55,
					end_time = 1.32,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.55,
					end_time = 1.32,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.32,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.32,
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
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.slide_armour_hit = true
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.damage_profile_left = "DH_heavy_attack_sweep"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.damage_profile_right = "DH_heavy_attack_sweep"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.anim_time_scale = 1.1
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
					start_time = 0.55,
					end_time = 1.32,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.55,
					end_time = 1.32,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.32,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.32,
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
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
--Default States
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_3",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_3",
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_3",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_3",
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_3",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_3",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Dodge/Block/etc
Weapons.dual_wield_hammers_template.max_fatigue_points = 6
Weapons.dual_wield_hammers_template.dodge_count = 4
Weapons.dual_wield_hammers_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_hammers_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
-------------------------------------------------2h Pickaxe-------------------------------------------------------------------------------------
--Lights 1/2
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.damage_profile = "medium_slashing_axe_linesman"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.range_mod = 1.5
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
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.63,
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
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.damage_profile = "medium_slashing_axe_linesman"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.range_mod = 1.5
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
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.63,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "axe_1h_hit"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.range_mod = 1.5
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
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
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.63,
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
					start_time = 0.6,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
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
					start_time = 0.48,
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
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.ignore_armour_hit = true
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
					start_time = 0.6,
					end_time = 1.44,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
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
					start_time = 0.48,
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
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1.35
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
					start_time = 0.675,
					end_time = 1.62,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.675,
					end_time = 1.62,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.62,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.62,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.675,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.ignore_armour_hit = true
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.anim_time_scale = 1.35
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
					start_time = 0.675,
					end_time = 1.62,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.675,
					end_time = 1.62,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.62,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.62,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.675,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.4,
					action = "action_one",
					end_time = 0.75,
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
					start_time = 0.75,
					blocker = true,
					end_time = 2.25,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 1.8,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.4,
					action = "action_one",
					end_time = 0.75,
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
					start_time = 0.75,
					blocker = true,
					end_time = 2.25,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right_charged",
					start_time = 1.8,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.4,
					action = "action_one",
					end_time = 0.75,
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
					start_time = 0.75,
					blocker = true,
					end_time = 2.25,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 1.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Dodge/Block/etc
Weapons.two_handed_picks_template_1.dodge_count = 3
Weapons.two_handed_picks_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_picks_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
---------------------------------------------------------2h Greataxe---------------------------------------------------------------------------------------
--Lights 1/2/3
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
					start_time = 0.65,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.65,
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
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.anim_time_scale = 1
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
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
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
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.anim_time_scale = 1
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.buff_data = {
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
Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.74,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.74,
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
--Pushstab
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
					end_time = 1.44,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.66,
					end_time = 1.44,
					action = "action_one",
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
--Heavies
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.hit_shield_stop_anim = "attack_hit_shield"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.slide_armour_hit = true
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.range_mod = 1.65
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.hit_shield_stop_anim = "attack_hit_shield"
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.slide_armour_hit = true
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.range_mod = 1.65
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
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
--Default States
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
--Simple Template Changes
DamageProfileTemplates.medium_blunt_tank_impact.cleave_distribution.impact = 0.6
--Lights 1/2/3/4
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left.range_mod = 1.5
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left.total_time = 1.8
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.2
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left.buff_data = {
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
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
					sub_action = "default_normal",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default_normal",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left_pose.range_mod = 1.5
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left_pose.total_time = 1.8
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left_pose.anim_time_scale = 1.2
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left_pose.buff_data = {
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left_pose.allowed_chain_actions = {
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
					sub_action = "default_normal",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_normal",
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_right.damage_profile = "medium_blunt_tank_impact"
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_right.range_mod = 1.5
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_right.total_time = 1.8
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.2
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_right.buff_data = {
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
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
					sub_action = "default_normal",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_normal",
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_last.damage_profile = "medium_blunt_tank_impact"
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_last.range_mod = 1.5
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_last.total_time = 1.8
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.2
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_last.buff_data = {
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.78,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.78,
					end_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default_normal",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_normal",
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_up_right_last.range_mod = 1.5
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_up_right_last.total_time = 1.95
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_up_right_last.anim_time_scale = 1.3
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_up_right_last.buff_data = {
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_up_right_last.allowed_chain_actions = {
				{
					sub_action = "default_normal_pose",
					start_time = 0.78,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_normal_pose",
					start_time = 0.78,
					end_time = 1.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default_normal",
					start_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_normal",
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
			}
--Pushstab
Weapons.two_handed_cog_hammers_template_1.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.push.allowed_chain_actions = {
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_bopp.range_mod = 1.5
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_bopp.total_time = 2.25
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.5
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_bopp.buff_data = {
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
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.87,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.87,
					end_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default_normal",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_normal",
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
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT
--Heavies
Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_left.range_mod = 1.4
Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_left.total_time = 2.1
Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1.4
Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_left.buff_data = {
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
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
					sub_action = "default_normal",
					start_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_normal",
					start_time = 1.4,
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
					start_time = 0.84,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_right.range_mod = 1.4
Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_right.total_time = 2.1
Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1.4
Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_right.buff_data = {
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions = {
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
					sub_action = "default_normal",
					start_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_normal",
					start_time = 1.4,
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
					start_time = 0.84,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Default State
Weapons.two_handed_cog_hammers_template_1.actions.action_one.default_normal.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.default_normal.allowed_chain_actions = {
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.default_normal_pose.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.default_normal_pose.allowed_chain_actions = {
				{
					sub_action = "light_attack_left_pose",
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
					start_time =1,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.default_left.allowed_chain_actions = {
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
					start_time =1,
					action = "action_one",
					auto_chain = true
				}
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.default_right.allowed_chain_actions = {
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
Weapons.two_handed_cog_hammers_template_1.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_cog_hammers_template_1.actions.action_one.default_last.allowed_chain_actions = {
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
--Dodge/Block/etc
Weapons.two_handed_cog_hammers_template_1.dodge_count = 3
Weapons.two_handed_cog_hammers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_cog_hammers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
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
--Lights 1/2/3/4
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.total_time = 1.875
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.anim_time_scale = 1.25
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
					start_time = 0.6,
					end_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					end_time = 1.25,
					action = "action_one",
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
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.total_time = 1.875
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.anim_time_scale = 1.25
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
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					end_time = 1.25,
					action = "action_one",
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
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.total_time = 1.875
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.anim_time_scale = 1.25
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
					start_time = 0.55,
					end_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.55,
					end_time = 1.25,
					action = "action_one",
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
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.total_time = 1.875
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.anim_time_scale = 1.25
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
					sub_action = "default",
					start_time = 0.5875,
					end_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5875,
					end_time = 1.25,
					action = "action_one",
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_diag"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.total_time = 1.875
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.25
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
					start_time = 0.55,
					end_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					end_time = 1.25,
					action = "action_one",
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
--Heavies
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h"
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
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
					start_time = 0.5,
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
Weapons.we_one_hand_axe_template.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.default_right.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_last",
					start_time = 0,
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
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
					start_time = 0.5,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
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
					start_time = 0.5,
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
Weapons.we_one_hand_axe_template.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.default_last.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
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
					start_time = 0.5,
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
--Dodge/Block/etc
Weapons.we_one_hand_axe_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.dodge_count = 5
--------------------------------------------------------------------1h Sword------------------------------------------------------------------------
--Lights 1/2
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.total_time = 2.8
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.4
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
					start_time = 0.63,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.63,
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
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.total_time = 2.8
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.4
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
					start_time = 0.63,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.63,
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
--Light 3
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.range_mod = 1.2
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.total_time = 2.8
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.4
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
					start_time = 0.7,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.7,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.total_time = 2.8
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.4
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
					start_time = 0.672,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.672,
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
--Heavies
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.additional_critical_strike_chance = nil
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.total_time = 2
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.damage_profile = "medium_slashing_tank_1h_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.hit_stop_anim = nil
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.slide_armour_hit = true
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.additional_critical_strike_chance = nil
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.total_time = 3
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.anim_time_scale = 1.5
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
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.hit_mass_count = TANK_HIT_MASS_COUNT
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_up",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_up",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Dodge/Block/etc
Weapons.we_one_hand_sword_template_1.dodge_count = 5
Weapons.we_one_hand_sword_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.we_one_hand_sword_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
Weapons.we_one_hand_sword_template_1.outer_block_fatigue_point_multiplier  = 2
-------------------------------------------------------------------Dual Daggers---------------------------------------------------------------------
--Simple Template Changes
DamageProfileTemplates.light_fencer_stab_diag.armor_modifier.attack = { 1.45, 0, 1.5, 1, 1.04} --Inf/Armor/Monster/Super/Zerker
DamageProfileTemplates.light_fencer_stab_diag.critical_strike.attack_armor_power_modifer = {1.45, 0.5, 2, 1, 1.04} --1/0.5/2/1/1
DamageProfileTemplates.light_fencer_stab_diag.cleave_distribution.attack = 0.075
DamageProfileTemplates.light_fencer_stab_diag.cleave_distribution.impact = 0.075
DamageProfileTemplates.light_fencer_stab_diag.targets[1].dot_template_name = nil
DamageProfileTemplates.light_fencer_stab.targets[1].dot_template_name = nil
--Lights 1/2/3/4
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.total_time = 2.1
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.4
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
					start_time = 0.49,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.49,
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
					start_time = 0.35,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.35,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.total_time = 2.4
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.6
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
					start_time = 0.56,
					end_time = 1.44,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.56,
					end_time = 1.44,
					action = "action_one",
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
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.total_time = 2.1
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.anim_time_scale = 1.4
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
					start_time = 0.49,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left_last",
					start_time = 0.49,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
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
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.35,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.35,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.total_time = 2.7
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.8
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
					start_time = 0.63,
					end_time = 1.62,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.63,
					end_time = 1.62,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.62,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.62,
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
Weapons.dual_wield_daggers_template_1.actions.action_one.push.fatigue_cost = nil
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
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "push_stab",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.damage_profile = "medium_fencer_stab"
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.total_time = 2.925
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.anim_time_scale = 1.95
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
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
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.975,
					end_time = 1.95,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.975,
					end_time = 1.95,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.95,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.95,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.78,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.78,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
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
					start_time = 0.4,
					end_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_stab",
					start_time = 0.4,
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
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.total_time = 2.1
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.anim_time_scale = 1.4
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
					start_time = 0.56,
					end_time = 1.4,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.56,
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
					start_time = 0.42,
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
--Default State
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
--Dodge/Block/etc
Weapons.dual_wield_daggers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_daggers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
Weapons.dual_wield_daggers_template_1.max_fatigue_points = 6
Weapons.dual_wield_daggers_template_1.block_angle = 90
-----------------------------------------------------------------Sword and Dagger-------------------------------------------------------------------------
--Lights/Pushstab
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
					sub_action = "default_right",
					start_time = 0.57,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.57,
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
					sub_action = "default_left",
					start_time = 0.615,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.615,
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
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.total_time = 2.85
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.anim_time_scale = 1.9
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.134425,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.134425,
					external_multiplier = 0.9,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.allowed_chain_actions = {
				{
					sub_action = "default_left_last",
					start_time = 0.665,
					end_time = 1.71,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left_last",
					start_time = 0.665,
					end_time = 1.71,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.71,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.71,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.475,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.475,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.total_time = 2.1
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.4
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.1685,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.1685,
					external_multiplier = 0.9,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.63,
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
					start_time = 0.49,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Pushstab
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
					doubleclick_window = 0,
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
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.total_time = 2.1
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.anim_time_scale = 1.4
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.buff_data = {
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
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.allowed_chain_actions = {
				{
					sub_action = "default_right_2",
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right_2",
					start_time = 0.63,
					end_time = 1.26,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.26,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.26,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.total_time = 2.25
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.anim_time_scale = 1.5
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
					sub_action = "default_right_2",
					start_time = 0.75,
					end_time = 1.5,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right_2",
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
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.additional_critical_strike_chance = nil
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Default States
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_first",
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
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_right_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_right_2.allowed_chain_actions = {
				{
					sub_action = "light_attack_right_second",
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
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left.allowed_chain_actions = {
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
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left_last.allowed_chain_actions = {
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
--Dodge/Block/etc
Weapons.dual_wield_sword_dagger_template_1.dodge_count = 4
Weapons.dual_wield_sword_dagger_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_sword_dagger_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
Weapons.dual_wield_sword_dagger_template_1.block_fatigue_point_multiplier = 0.5
Weapons.dual_wield_sword_dagger_template_1.outer_block_fatigue_point_multiplier  = 2
--------------------------------------------------------------------Dual Swords---------------------------------------------------------------------
--Lights 1/2/3/4
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_dual"
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
					start_time = 0.615,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.615,
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
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_dual"
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
					start_time = 0.615,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.615,
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
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.additional_critical_strike_chance = 0.1
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
					start_time = 0.57,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.57,
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
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.additional_critical_strike_chance = 0.1
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
					start_time = 0.57,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.57,
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
					doubleclick_window = 0,
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
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.additional_critical_strike_chance = nil
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.anim_time_scale = 1.6
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.buff_data = {
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
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.8,
					end_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.8,
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
--Heavies
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.anim_time_scale = 1.5
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
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.anim_time_scale = 1.5
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
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Default States
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.5,
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
					end_time = 1,
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
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
					action = "action_one",
					end_time = 0.25,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
--Dodge/Block/etc
Weapons.dual_wield_swords_template_1.dodge_count = 4
Weapons.dual_wield_swords_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_swords_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
Weapons.dual_wield_swords_template_1.outer_block_fatigue_point_multiplier  = 2
---------------------------------------------------------------------Elf Spear-----------------------------------------------------------------------
--Default States
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
Weapons.two_handed_spears_elf_template_1.actions.action_one.default_last_1.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.default_last_1.allowed_chain_actions = {
				{
					sub_action = "light_attack_stab_1",
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
Weapons.two_handed_spears_elf_template_1.actions.action_one.default_last_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.default_last_2.allowed_chain_actions = {
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
--Lights 1/2/4
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.total_time = 1.33875
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.anim_time_scale = 0.8925
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.45,
					end_time = 0.8925,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.45,
					end_time = 0.8925,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.8925,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.8925,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.357,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.357,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.hit_mass_count = nil
--Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.height_mod = 2
--Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.width_mod = 2
--Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.range_mod = 1.5
--Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.damage_window_start = 0.34
--Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.damage_window_end = 0.4
--Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.use_precision_sweep = true
--Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.dedicated_target_range = 2
--Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.sweep_z_offset = 0.4
--Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.range_mod_add = nil
--Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.baked_sweep = nil
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_1.total_time = 1.33875
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_1.anim_time_scale = 0.8925
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_1.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_1.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.425,
					end_time = 0.8925,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.425,
					end_time = 0.8925,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.8925,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.8925,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.357,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.357,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.total_time = 1.46625
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.anim_time_scale = 0.9775
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_stab_2.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.439875,
					end_time = 0.9775,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.439875,
					end_time = 0.9775,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.9775,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.9775,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.391,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.391,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Lights 3/Pushstab
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.total_time = 1.53
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.02
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_last_2",
					start_time = 0.51,
					end_time = 1.02,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last_2",
					start_time = 0.51,
					end_time = 1.02,
					action = "action_one",
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
					input = "action_one_hold"
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
				}
			}
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
					doubleclick_window = 0,
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
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.total_time = 1.53
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.02
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.51,
					end_time = 1.02,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.51,
					end_time = 1.02,
					action = "action_one",
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
					input = "action_one_hold"
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
				}
			}
--Heavies
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 0.9775
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.33,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.33,
					external_multiplier = 0.5,
					end_time = 0.48,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.56695,
					end_time = 0.9775,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.56695,
					end_time = 0.9775,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.9775,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.9775,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4692,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.56695,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.anim_time_scale = 0.935
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 2,
					end_time = 0.23,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.23,
					external_multiplier = 0.5,
					end_time = 0.38,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.4488,
					end_time = 0.935,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.4488,
					end_time = 0.935,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.935,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.935,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3553,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4488,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.hit_mass_count = nil
--Dodge/Block/etc
Weapons.two_handed_spears_elf_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_spears_elf_template_1.dodge_count = 4
---------------------------------------------------------------------2h Sword-----------------------------------------------------------------------
--Lights 1/2
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
					start_time = 0.68,
					end_time = 1.134,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.68,
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
					start_time = 0.57,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.57,
					action = "action_wield",
					input = "action_wield"
				}
			}
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
					start_time = 0.68,
					end_time = 1.134,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.68,
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
					start_time = 0.57,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.57,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.range_mod = 1.5
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
					start_time = 0.8,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.damage_profile = "heavy_slashing_linesman"
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
					start_time = 0.96,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
--Combo Changes/Default State
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
--Dodge/Block/etc
Weapons.two_handed_swords_wood_elf_template.dodge_count = 4
Weapons.two_handed_swords_wood_elf_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_swords_wood_elf_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
------------------------------------------------------------------------Glaive-----------------------------------------------------------------------
--Lights 1/2/3
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.hit_mass_count = nil
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
					start_time = 0.72,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.damage_profile = "heavy_slashing_smiter_executioner"
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
					start_time = 0.84,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Default States
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
--Dodge/Block/etc
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
Weapons.longbow_template_1.actions.action_one.shoot_charged.speed = 12000
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
--Lights 1/2/3
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
					start_time = 0.59,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.59,
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
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
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
					start_time = 0.61,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.61,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_diag"
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
					start_time = 0.58,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.58,
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
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h"
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_slashing_smiter_1h"
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Default States
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
--Dodge/Block/etc
Weapons.one_hand_axe_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.dodge_count = 5
-------------------------------------------------------------Falchion-----------------------------------------------------------------------------
--Lights 1/2
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_finesse"
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
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_finesse"
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
					doubleclick_window = 0,
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
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.damage_profile = "medium_slashing_tank_1h_finesse"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.hit_stop_anim = nil
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.slide_armour_hit = true
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.damage_profile = "medium_slashing_tank_1h_finesse"
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.hit_stop_anim = nil
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.slide_armour_hit = true
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_hand_falchion_template_1.actions.action_one.heavy_attack_2.hit_mass_count = TANK_HIT_MASS_COUNT
--Default States
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
--Dodge/Block/etc
Weapons.one_hand_falchion_template_1.dodge_count = 5
Weapons.one_hand_falchion_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.one_hand_falchion_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--------------------------------------------------------------1h Skullsplitter--------------------------------------------------------------------
--Lights 1/2
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.total_time = 1.8
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.anim_time_scale = 1.2
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
					start_time = 0.62,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_02",
					start_time = 0.62,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.total_time = 1.8
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.anim_time_scale = 1.2
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
					start_time = 0.62,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_03",
					start_time = 0.62,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Light 3/4
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.total_time = 1.8
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.anim_time_scale = 1.2
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
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_04",
					start_time = 0.6,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.hit_mass_count = nil
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.range_mod = 1.2
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.total_time = 1.8
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.anim_time_scale = 1.2
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.total_time = 1.8
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.2
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
					start_time = 0.6,
					end_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
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
					start_time = 0.54,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.54,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.damage_profile = "heavy_slashing_smiter_polearm"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.impact_sound_event = "axe_1h_hit"
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.damage_profile = "heavy_slashing_smiter_polearm"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.impact_sound_event = "axe_1h_hit"
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Default States
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
--Dodge/Block/etc
Weapons.one_handed_hammer_priest_template.max_fatigue_points = 6
Weapons.one_handed_hammer_priest_template.dodge_count = 5
-------------------------------------------------Rapier-------------------------------------------------------------------------------------------
--Lights 1/2/3
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Pushstab

Weapons.fencing_sword_template_1.actions.action_one.push.fatigue_cost = nil
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.35,
					action = "action_one",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.35,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_three",
					input = "action_three"
				},
				{
					sub_action = "default",
					start_time = 0.35,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.allowed_chain_actions[5].start_time = 0.3
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack.allowed_chain_actions[6].start_time = 0.4
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.allowed_chain_actions[4].start_time = 0.3
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.allowed_chain_actions[5].start_time = 0.3
Weapons.fencing_sword_template_1.actions.action_one.heavy_attack_charged.allowed_chain_actions[6].start_time = 0.4
--Combo Changes/Default State
Weapons.fencing_sword_template_1.actions.action_one.default.allowed_chain_actions[2].end_time = 0.55
Weapons.fencing_sword_template_1.actions.action_one.default_right.allowed_chain_actions[2].end_time = 0.55
Weapons.fencing_sword_template_1.actions.action_one.default_left.allowed_chain_actions[2].end_time = 0.55
--Dodge/Block/etc
Weapons.fencing_sword_template_1.block_fatigue_point_multiplier = 0.5
-------------------------------------------------Axe and Falchion---------------------------------------------------------------------------------
--Lights 1/4
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.total_time = 3
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.anim_time_scale = 2
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
					start_time = 0.8,
					end_time = 1.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.8,
					end_time = 1.8,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.8,
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
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.total_time = 2.4
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.anim_time_scale = 1.6
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
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.72,
					end_time = 1.44,
					action = "action_one",
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
--Lights 2/3/Pushstab
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.total_time = 1.95
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.anim_time_scale = 1.3
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
					start_time = 0.533,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.533,
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
					start_time = 0.455,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.455,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.total_time = 1.95
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.3
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
					start_time = 0.533,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_down_heavy",
					start_time = 0.533,
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
					start_time = 0.455,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.455,
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.total_time = 1.95
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.3
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
					start_time = 0.533,
					end_time = 1.17,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.533,
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
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.455,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.455,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.damage_profile_left = "light_slashing_smiter_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.damage_profile_right = "light_slashing_smiter_dual"
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.damage_profile_left = "light_slashing_linesman_dual_medium"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.damage_profile_right = "light_slashing_linesman_dual_medium"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.hit_stop_anim = nil
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
					start_time = 0.625,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Default States
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
--Dodge/Block/etc
Weapons.dual_wield_axe_falchion_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_axe_falchion_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--------------------------------------------------------------Dual Skullsplitter------------------------------------------------------------------
--Lights 1/2/3
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.damage_profile = "DH_light_attack_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.total_time = 2.1
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.anim_time_scale = 1.4
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
					start_time = 0.63,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.63,
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
					start_time = 0.49,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.damage_profile = "DH_light_attack_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.total_time = 1.875
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.anim_time_scale = 1.25
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
					start_time = 0.52,
					end_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.52,
					end_time = 1.25,
					action = "action_one",
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
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.damage_profile = "DH_light_attack_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.total_time = 1.875
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.25
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
					start_time = 0.49,
					end_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					end_time = 1.25,
					action = "action_one",
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
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.total_time = 1.89
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.26
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
					sub_action = "default_down",
					start_time = 0.48,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.48,
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
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_down.total_time = 2.025
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_down.anim_time_scale = 1.35
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_down.buff_data = {
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
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_down.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.61,
					end_time = 1.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.61,
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
					start_time = 0.47,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.47,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.slide_armour_hit = true
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.damage_profile_left = "DH_heavy_attack_sweep"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.damage_profile_right = "DH_heavy_attack_sweep"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.total_time = 1.65
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.anim_time_scale = 1.1
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.buff_data = {
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
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.55,
					end_time = 1.1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
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
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.slide_armour_hit = true
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.damage_profile_left = "DH_heavy_attack_sweep"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.damage_profile_right = "DH_heavy_attack_sweep"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.total_time = 1.65
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.anim_time_scale = 1.1
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
					start_time = 0.55,
					end_time = 1.1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
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
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
--Default States
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
--Dodge/Block/etc
--Dodge/Block/etc
Weapons.dual_wield_hammers_priest_template.max_fatigue_points = 6
Weapons.dual_wield_hammers_priest_template.dodge_count = 4
Weapons.dual_wield_hammers_priest_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_hammers_priest_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
-----------------------------------------------------Billhook-----------------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.total_time = 1.49
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
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
				},
				{
					sub_action = "default",
					start_time = 0.42,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.total_time = 1.49
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.anim_time_scale = 0.85
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_stab",
					start_time = 0.52,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_stab",
					start_time = 0.52,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.43,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.43,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.43,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.total_time = 1.49
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
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
				},
				{
					sub_action = "default",
					start_time = 0.42,
					action = "action_three",
					input = "action_three"
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
					doubleclick_window = 0,
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
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.total_time = 1.49
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.1
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.	allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.67,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.67,
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
				},
				{
					sub_action = "default",
					start_time = 0.56,
					action = "action_three",
					input = "action_three"
				}
			}
--Dodge/Block/etc
Weapons.two_handed_billhooks_template.dodge_count = 4
Weapons.two_handed_billhooks_template.block_angle = 180
Weapons.two_handed_billhooks_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
-------------------------------------------------------------2H Sword-------------------------------------------------------------------------------
--All code from Kruber 2H Sword affects the entirety of Saltzpyre 2H Sword
--------------------------------------------------------------Flail-----------------------------------------------------------------------------------
--Lights 1/2/Pushstab
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.damage_profile = "medium_blunt_tank"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_left.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_right.damage_profile = "medium_blunt_tank"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_right.anim_time_scale = 1
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
--Lights 3/4/Pushstab
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.anim_time_scale = 1
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.anim_time_scale = 1
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.hit_mass_count = nil
--Heavies
Weapons.one_handed_flail_template_1.actions.action_one.default_charge.allowed_chain_actions[1].start_time = 0
Weapons.one_handed_flail_template_1.actions.action_one.default_left.allowed_chain_actions[4].start_time = 0.5
--Dodge/Block/etc
Weapons.one_handed_flail_template_1.dodge_count = 3
Weapons.one_handed_flail_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.one_handed_flail_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--------------------------------------------------------------2h Reckoner------------------------------------------------------------------------
--Light 1/2
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
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_03",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.hit_stop_anim = nil
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
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.hit_stop_anim = nil
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
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_three",
					input = "action_three"
				}
			}
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.hit_stop_anim = nil
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.hit_mass_count = nil
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
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_three",
					input = "action_three"
				}
			}
--Combo Changes/Default State
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
--Dodge/Block/etc
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
--------------------------------------------------------------Crowbill----------------------------------------------------------------------------
--Lights 1/2/3/4
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.total_time = 2.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.anim_time_scale = 1.4
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
					start_time = 0.7,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.7,
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
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.total_time = 2.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.anim_time_scale = 1.4
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
					start_time = 0.602,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.602,
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
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.total_time = 2.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.anim_time_scale = 1.4
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
					start_time = 0.644,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.644,
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
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.additional_critical_strike_chance = 0.1
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
					start_time = 0.624,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.624,
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
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.total_time = 1.65
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.anim_time_scale = 1.1
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
					sub_action = "default_left",
					start_time = 0.495,
					end_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.495,
					end_time = 1.1,
					action = "action_one",
					input = "action_one"
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
					input = "action_one"
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
--Heavies
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.range_mod = 1.2
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.total_time = 2.4
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.anim_time_scale = 1.6
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
					sub_action = "default_left",
					start_time = 0.8,
					end_time = 1.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.8,
					end_time = 1.6,
					action = "action_one",
					release_required = "action_one_hold",
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
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.range_mod = 1.2
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.total_time = 1.65
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.anim_time_scale = 1.1
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
					sub_action = "default_last",
					start_time = 0.55,
					end_time = 1.1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_last",
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
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_right_up.damage_profile = "medium_slashing_smiter_1h"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_right_up.range_mod = 1.2
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_right_up.total_time = 1.5
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_right_up.anim_time_scale = 1
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_right_up.buff_data = {
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
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_right_up.allowed_chain_actions = {
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
--Default States
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
					sub_action = "heavy_attack_right_up",
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
					sub_action = "heavy_attack_right_up",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
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
					sub_action = "heavy_attack_right_up",
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
					sub_action = "heavy_attack_right_up",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
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
--Lights 1/2/4
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_left.total_time = 2.1
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
					start_time = 0.462,
					end_time = 1.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.462,
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
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.total_time = 2.4
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
					start_time = 0.608,
					end_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.608,
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
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_last.total_time = 2.4
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
					start_time = 0.688,
					end_time = 1.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.688,
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
--Light 3/Pushstab
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.damage_profile = "medium_fencer_stab"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.total_time = 1.95
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.anim_time_scale = 1.3
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
					start_time = 0.39,
					end_time = 1.3,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.39,
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
					start_time = 0.39,
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
Weapons.one_handed_daggers_template_1.actions.action_one.push.fatigue_cost = nil
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
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_last",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.damage_profile = "medium_fencer_stab"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.total_time = 2.25
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.anim_time_scale = 1.5
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
					sub_action = "default_left",
					start_time = 0.45,
					end_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.45,
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
					start_time = 0.45,
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
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_fencer_stab_charged"
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.total_time = 2.175
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
--Default States
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
					end_time = 0.55,
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
					start_time = 0.7,
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
					end_time = 0.55,
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
					start_time = 0.7,
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
Weapons.one_handed_daggers_template_1.actions.action_one.default_left.anim_event = "attack_swing_charge_left"
Weapons.one_handed_daggers_template_1.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_stab",
					start_time = 0,
					end_time = 0.25,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "light_attack_stab",
					start_time = 0.35,
					end_time = 0.55,
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
					start_time = 0.7,
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
					end_time = 0.55,
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
					start_time = 0.7,
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
--Dodge/Block/etc
Weapons.one_handed_daggers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.one_handed_daggers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
Weapons.one_handed_daggers_template_1.block_angle = 90
----------------------------------------------------------Flaming Sword----------------------------------------------------------------------------
--Lights 1/2/3
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_dual"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.total_time = 2.55
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.7
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.1,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.1,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.68,
					end_time = 1.7,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.68,
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
					start_time = 0.595,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.595,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_dual"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.total_time = 2.55
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.7
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.1,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.1,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.68,
					end_time = 1.7,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.68,
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
					start_time = 0.595,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.595,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_dual"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.total_time = 2.55
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.7
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.1,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.1,
					external_multiplier = 0.9,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.765,
					end_time = 1.7,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.765,
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
					start_time = 0.595,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.595,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT
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
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_stab",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.damage_profile = "medium_fencer_stab"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.total_time = 1.875
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.anim_time_scale = 1.25
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
					sub_action = "default_right_heavy",
					start_time = 0.62,
					end_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.62,
					end_time = 1.25,
					action = "action_one",
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
					start_time = 0.625,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.damage_profile = "priest_hammer_blunt_smiter"
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
					sub_action = "default_right",
					start_time = 0.7,
					end_time = 1.4,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
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
					start_time = 0.7,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Default States
Weapons.flaming_sword_template_1.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "light_attack_bopp",
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
--Dodge/Block/etc
Weapons.flaming_sword_template_1.dodge_count = 4
Weapons.flaming_sword_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.flaming_sword_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
----------------------------------------------------------Flaming Flail------------------------------------------------------------------------------
--Lights 1/2
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.damage_profile = "medium_blunt_tank"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.buff_data = {
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.allowed_chain_actions = {
					{
						sub_action = "default_left",
						start_time = 0.65,
						end_time = 1,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default_left",
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.damage_profile = "medium_blunt_tank"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.buff_data = {
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.allowed_chain_actions = {
					{
						sub_action = "default_right",
						start_time = 0.6,
						end_time = 1,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default_right",
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
--Lights 3/4/Pushstab
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.buff_data = {
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.allowed_chain_actions = {
					{
						sub_action = "default_last",
						start_time = 0.62,
						end_time = 1,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default_last",
						start_time = 0.62,
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_down.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_down.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_down.buff_data = {
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_down.allowed_chain_actions = {
					{
						sub_action = "default",
						start_time = 0.65,
						end_time = 1,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default",
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
Weapons.one_handed_flails_flaming_template.actions.action_one.push.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_flails_flaming_template.actions.action_one.push.allowed_chain_actions = {
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
						doubleclick_window = 0,
						input = "action_one_hold"
					},
					{
						sub_action = "light_attack_bopp",
						start_time = 0.25,
						action = "action_one",
						doubleclick_window = 0,
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.buff_data = {
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
					{
						sub_action = "default_right",
						start_time = 0.6,
						end_time = 1,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default_right",
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.hit_mass_count = nil
--Heavies
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.damage_profile = "heavy_slashing_smiter"
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.impact_sound_event = "slashing_hit"
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.impact_explosion_template = nil
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.total_time = 2.25
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.anim_time_scale = 1.5
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.buff_data = {
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
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.allowed_chain_actions = {
					{
						sub_action = "default_left",
						start_time = 0.9,
						end_time = 1.5,
						action = "action_one",
						release_required = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default_left",
						start_time = 0.9,
						end_time = 1.5,
						action = "action_one",
						release_required = "action_one",
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
						start_time = 0.9,
						action = "action_wield",
						input = "action_wield"
					}
				}
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack_left.damage_profile = "heavy_slashing_axe_linesman"
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack_left.impact_sound_event = "axe_2h_hit"
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack_left.slide_armour_hit = true
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack_left.total_time = 2.25
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack_left.anim_time_scale = 1.5
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack_left.buff_data = {
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
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack_left.allowed_chain_actions = {
					{
						sub_action = "default_last",
						start_time = 0.9,
						end_time = 1.5,
						action = "action_one",
						release_required = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default_last",
						start_time = 0.9,
						end_time = 1.5,
						action = "action_one",
						release_required = "action_one",
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
						start_time = 0.9,
						action = "action_wield",
						input = "action_wield"
					}
				}
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack_left.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
--Default States
Weapons.one_handed_flails_flaming_template.actions.action_one.default.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_flails_flaming_template.actions.action_one.default.allowed_chain_actions = {
					{
						sub_action = "light_attack_left",
						start_time = 0,
						end_time = 0.25,
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
						start_time = 0.6,
						send_buffer = true,
						action = "action_one",
						auto_chain = true
					}
				}
Weapons.one_handed_flails_flaming_template.actions.action_one.default_charge.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_flails_flaming_template.actions.action_one.default_charge.allowed_chain_actions = {
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
Weapons.one_handed_flails_flaming_template.actions.action_one.default_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_flails_flaming_template.actions.action_one.default_right.allowed_chain_actions = {
					{
						sub_action = "light_attack_last",
						start_time = 0,
						end_time = 0.25,
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
						start_time = 0.6,
						send_buffer = true,
						action = "action_one",
						auto_chain = true
					}
				}
Weapons.one_handed_flails_flaming_template.actions.action_one.default_charge_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.one_handed_flails_flaming_template.actions.action_one.default_charge_2.allowed_chain_actions = {
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
						sub_action = "default_charge_2",
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
Weapons.one_handed_flails_flaming_template.actions.action_one.default_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_flails_flaming_template.actions.action_one.default_left.allowed_chain_actions = {
					{
						sub_action = "light_attack_right",
						start_time = 0,
						end_time = 0.25,
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
						start_time = 0.6,
						send_buffer = true,
						action = "action_one",
						auto_chain = true
					}
				}
Weapons.one_handed_flails_flaming_template.actions.action_one.default_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.one_handed_flails_flaming_template.actions.action_one.default_last.allowed_chain_actions = {
					{
						sub_action = "light_attack_down",
						start_time = 0,
						end_time = 0.25,
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
						start_time = 0.6,
						send_buffer = true,
						action = "action_one",
						auto_chain = true
						
					}
				}
--Dodge/Block/etc
Weapons.one_handed_flails_flaming_template.dodge_count = 3
Weapons.one_handed_flails_flaming_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.one_handed_flails_flaming_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------------------2h Mace------------------------------------------------------------------------------
--Lights 1/2
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.damage_profile = "medium_blunt_smiter_2h_hammer"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.total_time = 1.5525
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.035
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
					start_time = 0.81,
					end_time = 1.242,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.81,
					end_time = 1.242,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.242,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.242,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.67,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.67,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.damage_profile = "medium_blunt_smiter_2h_hammer"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.additional_critical_strike_chance = 0.1
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.total_time = 1.575
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.anim_time_scale = 1.05
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
					start_time = 0.76,
					end_time = 1.26,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.76,
					end_time = 1.26,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.242,
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
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.hit_mass_count = nil
--Lights 3/Pushstab
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.damage_profile = "medium_blunt_tank"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.total_time = 1.65
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.1
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
					start_time = 0.66,
					end_time = 1.32,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.66,
					end_time = 1.32,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.32,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.32,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.61,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.61,
					action = "action_wield",
					input = "action_wield"
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
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
					action = "action_one",
					doubleclick_window = 0,
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
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.total_time = 1.62
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.08
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
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.296,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					end_time = 1.296,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.296,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.296,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.59,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.59,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.slide_armour_hit = true
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.hit_stop_anim = nil
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.total_time = 1.95
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.anim_time_scale = 1.3
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
					sub_action = "default_left",
					start_time = 0.78,
					end_time = 1.3,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
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
					start_time = 0.78,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.slide_armour_hit = true
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.hit_stop_anim = nil
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.total_time = 2.55
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1.7
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
					sub_action = "default_right",
					start_time = 1.02,
					end_time = 1.7,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 1.02,
					end_time = 1.7,
					action = "action_one",
					release_required = "action_one_hold",
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
					start_time = 0.85,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 1.02,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.damage_profile = "priest_hammer_blunt_smiter"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.hit_stop_anim = nil
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.total_time = 1.395
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.anim_time_scale = 0.93
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
					sub_action = "default",
					start_time = 0.56,
					end_time = 0.93,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.56,
					end_time = 0.93,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.93,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.93,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.465,
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
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_left.anim_event = "attack_swing_charge_right_pose"
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
--Dodge/Block/etc
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
