local mod = get_mod("ef")

function mod.on_all_mods_loaded()
    for backend_id, modified_item_template in pairs(Managers.backend:get_interface("items")._modified_templates) do
        table.merge(modified_item_template, Weapons[modified_item_template.name])
    end
end

mod:echo("Reiklanders Never Cry v1.32")
--////////////////////////////////////////////////////////////Kruber//////////////////////////////////////////////////////////////////////////////
---------------------------------------------------------1h Mace---------------------------------------------------------------------------
--Lights 1/2/Pushstab
DamageProfileTemplates.light_blunt_tank.cleave_distribution.attack = 0.3 --this is 8.95 dmg cleave
DamageProfileTemplates.light_blunt_tank.cleave_distribution.impact = 0.4 --this is 11.94 stagger cleave
DamageProfileTemplates.light_blunt_tank_diag.targets[1].boost_curve_coefficient_headshot = 2
DamageProfileTemplates.light_blunt_tank_diag.targets[2].boost_curve_coefficient_headshot = 2
DamageProfileTemplates.light_blunt_tank_diag.armor_modifier.attack = { 1, 0.3, 1, 1, 1, 0.3 } --{ 1, 0, 1, 1, 0 }
DamageProfileTemplates.light_blunt_tank_diag.critical_strike.attack_armor_power_modifer = {	1, 0.5, 1, 1, 0.5 } --{ 1, 0.5, 1, 1, 0.25 }
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.05
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.05
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.55
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.allowed_chain_actions[2].start_time = 0.55
Weapons.one_handed_hammer_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.05
--Light 3/4
DamageProfileTemplates.light_blunt_smiter.default_target.boost_curve_coefficient_headshot = 2
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.hit_mass_count = nil
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.1 --template_1 is Kruber's 1h mace
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.53
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.allowed_chain_actions[2].start_time = 0.53
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.allowed_chain_actions[5].start_time = 0.53
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.range_mod = 1.2
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.anim_time_scale = 0.95 --template_1 is Kruber's 1h mace
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.allowed_chain_actions[1].start_time = 0.55
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.allowed_chain_actions[2].start_time = 0.55
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.allowed_chain_actions[5].start_time = 0.46
--Heavies
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.damage_profile = "heavy_slashing_smiter"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.range_mod = 1.2 --0
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.damage_profile = "heavy_slashing_smiter"
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.range_mod = 1.2 --0
--Dodge/Block/etc
Weapons.one_handed_hammer_template_1.max_fatigue_points = 8
Weapons.one_handed_hammer_template_1.dodge_count = 5
--------------------------------------------Kruber 1h Sword (Figure out what to do with Heavy profile)--------------------------------------------
--Lights/Pushstab
--DamageProfileTemplates.light_slashing_linesman_finesse.targets[1].boost_curve_coefficient_headshot = 2
--DamageProfileTemplates.light_slashing_linesman_finesse.targets[2].boost_curve_coefficient_headshot = 2
--DamageProfileTemplates.light_slashing_linesman_finesse.targets.boost_curve_coefficient_headshot = 2
Weapons.one_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_finesse"
--Heavies
--DamageProfileTemplates.medium_slashing_tank_1h_finesse.cleave_distribution.attack = 
Weapons.one_handed_swords_template_1.actions.action_one.default_left.allowed_chain_actions[2].start_time = 0.55
--Dodge/Block/etc
Weapons.one_handed_swords_template_1.dodge_count = 5
---------------------------------------------------------------Executioner Sword----------------------------------------------------------------------------
--Lights/Pushstab
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.07
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.8,
					action = "action_one",
					end_time = 1.28,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.28,
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
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.total_time = 1.93
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
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
					external_multiplier = 0.8,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.2
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left_diagonal",
					start_time = 0.9,
					action = "action_one",
					end_time = 1.44,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.44,
					action = "action_one",
					input = "action_one"
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
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.total_time = 2.16
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
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
					external_multiplier = 0.8,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.67,
					action = "action_one",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
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
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.range_mod = 1.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
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
					external_multiplier = 0.8,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.3,
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
					start_time = 0.3,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.4
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.94,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 1.68,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.68,
					action = "action_one",
					input = "action_one"
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
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.total_time = 2.52
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.range_mod = 1.5
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
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
					external_multiplier = 0.8,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
--Heavies
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.additional_critical_strike_chance = nil
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[4].start_time = 0.58
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[5].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.2,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.15,
					external_multiplier = 1.5,
					end_time = 0.45,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.45,
					external_multiplier = 0.5,
					end_time = 0.65,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.additional_critical_strike_chance = nil
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[4].start_time = 0.58
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[5].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.2,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.15,
					external_multiplier = 1.5,
					end_time = 0.45,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.45,
					external_multiplier = 0.5,
					end_time = 0.65,
					buff_name = "planted_fast_decrease_movement"
				}
			}
--Combo Changes/Default State
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_left_diagonal.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_left_diagonal_other_left.allowed_chain_actions[2].start_time = 0.68
--Dodge/Block/etc
Weapons.two_handed_swords_executioner_template_1.dodge_count = 3
Weapons.two_handed_swords_executioner_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_swords_executioner_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
---------------------------------------------------------Halberd----------------------------------------------------------------------------------
--Light/Pushstab
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.64,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.4,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.64,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.4,
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
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.allowed_chain_actions[4].start_time = 0.46
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_stab.allowed_chain_actions[5].start_time = 0.46
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.allowed_chain_actions[4].start_time = 0.425
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_last.allowed_chain_actions[5].start_time = 0.425
Weapons.two_handed_halberds_template_1.actions.action_one.push.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_down",
					start_time = 0.3,
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
					start_time = 0.3,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 1.25,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.75,
					end_time = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 1,
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 1,
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
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
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
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
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
--Dodge/Block/etc
Weapons.two_handed_halberds_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_halberds_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------------------2h Sword---------------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.4
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.84
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.allowed_chain_actions[3].start_time = 0.7
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.allowed_chain_actions[5].start_time = 0.7
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.4
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.84
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.allowed_chain_actions[3].start_time = 0.7
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.allowed_chain_actions[5].start_time = 0.7
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].end_time = 1.3
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.allowed_chain_actions[2].start_time = 1.3
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[1].start_time = 0.3
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[2].start_time = 0.3
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.1
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.72
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[2].start_time = 0.72
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[3].start_time = 0.72
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[4].start_time = 0.72
--Heavies
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.6
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[5].start_time = 0.6
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.6
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.6
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[5].start_time = 0.6
--Dodge/Block/etc
Weapons.two_handed_swords_template_1.dodge_count = 4
Weapons.two_handed_swords_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_swords_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
----------------------------------------------------------------Bret Longsword------------------------------------------------------------------------------
--Lights 1/2
Weapons.bastard_sword_template.actions.action_one.light_attack_left.damage_profile = "medium_slashing_linesman"
Weapons.bastard_sword_template.actions.action_one.light_attack_left.anim_time_scale = 1.04
Weapons.bastard_sword_template.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.light_attack_left.allowed_chain_actions[3].start_time = 0.57
Weapons.bastard_sword_template.actions.action_one.light_attack_left.allowed_chain_actions[5].start_time = 0.57
Weapons.bastard_sword_template.actions.action_one.light_attack_right.anim_time_scale = 1.125
Weapons.bastard_sword_template.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.735
Weapons.bastard_sword_template.actions.action_one.light_attack_right.allowed_chain_actions[3].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.light_attack_right.allowed_chain_actions[5].start_time = 0.62
--Light 3/Pushstab
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.damage_profile = "medium_slashing_smiter_2h"
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.allowed_chain_actions[1].start_time = 0.775
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.allowed_chain_actions[3].start_time = 0.67
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.allowed_chain_actions[5].start_time = 0.67
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.91
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.allowed_chain_actions[3].start_time = 0.79
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.allowed_chain_actions[4].start_time = 0.79
Weapons.bastard_sword_template.actions.action_one.push.allowed_chain_actions[1].start_time = 0.3
Weapons.bastard_sword_template.actions.action_one.push.allowed_chain_actions[2].start_time = 0.3
Weapons.bastard_sword_template.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.bastard_sword_template.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.bastard_sword_template.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
--Heavies
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.allowed_chain_actions[2].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.allowed_chain_actions[4].start_time = 0.52
Weapons.bastard_sword_template.actions.action_one.heavy_attack_left.allowed_chain_actions[5].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.allowed_chain_actions[4].start_time = 0.52
Weapons.bastard_sword_template.actions.action_one.heavy_attack_right.allowed_chain_actions[5].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.allowed_chain_actions[1].start_time = 0.60
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.allowed_chain_actions[2].start_time = 0.60
Weapons.bastard_sword_template.actions.action_one.heavy_attack_down.allowed_chain_actions[5].start_time = 0.60
--Dodge/Block/etc
Weapons.bastard_sword_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.bastard_sword_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
----------------------------------------------------------Mace and Sword--------------------------------------------------------------------------
--Lights 1/2
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.damage_profile = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.anim_time_scale = 1.15
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.allowed_chain_actions[1].start_time = 0.37
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.allowed_chain_actions[4].start_time = 0.27
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.damage_profile = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.anim_time_scale = 1.05
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.49
--Lights 3/4
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.anim_time_scale = 1.075
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.allowed_chain_actions[1].start_time = 0.43
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.allowed_chain_actions[4].start_time = 0.31
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.anim_time_scale = 1.05
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.42
--Pushstab
Weapons.dual_wield_hammer_sword_template.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.damage_profile_right = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT
--Heavies
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.hit_mass_count = nil
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.allowed_chain_actions[1].start_time = 0.7
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.allowed_chain_actions[2].start_time = 0.7
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.allowed_chain_actions[4].start_time = 0.6
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.allowed_chain_actions[5].start_time = 0.7
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.allowed_chain_actions[1].start_time = 0.7
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.allowed_chain_actions[2].start_time = 0.7
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.allowed_chain_actions[4].start_time = 0.6
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.allowed_chain_actions[5].start_time = 0.7
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.hit_mass_count = nil
--Dodge/Block/etc
Weapons.dual_wield_hammer_sword_template.dodge_count = 4
--------------------------------------------------------------Tuskgor Spear-----------------------------------------------------------------------
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.47,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.47,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
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
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.anim_time_scale = 1
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.53,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.53,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
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
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_2.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.37,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 0.88,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.37,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 0.88,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.88,
					action = "action_one",
					input = "action_one"
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
--Lights 3/Pushstab
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.anim_time_scale = 1.2
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_last_2",
					start_time = 0.67,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.325,
					input = "action_one"
				},
				{
					sub_action = "default_last_2",
					start_time = 0.67,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.325,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.325,
					action = "action_one",
					input = "action_one"
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
Weapons.two_handed_heavy_spears_template.actions.action_one.push.allowed_chain_actions[1].start_time = 0.3
Weapons.two_handed_heavy_spears_template.actions.action_one.push.allowed_chain_actions[2].start_time = 0.3
Weapons.two_handed_heavy_spears_template.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.two_handed_heavy_spears_template.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.two_handed_heavy_spears_template.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_linesman_spear"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 0.88,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 0.88,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.88,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.37,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.37,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_last_1",
					start_time = 0.48,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default_last_1",
					start_time = 0.48,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.395,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.395,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.423,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.423,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Combo Changes
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default_last_1"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.allowed_chain_actions[2].sub_action = "default_last_1"
Weapons.two_handed_heavy_spears_template.actions.action_one.default_left.allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.45,
					action = "action_one",
					force_release_input = "action_one_hold",
					input = "action_one_release"
				},
				{
					sub_action = "default",
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
Weapons.two_handed_heavy_spears_template.actions.action_one.default_left.anim_event = "attack_swing_charge_stab"
--Dodge/Block/etc
Weapons.two_handed_heavy_spears_template.max_fatigue_points = 6
Weapons.two_handed_heavy_spears_template.dodge_count = 4
Weapons.two_handed_heavy_spears_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_heavy_spears_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
Weapons.two_handed_heavy_spears_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
-----------------------------------------------------------2h Hammer------------------------------------------------------------------------------
--Lights
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.allowed_chain_actions[3].start_time = 0.585
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.allowed_chain_actions[6].start_time = 0.585
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.allowed_chain_actions[3].start_time = 0.585
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.allowed_chain_actions[6].start_time = 0.585
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left_up.allowed_chain_actions[1].start_time = 0.63
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left_up.allowed_chain_actions[3].start_time = 0.585
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left_up.allowed_chain_actions[6].start_time = 0.585
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left_up.additional_critical_strike_chance = 0.10
--Pushstab
Weapons.two_handed_hammers_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.two_handed_hammers_template_1.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.two_handed_hammers_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.allowed_chain_actions[3].start_time = 0.54
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.allowed_chain_actions[6].start_time = 0.54
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.damage_profile = "medium_blunt_tank"
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.hit_mass_count = TANK_HIT_MASS_COUNT
--Heavies
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.5
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.5
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_blunt_tank_upper_1h"
DamageProfileTemplates.medium_blunt_tank_upper_1h.shield_break = true
--Dodge/Block/etc
Weapons.two_handed_hammers_template_1.dodge_count = 3
Weapons.two_handed_hammers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_hammers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-----------------------------------------------Kruber Ranged---------------------------------------------------------
--Dodge/Ammo/Reload/Etc
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
Weapons.repeating_handgun_template_1.default_spread_template = "brace_of_pistols"
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
Weapons.repeating_handgun_template_1.actions.action_one.bullet_spray.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					buff_name = "planted_charging_decrease_movement"
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
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.repeating_handgun_template_1.actions.action_two.spray_loop.spread_template_override = "pistol_special"
Weapons.repeating_handgun_template_1.actions.action_two.spray_loop.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.repeating_handgun_template_1.actions.action_one.default.allowed_chain_actions[1].start_time = 0.5
Weapons.repeating_handgun_template_1.actions.action_one.default.allowed_chain_actions[2].start_time = 0.5
Weapons.repeating_handgun_template_1.actions.action_one.default.allowed_chain_actions[3].start_time = 0.5
Weapons.repeating_handgun_template_1.actions.action_one.default.allowed_chain_actions[4].start_time = 0.5
Weapons.repeating_handgun_template_1.actions.action_one.bullet_spray.allowed_chain_actions[1].start_time = 0.25
Weapons.repeating_handgun_template_1.actions.action_one.bullet_spray.allowed_chain_actions[2].start_time = 0.25
Weapons.repeating_handgun_template_1.actions.action_one.bullet_spray.allowed_chain_actions[3].start_time = 0.8
Weapons.repeating_handgun_template_1.actions.action_two.default.allowed_chain_actions[2].start_time = 0 --Consider using anim scale + start time
Weapons.repeating_handgun_template_1.actions.action_two.default.allowed_chain_actions[3].start_time = 0
Weapons.repeating_handgun_template_1.actions.action_two.default.allowed_chain_actions[4].start_time = 0
Weapons.repeating_handgun_template_1.actions.action_two.default.allowed_chain_actions[5].start_time = 0
Weapons.repeating_handgun_template_1.ammo_data.reload_time = 1.5
Weapons.repeating_handgun_template_1.ammo_data.max_ammo = 40
Weapons.repeating_handgun_template_1.dodge_count = 4
Weapons.repeating_handgun_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.repeating_handgun_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--Dodge/Ammo/Reload/Etc
Weapons.longbow_empire_template.actions.action_one.default.minimum_hold_time = nil
Weapons.longbow_empire_template.actions.action_one.default.total_time = 0.7
Weapons.longbow_empire_template.actions.action_one.default.override_reload_time = nil
Weapons.longbow_empire_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold",
					end_time = math.huge
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one",
					end_time = math.huge
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_empire_template.actions.action_one.shoot_charged.impact_data.damage_profile = "arrow_sniper"
Weapons.longbow_empire_template.actions.action_one.shoot_charged.play_reload_animation = true
Weapons.longbow_empire_template.actions.action_one.shoot_charged.override_reload_time = nil
Weapons.longbow_empire_template.actions.action_one.shoot_charged.reload_event_delay_time = nil
Weapons.longbow_empire_template.actions.action_one.shoot_charged.minimum_hold_time = 0.4
Weapons.longbow_empire_template.actions.action_one.shoot_charged.total_time = 0.48
Weapons.longbow_empire_template.actions.action_one.shoot_charged.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					send_buffer = false,
					input = "action_two_hold",
					end_time = math.huge
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_empire_template.actions.action_one.shoot_charged.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.25,
					buff_name = "planted_charging_decrease_movement"
				}
			}
Weapons.longbow_empire_template.actions.action_two.default.anim_time_scale = 1.25
Weapons.longbow_empire_template.actions.action_two.default.default_zoom = "zoom_in"
Weapons.longbow_empire_template.actions.action_two.default.aim_zoom_delay = 0.01
Weapons.longbow_empire_template.actions.action_two.default.spread_template_override = nil
Weapons.longbow_empire_template.actions.action_two.default.heavy_aim_flow_event = nil
Weapons.longbow_empire_template.actions.action_two.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield",
					end_time = math.huge
				},
				{
					sub_action = "shoot_charged",
					start_time = 0.62,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_empire_template.default_spread_template = "longbow"
Weapons.longbow_empire_template.actions.action_one.default.speed = 9000
Weapons.longbow_empire_template.actions.action_one.shoot_charged.speed = 12000
Weapons.longbow_empire_template.ammo_data.reload_time = 0
Weapons.longbow_empire_template.dodge_count = 2
Weapons.longbow_empire_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.longbow_empire_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--Dodge/Ammo/Reload/Etc
Weapons.handgun_template_1.dodge_count = 2
Weapons.handgun_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.handgun_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--Dodge/Ammo/Reload/Etc
Weapons.blunderbuss_template_1.ammo_data.reload_time = 1
Weapons.blunderbuss_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.blunderbuss_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--/////////////////////////////////////////////////Bardin/////////////////////////////////////////////////////////////////////////////////////////
--------------------------------------------------1h Hammer---------------------------------------------------------------------------------------
--Lights 1/2/Pushstab
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.anim_time_scale = 1.05
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.anim_time_scale = 1.05
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.55
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.allowed_chain_actions[2].start_time = 0.55
Weapons.one_handed_hammer_template_2.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.anim_time_scale = 1.05
--Light 3/4
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.hit_mass_count = nil
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.anim_time_scale = 1.1
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.53
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.allowed_chain_actions[2].start_time = 0.53
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.allowed_chain_actions[5].start_time = 0.53
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.range_mod = 1.2
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.anim_time_scale = 0.95
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.allowed_chain_actions[1].start_time = 0.55
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.allowed_chain_actions[2].start_time = 0.55
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.allowed_chain_actions[5].start_time = 0.46
--Heavies
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.damage_profile = "heavy_slashing_smiter"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.range_mod = 1.2 --0
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.damage_profile = "heavy_slashing_smiter"
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_right.range_mod = 1.2 --0
--Dodge/Block/etc
Weapons.one_handed_hammer_template_2.max_fatigue_points = 8
Weapons.one_handed_hammer_template_2.dodge_count = 5
-------------------------------------------------2h Hammer----------------------------------------------------------------------------------------
--All code from Kruber 2h Hammer affects the entirety of Bardin 2h Hammer
-------------------------------------------------2h Greataxe--------------------------------------------------------------------------------------
--Dodge/Block/etc
Weapons.two_handed_axes_template_1.dodge_count = 3
Weapons.two_handed_axes_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_axes_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------2h Coghammer-------------------------------------------------------------------------------------
--Dodge/Block/etc
Weapons.two_handed_cog_hammers_template_1.dodge_count = 3
Weapons.two_handed_cog_hammers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_cog_hammers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------2h Pickaxe-------------------------------------------------------------------------------------
--Review Attack Range differences later
--Lights/Pushstab
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.damage_profile = "medium_slashing_axe_linesman"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.05
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.63,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.63,
					action = "action_one",
					release_required = "action_one_hold",
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
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.05
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.63,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.63,
					action = "action_one",
					release_required = "action_one_hold",
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
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_axe_linesman"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.05
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.63,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.63,
					action = "action_one",
					release_required = "action_two_hold",
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
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0.2,
					external_multiplier = 0.5,
					end_time = 1,
					buff_name = "planted_charging_decrease_movement"
				}
			}
--Heavies
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 0.95
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.475
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[2].start_time = 0.475
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[3].start_time = 0.475
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[4].start_time = 0.475
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[5].start_time = 0.57
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.ignore_armour_hit = true
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.anim_time_scale = 0.95
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.allowed_chain_actions[1].start_time = 0.475
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.allowed_chain_actions[2].start_time = 0.475
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.allowed_chain_actions[3].start_time = 0.475
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.allowed_chain_actions[4].start_time = 0.475
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.allowed_chain_actions[5].start_time = 0.57
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1.05
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.53
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.53
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[3].start_time = 0.53
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[4].start_time = 0.53
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[5].start_time = 0.63
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.ignore_armour_hit = true
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.anim_time_scale = 1.05
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.allowed_chain_actions[1].start_time = 0.53
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.allowed_chain_actions[2].start_time = 0.53
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.allowed_chain_actions[3].start_time = 0.53
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.allowed_chain_actions[4].start_time = 0.53
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.allowed_chain_actions[5].start_time = 0.63
--Combo Changes/Default States
Weapons.two_handed_picks_template_1.actions.action_one.default.allowed_chain_actions[1].end_time = 0.3
Weapons.two_handed_picks_template_1.actions.action_one.default.allowed_chain_actions[2].end_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.default.allowed_chain_actions[3].start_time = 0.75
Weapons.two_handed_picks_template_1.actions.action_one.default_left.allowed_chain_actions[1].end_time = 0.3
Weapons.two_handed_picks_template_1.actions.action_one.default_left.allowed_chain_actions[2].end_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.default_left.allowed_chain_actions[3].start_time = 0.75
Weapons.two_handed_picks_template_1.actions.action_one.default_right.allowed_chain_actions[1].end_time = 0.3
Weapons.two_handed_picks_template_1.actions.action_one.default_right.allowed_chain_actions[2].end_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.default_right.allowed_chain_actions[3].start_time = 0.75
--Dodge/Block/etc
Weapons.two_handed_picks_template_1.dodge_count = 3
Weapons.two_handed_picks_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_picks_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------1h Axe-------------------------------------------------------------------------------------------
--Lights/Pushstab
DamageProfileTemplates.light_slashing_smiter_diag.default_target.boost_curve_coefficient_headshot = 2
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.51
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.allowed_chain_actions[2].start_time = 0.51
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.one_hand_axe_template_2.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_diag"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.48
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions[2].start_time = 0.48
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
--Heavies
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.damage_profile = "priest_hammer_blunt_smiter"
Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.damage_profile = "priest_hammer_blunt_smiter"
--Combo Changes
Weapons.one_hand_axe_template_2.actions.action_one.default.allowed_chain_actions[2].start_time = 0.5
Weapons.one_hand_axe_template_2.actions.action_one.default.allowed_chain_actions[6].start_time = 0.5
Weapons.one_hand_axe_template_2.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.5
Weapons.one_hand_axe_template_2.actions.action_one.default_right.allowed_chain_actions[6].start_time = 0.5
Weapons.one_hand_axe_template_2.actions.action_one.default_left.allowed_chain_actions[2].start_time = 0.5
Weapons.one_hand_axe_template_2.actions.action_one.default_left.allowed_chain_actions[6].start_time = 0.5
--Dodge/Block/etc
Weapons.one_hand_axe_template_2.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_2.dodge_count = 5
-------------------------------------------------------Dual Axes----------------------------------------------------------------------------------
--Pushstab
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.anim_time_scale = 1
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.anim_time_scale = 1.2
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.allowed_chain_actions[1].start_time = 0.48
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.allowed_chain_actions[4].start_time = 0.36
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.anim_time_scale = 1
Weapons.dual_wield_axes_template_1.actions.action_one.push.fatigue_cost = "action_stun_push"
Weapons.dual_wield_axes_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.damage_profile_left = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.damage_profile_right = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.36
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[3].start_time = 0.29
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[4].start_time = 0.29
--Heavies
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.allowed_chain_actions[5].start_time = 0.6
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions[1].start_time = 0.6
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions[2].start_time = 0.6
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions[5].start_time = 0.6
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.5,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.5,
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
--Combo Changes/Default State
--Dodge/Block/etc
Weapons.dual_wield_axes_template_1.max_fatigue_points = 6
Weapons.dual_wield_axes_template_1.block_angle = 45
Weapons.dual_wield_axes_template_1.block_fatigue_point_multiplier = 0.25
-------------------------------------------------------Dual Hammers------------------------------------------------------------------------------
--Lights 1/2/3
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.anim_time_scale = 1.25
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.25
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.allowed_chain_actions[1].start_time = 0.45
--Lights 4/Pushstab
Weapons.dual_wield_hammers_template.actions.action_one.light_attack_down.allowed_chain_actions[1].start_time = 0.5
--Heavies
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.allowed_chain_actions[1].start_time = 0.55
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.allowed_chain_actions[2].start_time = 0.55
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.damage_profile_right = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.slide_armour_hit = true
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.allowed_chain_actions[1].start_time = 0.55
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.allowed_chain_actions[2].start_time = 0.55
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.damage_profile_right = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.slide_armour_hit = true
--Dodge/Block/etc
Weapons.dual_wield_hammers_template.dodge_count = 4
Weapons.dual_wield_hammers_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_hammers_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
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
Weapons.heavy_steam_pistol_template_1.ammo_data.max_ammo = 40
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
--//////////////////////////////////////////////////////////////Kerillian//////////////////////////////////////////////////////////////////////////////////
-------------------------------------------------1h Axe-------------------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.allowed_chain_actions[1].start_time = 0.55
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.allowed_chain_actions[2].start_time = 0.55
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.we_one_hand_axe_template.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
--Heavies
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_left.damage_profile = "priest_hammer_blunt_smiter"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.damage_profile = "priest_hammer_blunt_smiter"
--Combo Changes
Weapons.we_one_hand_axe_template.actions.action_one.default.allowed_chain_actions[2].start_time = 0.5
Weapons.we_one_hand_axe_template.actions.action_one.default.allowed_chain_actions[6].start_time = 0.5
Weapons.we_one_hand_axe_template.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.5
Weapons.we_one_hand_axe_template.actions.action_one.default_right.allowed_chain_actions[6].start_time = 0.5
Weapons.we_one_hand_axe_template.actions.action_one.default_left.allowed_chain_actions[2].start_time = 0.5
Weapons.we_one_hand_axe_template.actions.action_one.default_left.allowed_chain_actions[6].start_time = 0.5
Weapons.we_one_hand_axe_template.actions.action_one.default_last.allowed_chain_actions[2].start_time = 0.5
Weapons.we_one_hand_axe_template.actions.action_one.default_last.allowed_chain_actions[6].start_time = 0.5
--Dodge/Block/etc
Weapons.we_one_hand_axe_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.dodge_count = 5
-------------------------------------------------Sword and Dagger---------------------------------------------------------------------------------
--Revert Pushstab change find something else
--Lights/Pushstab
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.damage_profile = "medium_fencer_stab"
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push.fatigue_cost = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push.allowed_chain_actions[1].start_time = 0.3
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push.allowed_chain_actions[2].start_time = 0.3
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.damage_profile = "medium_fencer_stab"
--Heavies
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.anim_time_scale = 1.15
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_right_2",
					start_time = 0.52,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.38,
					input = "action_one"
				},
				{
					sub_action = "default_right_2",
					start_time = 0.52,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.38,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.38,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.4,
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
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.2,
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
--Combo Changes/Default States
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default.allowed_chain_actions[6].start_time = 0.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_right.allowed_chain_actions[6].start_time = 0.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left.allowed_chain_actions[2].start_time = 0.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left.allowed_chain_actions[6].start_time = 0.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_left_last.allowed_chain_actions[6].start_time = 0.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_right_2.allowed_chain_actions[2].start_time = 0.5
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.default_right_2.allowed_chain_actions[6].start_time = 0.5
--Dodge/Block/etc
Weapons.dual_wield_sword_dagger_template_1.dodge_count = 4
Weapons.dual_wield_sword_dagger_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_sword_dagger_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
Weapons.dual_wield_sword_dagger_template_1.block_fatigue_point_multiplier = 0.5
Weapons.dual_wield_sword_dagger_template_1.outer_block_fatigue_point_multiplier  = 2
---------------------------------------------------------------1h Sword------------------------------------------------------------------------------------
--Revert l3 find something else

--Lights/Pushstab
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.4
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.55,
					action = "action_one",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
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
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.4
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.55,
					action = "action_one",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
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
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			}
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.damage_profile = "medium_fencer_stab"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.range_mod = 1.2
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.62,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
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
Weapons.we_one_hand_sword_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.we_one_hand_sword_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.5
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.65,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.58,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.58,
					action = "action_wield",
					input = "action_wield"
				}
			}
--Heavies
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_left.additional_critical_strike_chance = nil
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.anim_time_scale = 1.75
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.7,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.7,
					action = "action_one",
					release_required = "action_one_hold",
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
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.damage_profile = "heavy_slashing_linesman_polearm"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.additional_critical_strike_chance = nil
--Combo Changes
Weapons.we_one_hand_sword_template_1.actions.action_one.default.allowed_chain_actions[1].end_time = 0.3
Weapons.we_one_hand_sword_template_1.actions.action_one.default.allowed_chain_actions[2].start_time = 0.55
Weapons.we_one_hand_sword_template_1.actions.action_one.default.allowed_chain_actions[6].start_time = 0.55
Weapons.we_one_hand_sword_template_1.actions.action_one.default_right.allowed_chain_actions[1].end_time = 0.3
Weapons.we_one_hand_sword_template_1.actions.action_one.default_right.allowed_chain_actions[2].sub_action = "heavy_attack_left"
Weapons.we_one_hand_sword_template_1.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.55
Weapons.we_one_hand_sword_template_1.actions.action_one.default_right.allowed_chain_actions[6].sub_action = "heavy_attack_left"
Weapons.we_one_hand_sword_template_1.actions.action_one.default_right.allowed_chain_actions[6].start_time = 0.55
Weapons.we_one_hand_sword_template_1.actions.action_one.default_left.allowed_chain_actions[1].end_time = 0.3
Weapons.we_one_hand_sword_template_1.actions.action_one.default_left.allowed_chain_actions[2].start_time = 0.55
Weapons.we_one_hand_sword_template_1.actions.action_one.default_left.allowed_chain_actions[6].start_time = 0.55
Weapons.we_one_hand_sword_template_1.actions.action_one.default_right.anim_event = "attack_swing_charge_down"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default"
--Dodge/Block/etc
Weapons.we_one_hand_sword_template_1.dodge_count = 5
Weapons.we_one_hand_sword_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.we_one_hand_sword_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
Weapons.we_one_hand_sword_template_1.outer_block_fatigue_point_multiplier  = 2
-------------------------------------------------Dual Swords--------------------------------------------------------------------------------------
--Lights 1/2/3/4
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.44
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.5
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.anim_time_scale = 1.275
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.allowed_chain_actions[1].start_time = 0.45
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_left.additional_critical_strike_chance = 0.1
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.anim_time_scale = 1.175
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.allowed_chain_actions[1].start_time = 0.41
Weapons.dual_wield_swords_template_1.actions.action_one.light_attack_up_right.additional_critical_strike_chance = 0.1
--Lights/Pushstab
Weapons.dual_wield_swords_template_1.actions.action_one.push_stab.additional_critical_strike_chance = nil
--Heavies
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.allowed_chain_actions[1].start_time = 0.58
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.allowed_chain_actions[1].end_time = nil
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack.allowed_chain_actions[2].start_time = 0.58
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions[1].start_time = 0.58
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions[1].end_time = nil
Weapons.dual_wield_swords_template_1.actions.action_one.heavy_attack_2.allowed_chain_actions[2].start_time = 0.58
--Dodge/Block/etc
Weapons.dual_wield_swords_template_1.dodge_count = 4
Weapons.dual_wield_swords_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_swords_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
Weapons.dual_wield_swords_template_1.outer_block_fatigue_point_multiplier  = 2
-------------------------------------------------Dual Daggers-------------------------------------------------------------------------------------
--Template
DamageProfileTemplates.light_fencer_stab_diag.armor_modifier.attack = { 1.45, 0, 1.5, 1, 1.04} --Inf/Armor/Monster/Super/Zerker
DamageProfileTemplates.light_fencer_stab_diag.critical_strike.attack_armor_power_modifer = {1.45, 0.5, 2, 1, 1.04} --1/0.5/2/1/1
DamageProfileTemplates.light_fencer_stab_diag.cleave_distribution.attack = 0.075
DamageProfileTemplates.light_fencer_stab_diag.cleave_distribution.impact = 0.075
DamageProfileTemplates.light_fencer_stab_diag.targets[1].dot_template_name = nil
DamageProfileTemplates.light_fencer_stab.targets[1].dot_template_name = nil
--Lights 1/2/3/4/Pushstab
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.05
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.38
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_left.allowed_chain_actions[4].start_time = 0.32
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.15
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.41
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_right.allowed_chain_actions[4].start_time = 0.35
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.anim_time_scale = 1.05
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.allowed_chain_actions[1].start_time = 0.38
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_quick_left.allowed_chain_actions[4].start_time = 0.32
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.25
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.45
Weapons.dual_wield_daggers_template_1.actions.action_one.light_attack_last.allowed_chain_actions[4].start_time = 0.37
Weapons.dual_wield_daggers_template_1.actions.action_one.push.allowed_chain_actions[1].start_time = 0.3
Weapons.dual_wield_daggers_template_1.actions.action_one.push.allowed_chain_actions[2].start_time = 0.3
Weapons.dual_wield_daggers_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.dual_wield_daggers_template_1.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.anim_time_scale = 1.95
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.59,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.59,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
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
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.damage_profile = "medium_fencer_stab"
--Heavies
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack.allowed_chain_actions[5].start_time = 0.35
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.anim_time_scale = 1.65
Weapons.dual_wield_daggers_template_1.actions.action_one.heavy_attack_stab.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.23,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.23,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.23,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.42,
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
--Combo Changes/Default State
Weapons.dual_wield_daggers_template_1.actions.action_one.default_stab.anim_time_scale = 1
Weapons.dual_wield_daggers_template_1.actions.action_one.default_stab.allowed_chain_actions[2].start_time = 0.5
Weapons.dual_wield_daggers_template_1.actions.action_one.default_stab.allowed_chain_actions[3].start_time = 0
--Dodge/Block/etc
Weapons.dual_wield_daggers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_daggers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
Weapons.dual_wield_daggers_template_1.max_fatigue_points = 6
Weapons.dual_wield_daggers_template_1.block_angle = 45
Weapons.dual_wield_daggers_template_1.block_fatigue_point_multiplier = 0.25
-------------------------------------------------Glaive-------------------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.range_mod = 1.5
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.anim_time_scale = 1.05
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.additional_critical_strike_chance = 0.1
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.63,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.63,
					action = "action_one",
					release_required = "action_one_hold",
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
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_right_upward.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.64,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.64,
					action = "action_one",
					release_required = "action_one_hold",
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
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.range_mod = 1.5
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.anim_time_scale = 1.1
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.57,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.57,
					action = "action_one",
					release_required = "action_one_hold",
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
Weapons.two_handed_axes_template_2.actions.action_one.push.allowed_chain_actions[1].start_time = 0.3
Weapons.two_handed_axes_template_2.actions.action_one.push.allowed_chain_actions[2].start_time = 0.3
Weapons.two_handed_axes_template_2.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.two_handed_axes_template_2.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.range_mod = 1.5
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.57,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.57,
					action = "action_one",
					release_required = "action_one_hold",
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
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.hit_mass_count = nil
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.range_mod = 1.4
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.damage_profile = "heavy_slashing_smiter_executioner"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.range_mod = 1.4
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.damage_profile = "heavy_slashing_smiter_executioner"
--Dodge/Block/etc
Weapons.two_handed_axes_template_2.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_axes_template_2.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------------------2h Sword--------------------------------------------------------------------------------------
--Heavies
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.allowed_chain_actions[1].start_time = 0.6
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.range_mod = 1.35
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.damage_profile = "heavy_slashing_linesman"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.slide_armour_hit = true
--Dodge/Block/etc
Weapons.two_handed_swords_wood_elf_template.dodge_count = 4
Weapons.two_handed_swords_wood_elf_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_swords_wood_elf_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
-------------------------------------------------Elf Spear-----------------------------------------------------------------------
--Lights 1/2/4
Weapons.two_handed_spears_elf_template_1.actions.action_one.light_attack_left.hit_mass_count = nil
--Lights 3/Pushstab
--Heavies
Weapons.two_handed_spears_elf_template_1.actions.action_one.heavy_attack_stab.hit_mass_count = nil
--Dodge/Block/etc
Weapons.two_handed_spears_elf_template_1.dodge_count = 4
Weapons.two_handed_spears_elf_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
-----------------------------------------------Ranged---------------------------------------------------------
--Dodge/Ammo/Reload/Etc
Weapons.staff_life.dodge_count = 5
Weapons.staff_life.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.staff_life.buffs.change_dodge_speed.external_optional_multiplier = 1.25
--Dodge/Ammo/Reload/Etc
Weapons.longbow_template_1.actions.action_one.default.total_time = 0.7
Weapons.longbow_template_1.actions.action_one.default.allowed_chain_actions = {
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
					release_required = "action_one_hold",
					input = "action_one",
					end_time = math.huge
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold",
					end_time = math.huge
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_template_1.actions.action_one.shoot_charged.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold",
					end_time = math.huge
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_template_1.actions.action_two.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield",
					end_time = math.huge
				},
				{
					sub_action = "shoot_charged",
					start_time = 0.63,
					action = "action_one",
					input = "action_one",
					end_time = math.huge
				},
				{
					sub_action = "default",
					start_time = 0.63,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
Weapons.longbow_template_1.actions.action_one.shoot_charged.speed = 12000
Weapons.longbow_template_1.dodge_count = 2
Weapons.longbow_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.longbow_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--Dodge/Ammo/Reload/Etc
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
Weapons.shortbow_template_1.ammo_data.max_ammo = 40
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
--Lights/Pushstab
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.51
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.allowed_chain_actions[2].start_time = 0.51
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.one_hand_axe_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_diag"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.48
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[2].start_time = 0.48
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
--Heavies
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.damage_profile = "priest_hammer_blunt_smiter"
Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.damage_profile = "priest_hammer_blunt_smiter"
--Combo Changes
Weapons.one_hand_axe_template_1.actions.action_one.default.allowed_chain_actions[6].start_time = 0.5
Weapons.one_hand_axe_template_1.actions.action_one.default_right.allowed_chain_actions[6].start_time = 0.5
Weapons.one_hand_axe_template_1.actions.action_one.default_left.allowed_chain_actions[6].start_time = 0.5
--Dodge/Block/etc
Weapons.one_hand_axe_template_1.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_hand_axe_template_1.dodge_count = 5
-------------------------------------------------------------2H Sword--------------------------------------------------------------------------------------
--All code from Kruber 2H Sword affects the entirety of Saltzpyre 2H Sword
-----------------------------------------------------Billhook------------------------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.44
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.allowed_chain_actions[2].start_time = 0.44
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.anim_time_scale = 0.7
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.damage_window_start = 0.2375
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_left.damage_window_end = 0.35
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_bopp.anim_time_scale = 0.8
Weapons.two_handed_billhooks_template.actions.action_one.push.allowed_chain_actions[1].start_time = 0.3
Weapons.two_handed_billhooks_template.actions.action_one.push.allowed_chain_actions[2].start_time = 0.3
Weapons.two_handed_billhooks_template.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.two_handed_billhooks_template.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.two_handed_billhooks_template.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.two_handed_billhooks_template.actions.action_one.push.allowed_chain_actions[6].start_time = 0.3
--Dodge/Block/etc
Weapons.two_handed_billhooks_template.dodge_count = 4
Weapons.two_handed_billhooks_template.actions.action_two.default.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_decrease_movement"
				}
			}
-------------------------------------------------Axe and Falchion---------------------------------------------------------------------------------
--Lights 1/4
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.47
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.allowed_chain_actions[4].start_time = 0.35
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.allowed_chain_actions[1].start_time = 0.53
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.allowed_chain_actions[4].start_time = 0.35
--Lights 2/3/Pushstab
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.allowed_chain_actions[1].start_time = 0.45
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.allowed_chain_actions[4].start_time = 0.35
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.05
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.allowed_chain_actions[4].start_time = 0.31
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.45
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.55
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.allowed_chain_actions[2].start_time = 0.55
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.allowed_chain_actions[4].start_time = 0.44
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.allowed_chain_actions[5].start_time = 0.44
--Heavies
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.damage_profile_left = "light_slashing_smiter_stab_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.damage_profile_right = "light_slashing_smiter_stab_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.range_mod = 1
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.anim_time_scale = 1
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.75,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.2,
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
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.anim_time_scale = 1.25
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.1,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.allowed_chain_actions = {
				{
					sub_action = "default_down_heavy",
					start_time = 0.56,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.5,
					input = "action_one"
				},
				{
					sub_action = "default_down_heavy",
					start_time = 0.56,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.5,
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
					start_time = 0.44,
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
--Combo Changes/Default State
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.allowed_chain_actions[1].sub_action = "default_down_heavy"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.allowed_chain_actions[2].sub_action = "default_down_heavy"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.allowed_chain_actions[1].sub_action = "default_down"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.allowed_chain_actions[2].sub_action = "default_down"
Weapons.dual_wield_axe_falchion_template.actions.action_one.default_down_heavy.allowed_chain_actions[2].sub_action = "heavy_attack_2"
Weapons.dual_wield_axe_falchion_template.actions.action_one.default_down_heavy.allowed_chain_actions[6].sub_action = "heavy_attack_2"
Weapons.dual_wield_axe_falchion_template.actions.action_one.default_down_heavy.anim_event = "attack_swing_charge_left"
--Dodge/Block/etc
Weapons.dual_wield_axe_falchion_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_axe_falchion_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
-------------------------------------------------Rapier-------------------------------------------------------------------------------------------
--Revist Rapier

--Lights/Pushstab
--Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.anim_time_scale = 0.925
--////////Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.total_time = 1.2
--Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.anim_time_scale = 0.925
--////////Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.total_time = 1.2
--Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.anim_time_scale = 1.65
--////////Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.total_time = 1.2
--Weapons.fencing_sword_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
--Weapons.fencing_sword_template_1.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
--Weapons.fencing_sword_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
--Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 0.975
--////////Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.total_time = 1.2
--Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[2].start_time = 0.35
--Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[4].start_time = 0.35
--Annoying Idle Animation
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.4,
					action = "action_one",
					doubleclick_window = 0.15,
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
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.4,
					action = "action_one",
					doubleclick_window = 0.15,
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
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					doubleclick_window = 0.15,
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
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.35,
					action = "action_one",
					release_required = "action_two_hold",
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
Weapons.fencing_sword_template_1.actions.idle.default.allowed_chain_actions[1].end_time = 0.5
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
Weapons.fencing_sword_template_1.block_angle = 45
-------------------------------------------------------------Falchion-----------------------------------------------------------------------------
--Lights 1/2/Pushstab
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_finesse"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_finesse"
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_finesse"
Weapons.one_hand_falchion_template_1.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.one_hand_falchion_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.6
Weapons.one_hand_falchion_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[2].start_time = 0.6
--Dodge/Block/etc
Weapons.one_hand_falchion_template_1.dodge_count = 5
Weapons.one_hand_falchion_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.one_hand_falchion_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2
--------------------------------------------------------------Flail-------------------------------------------------------------------------------
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
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_01.allowed_chain_actions[4].start_time = 0.62
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.additional_critical_strike_chance = 0.1
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.allowed_chain_actions[1].start_time = 0.62
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_02.allowed_chain_actions[4].start_time = 0.62
--Light 3/Pushstab
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.additional_critical_strike_chance = nil
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.allowed_chain_actions[1].start_time = 0.52
Weapons.two_handed_hammer_priest_template.actions.action_one.light_attack_03.allowed_chain_actions[4].start_time = 0.52
--Heavies
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_01.additional_critical_strike_chance = nil
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_02.damage_profile = "medium_blunt_tank_upper_1h"
Weapons.two_handed_hammer_priest_template.actions.action_one.heavy_attack_03.hit_mass_count = nil
--Dodge/Block/etc
Weapons.two_handed_hammer_priest_template.dodge_count = 3
Weapons.two_handed_hammer_priest_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_hammer_priest_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--------------------------------------------------------------1h Skullsplitter--------------------------------------------------------------------
--Lights 1/2/Pushstab
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_01.anim_time_scale = 1.05
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.anim_time_scale = 1.05
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.allowed_chain_actions[1].start_time = 0.55
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_02.allowed_chain_actions[2].start_time = 0.55
Weapons.one_handed_hammer_priest_template.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.05
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
--Light 3/4
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.hit_mass_count = nil
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.anim_time_scale = 1.1
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.allowed_chain_actions[1].start_time = 0.53
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.allowed_chain_actions[2].start_time = 0.53
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.allowed_chain_actions[5].start_time = 0.53
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.range_mod = 1.2
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.anim_time_scale = 0.95
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.allowed_chain_actions[1].start_time = 0.55
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.allowed_chain_actions[2].start_time = 0.55
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.allowed_chain_actions[5].start_time = 0.46
--Heavies
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.damage_profile = "heavy_slashing_smiter"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.range_mod = 1.2 --0
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.damage_profile = "heavy_slashing_smiter"
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_02.range_mod = 1.2 --0
--Dodge/Block/etc
Weapons.one_handed_hammer_priest_template.max_fatigue_points = 8
Weapons.one_handed_hammer_priest_template.dodge_count = 5
--------------------------------------------------------------Dual Skullsplitter------------------------------------------------------------------
--Lights 1/2/3
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_right_uppercut.anim_time_scale = 1.25
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.anim_time_scale = 1.25
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_left_diagonal.allowed_chain_actions[1].start_time = 0.45
--Lights 4/Pushstab
Weapons.dual_wield_hammers_priest_template.actions.action_one.light_attack_down.allowed_chain_actions[1].start_time = 0.5
--Heavies
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.allowed_chain_actions[1].start_time = 0.55
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.allowed_chain_actions[2].start_time = 0.55
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.damage_profile_right = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_2.slide_armour_hit = true
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.allowed_chain_actions[1].start_time = 0.55
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.allowed_chain_actions[2].start_time = 0.55
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.damage_profile_right = "light_blunt_tank_dual"
Weapons.dual_wield_hammers_priest_template.actions.action_one.heavy_attack_3.slide_armour_hit = true
--Dodge/Block/etc
Weapons.dual_wield_hammers_priest_template.dodge_count = 4
Weapons.dual_wield_hammers_priest_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_hammers_priest_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
------------------------------------------------------------------------Ranged--------------------------------------------------------------------
--Dodge/Ammo/Reload/Etc
--Saltzpyre Crossbow code is copied directly from Bardin Crossbow in its entirety
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
Weapons.brace_of_pistols_template_1.actions.action_one.fast_shot.impact_data.damage_profile = "shot_repeating"
Weapons.brace_of_pistols_template_1.actions.action_one.default.allowed_chain_actions[2].start_time = 0.5
Weapons.brace_of_pistols_template_1.actions.action_one.default.allowed_chain_actions[3].start_time = 0.5
Weapons.brace_of_pistols_template_1.actions.action_one.default.allowed_chain_actions[5].start_time = 0.4
Weapons.brace_of_pistols_template_1.actions.action_one.default.allowed_chain_actions[6].start_time = 0.4
Weapons.brace_of_pistols_template_1.actions.action_one.default.allowed_chain_actions[7].start_time = 0.4
Weapons.brace_of_pistols_template_1.actions.action_one.special_action_shoot.allowed_chain_actions[2].start_time = 0.5
Weapons.brace_of_pistols_template_1.actions.action_one.special_action_shoot.allowed_chain_actions[3].start_time = 0.5
Weapons.brace_of_pistols_template_1.actions.action_one.special_action_shoot.allowed_chain_actions[5].start_time = 0.4
Weapons.brace_of_pistols_template_1.actions.action_one.special_action_shoot.allowed_chain_actions[6].start_time = 0.4
Weapons.brace_of_pistols_template_1.actions.action_one.special_action_shoot.allowed_chain_actions[7].start_time = 0.4
Weapons.brace_of_pistols_template_1.actions.action_one.special_action_shoot.impact_data.damage_profile = "shot_repeating"
Weapons.brace_of_pistols_template_1.actions.action_two.default.allowed_chain_actions[3].start_time = 0
Weapons.brace_of_pistols_template_1.actions.action_two.default.minimum_hold_time = 0
Weapons.brace_of_pistols_template_1.actions.action_three.default.allowed_chain_actions[2].start_time = 0.5
Weapons.brace_of_pistols_template_1.actions.action_three.default.allowed_chain_actions[3].start_time = 0.5
Weapons.brace_of_pistols_template_1.actions.action_three.default.allowed_chain_actions[4].start_time = 0.5
Weapons.brace_of_pistols_template_1.actions.action_three.default.allowed_chain_actions[6].start_time = 0.4
Weapons.brace_of_pistols_template_1.actions.action_three.default.allowed_chain_actions[7].start_time = 0.4
Weapons.brace_of_pistols_template_1.ammo_data.ammo_per_reload = 4
Weapons.brace_of_pistols_template_1.ammo_data.max_ammo = 40
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
--//////////////////////////////////////////////////////////Sienna////////////////////////////////////////////////////////////////////////////////
----------------------------------------------------------2h Mace---------------------------------------------------------------------------------
--Lights 1/2
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.damage_profile = "medium_blunt_smiter_2h_hammer"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.81
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.allowed_chain_actions[3].start_time = 0.67
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.allowed_chain_actions[4].start_time = 0.67
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.damage_profile = "medium_blunt_smiter_2h_hammer"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.allowed_chain_actions[1].start_time = 0.71
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.allowed_chain_actions[3].start_time = 0.68
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.allowed_chain_actions[4].start_time = 0.68
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.anim_time_scale = 1.05
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.hit_mass_count = nil
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.additional_critical_strike_chance = 0.1
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.impact_sound_event = "hammer_2h_hit"
--Lights 3/Pushstab
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.damage_profile = "medium_blunt_tank"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.66
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.allowed_chain_actions[3].start_time = 0.66
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.allowed_chain_actions[4].start_time = 0.66
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.1
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.impact_sound_event = "hammer_2h_hit"
--Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.damage_profile = "medium_blunt_tank"
--Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.65
--Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[3].start_time = 0.6
--Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[4].start_time = 0.6
--Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.1
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.damage_profile = "medium_blunt_tank"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.65
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[3].start_time = 0.65
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[5].start_time = 0.65
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
--Heavies
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.slide_armour_hit = true
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.allowed_chain_actions[1].start_time = 0.7
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.allowed_chain_actions[2].start_time = 0.7
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.allowed_chain_actions[3].start_time = 0.59
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.allowed_chain_actions[4].start_time = 0.59
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.total_time = 2.63
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.slide_armour_hit = true
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 1.5
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.9
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[2].start_time = 0.9
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[3].start_time = 0.75
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[4].start_time = 0.75
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.total_time = 3.38
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.impact_sound_event = "hammer_2h_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.damage_profile = "priest_hammer_blunt_smiter"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.total_time = 2.63
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.allowed_chain_actions[3].start_time = 0.51
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.allowed_chain_actions[4].start_time = 0.51
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.anim_time_scale = 0.93
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.impact_sound_event = "hammer_2h_hit"
--Combo Changes
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default.allowed_chain_actions[2].sub_action = "heavy_attack_right_up"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default.allowed_chain_actions[6].sub_action = "heavy_attack_right_up"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default.anim_event = "attack_swing_charge_left_pose"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_left.allowed_chain_actions[1].sub_action = "light_attack_upper"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_left.anim_event = "attack_swing_charge_right_pose"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_right.allowed_chain_actions[1].sub_action = "light_attack_right"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_right.allowed_chain_actions[2].sub_action = "heavy_attack"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_right.allowed_chain_actions[6].sub_action = "heavy_attack"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.35
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_right.anim_event = "attack_swing_charge_left_diagonal"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.allowed_chain_actions[1].sub_action = "default"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.allowed_chain_actions[2].sub_action = "default"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].sub_action = "default_right"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[2].sub_action = "default_right"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.allowed_chain_actions[1].sub_action = "default_left"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.allowed_chain_actions[1].sub_action = "default_right"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.hit_stop_anim = "attack_hit"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].sub_action = "default"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default"
--Dodge/Block/etc
Weapons.one_handed_hammer_wizard_template_1.max_fatigue_points = 8
Weapons.one_handed_hammer_wizard_template_1.dodge_count = 3
Weapons.one_handed_hammer_wizard_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.one_handed_hammer_wizard_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------------Sienna Dagger------------------------------------------------------------------------------
--Heavies
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_fencer_stab_charged"
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 1.43
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.64
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.64
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[4].start_time = 0.64
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[5].start_time = 0.64
--Light 3/Pushstab
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.damage_profile = "medium_fencer_stab"
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.allowed_chain_actions[1].start_time = 0.44
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.allowed_chain_actions[2].start_time = 0.33
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.allowed_chain_actions[3].start_time = 0.55
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.45,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.damage_profile = "medium_fencer_stab"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.allowed_chain_actions[1].start_time = 0.44
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.allowed_chain_actions[2].start_time = 0.33
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.allowed_chain_actions[3].start_time = 0.33
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.allowed_chain_actions[4].start_time = 0.55
--Combo Changes
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].sub_action = "default_last"
Weapons.one_handed_daggers_template_1.actions.action_one.default.allowed_chain_actions[2].sub_action = "heavy_attack_right"
Weapons.one_handed_daggers_template_1.actions.action_one.default.allowed_chain_actions[5].sub_action = "heavy_attack_right"
Weapons.one_handed_daggers_template_1.actions.action_one.default.anim_event = "attack_swing_charge_left"
Weapons.one_handed_daggers_template_1.actions.action_one.default_right.allowed_chain_actions[2].sub_action = "heavy_attack_right"
Weapons.one_handed_daggers_template_1.actions.action_one.default_right.allowed_chain_actions[5].sub_action = "heavy_attack_right"
Weapons.one_handed_daggers_template_1.actions.action_one.default_right.anim_event = "attack_swing_charge_left"
Weapons.one_handed_daggers_template_1.actions.action_one.default_left.allowed_chain_actions[2].sub_action = "heavy_attack_right"
Weapons.one_handed_daggers_template_1.actions.action_one.default_left.allowed_chain_actions[2].start_time = 0.55
Weapons.one_handed_daggers_template_1.actions.action_one.default_left.allowed_chain_actions[5].sub_action = "heavy_attack_right"
Weapons.one_handed_daggers_template_1.actions.action_one.default_left.anim_event = "attack_swing_charge_left"
Weapons.one_handed_daggers_template_1.actions.action_one.default_last.anim_event = "attack_swing_charge_left"
Weapons.one_handed_daggers_template_1.actions.action_one.default_last.allowed_chain_actions[2].sub_action = "heavy_attack_right"
Weapons.one_handed_daggers_template_1.actions.action_one.default_last.allowed_chain_actions[2].start_time = 0.55
Weapons.one_handed_daggers_template_1.actions.action_one.default_last.allowed_chain_actions[5].sub_action = "heavy_attack_right"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.allowed_chain_actions[1].sub_action = "default_left"
--Dodge/Block/etc
Weapons.one_handed_daggers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.one_handed_daggers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
Weapons.one_handed_daggers_template_1.block_angle = 45
Weapons.one_handed_daggers_template_1.block_fatigue_point_multiplier = 0.25
-------------------------------------------------------Flaming Sword------------------------------------------------------------------------------
--Change H2 to mixed damage profile
--Chain Pushstab into L1/L2

--Lights 1/2
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_dual"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.485
Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_dual"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.42
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.total_time = 2.1
Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_dual"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.485
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
--Light 3
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.damage_profile = "medium_fencer_stab"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			}
--Heavies
Weapons.flaming_sword_template_1.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.63
Weapons.flaming_sword_template_1.actions.action_one.default_right_heavy.allowed_chain_actions[2].start_time = 0.63
Weapons.flaming_sword_template_1.actions.action_one.default_left.allowed_chain_actions[2].start_time = 0.5
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.total_time = 2.25
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.anim_time_scale = 0.7
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.allowed_chain_actions[1].start_time = 0.45
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.allowed_chain_actions[2].start_time = 0.45
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.allowed_chain_actions[4].start_time = 0.45
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.allowed_chain_actions[5].start_time = 0.45
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.damage_profile = "priest_hammer_blunt_smiter"
--Dodge/Block/etc
Weapons.flaming_sword_template_1.dodge_count = 4
Weapons.flaming_sword_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.flaming_sword_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
-------------------------------------------------------Flaming Flail------------------------------------------------------------------------------
--Lights 1/2
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.damage_profile = "medium_blunt_tank"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.6
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.allowed_chain_actions[3].end_time = 0.3
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.allowed_chain_actions[4].start_time = 0.6
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.allowed_chain_actions[5].start_time = 0.6
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.damage_profile = "medium_blunt_tank"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.6
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.allowed_chain_actions[3].end_time = 0.3
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.allowed_chain_actions[4].start_time = 0.6
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.allowed_chain_actions[5].start_time = 0.6
--Lights 3/4/Pushstab
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.6
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.allowed_chain_actions[3].end_time = 0.3
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.allowed_chain_actions[4].start_time = 0.6
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.allowed_chain_actions[5].start_time = 0.6
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_down.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_down.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_down.allowed_chain_actions = {
					{
						sub_action = "default",
						start_time = 0.6,
						action = "action_one",
						end_time = 1.25,
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
						start_time = 0,
						action = "action_two",
						end_time = 0.3,
						input = "action_two_hold"
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
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.hit_mass_count = nil
--Heavies
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.damage_profile = "heavy_slashing_smiter"
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.impact_explosion_template = nil
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.allowed_chain_actions = {
					{
						sub_action = "default_left",
						start_time = 0.6,
						action = "action_one",
						release_required = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default_left",
						start_time = 0.6,
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
Weapons.one_handed_flails_flaming_template.actions.action_one.default.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.default_charge.allowed_chain_actions[1].start_time = 0
--Dodge/Block/etc
Weapons.one_handed_flails_flaming_template.dodge_count = 3
Weapons.one_handed_flails_flaming_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.one_handed_flails_flaming_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--------------------------------------------------------------Crowbill----------------------------------------------------------------------------
--Lights 1/2/3/4/Pushstab
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.allowed_chain_actions[4].start_time = 0.41
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_crowbill.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.one_handed_crowbill.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.one_handed_crowbill.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.allowed_chain_actions[3].start_time = 0
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.allowed_chain_actions[4].start_time = 1.5
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.allowed_chain_actions[5].start_time = 0.43
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			}
--Heavies
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.damage_profile = "priest_hammer_blunt_smiter"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.damage_profile = "priest_hammer_blunt_smiter"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_right_up.damage_profile = "priest_hammer_blunt_smiter"
--Combo Changes
Weapons.one_handed_crowbill.actions.action_one.default.allowed_chain_actions[6].start_time = 0.5
Weapons.one_handed_crowbill.actions.action_one.default_right.allowed_chain_actions[6].start_time = 0.5
Weapons.one_handed_crowbill.actions.action_one.default_left.allowed_chain_actions[6].start_time = 0.5
Weapons.one_handed_crowbill.actions.action_one.default_last.allowed_chain_actions[6].start_time = 0.5
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
-------------------------------------------------------------Ranged-------------------------------------------------------------------------------
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
Weapons.staff_spark_spear_template_1.actions.action_one.shoot_charged.speed = 9000
Weapons.staff_spark_spear_template_1.actions.action_one.shoot_charged_2.speed = 12000
Weapons.staff_spark_spear_template_1.actions.action_one.shoot_charged_3.speed = 12000
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









--25/6 Finesse 20/5 1h 15/4 Duals-2h Lite 10/3 Super Heavy Weapon
--25/5 Staves/HiCap 20/4 BoP 15/3 Shotgun/Throwables 10/2 Sniper


--A lot of Jank on BoP Variants need to be ironed out
--A lot of Jank on Throwing Axe Reload
