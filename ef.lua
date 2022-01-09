local mod = get_mod("ef")

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
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.05
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
--Light 3/4
DamageProfileTemplates.light_blunt_smiter.default_target.boost_curve_coefficient_headshot = 2
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.hit_mass_count = nil
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.damage_window_end = 0.42
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.range_mod = 1.2
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.anim_time_scale = 0.95 --template_1 is Kruber's 1h mace
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.allowed_chain_actions[1].start_time = 0.55
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.allowed_chain_actions[2].start_time = 0.55
--Heavies
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.range_mod = 1.2 --0
Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.range_mod = 1.2 --0
--Dodge/Block/etc
Weapons.one_handed_hammer_template_1.max_fatigue_points = 8
Weapons.one_handed_hammer_template_1.dodge_count = 5
--------------------------------------------Kruber 1h Sword (Figure out what to do with Heavy profile)--------------------------------------------
--Lights/Pushstab
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_finesse"
--Heavies

--DamageProfileTemplates.medium_slashing_tank_1h_finesse.cleave_distribution.attack = 
Weapons.one_handed_swords_template_1.actions.action_one.default_left.allowed_chain_actions[2].start_time = 0.55
--Dodge/Block/etc
Weapons.one_handed_swords_template_1.dodge_count = 5
-------------------------------------------Executioner Sword (quintuple check this shits right and heavies are properly fixed)--------------------
--Lights/Pushstab
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.07
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.05
--Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.damage_window_start = 0.6 --These are causing ghosts hits
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.85
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.anim_time_scale = 0.93
--Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.damage_window_start = 0.5 --These are causing ghosts hits
--Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_left_diagonal.damage_window_end = 0.6  --These are causing ghosts hits
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.15
--Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.65 --These are causing ghosts hits
--Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.75 --These are causing ghosts hits
Weapons.two_handed_swords_executioner_template_1.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT 
--Heavy 1 
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_left_diagonal.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[4].start_time = 0.58
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_left.additional_critical_strike_chance = nil
--Heavy 2
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.default_left_diagonal_other_left.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.68
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[4].start_time = 0.58
Weapons.two_handed_swords_executioner_template_1.actions.action_one.heavy_attack_right.additional_critical_strike_chance = nil
--Dodge/Block/etc
Weapons.two_handed_swords_executioner_template_1.dodge_count = 3
Weapons.two_handed_swords_executioner_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_swords_executioner_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
---------------------------------------------------------Halberd----------------------------------------------------------------------------------
--Light/Pushstab
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.55
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_left.allowed_chain_actions[2].start_time = 0.55
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.allowed_chain_actions[1].end_time = 0.9
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.allowed_chain_actions[2].end_time = 0.9
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.allowed_chain_actions[3].start_time = 0.9
Weapons.two_handed_halberds_template_1.actions.action_one.light_attack_down.allowed_chain_actions[4].start_time = 0.9
--Dodge/Block/etc
Weapons.two_handed_halberds_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_halberds_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--------------------------------------------------------Greatsword--------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.4
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.4
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.1
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.8
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[2].start_time = 0.8
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[3].start_time = 0.8
Weapons.two_handed_swords_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[4].start_time = 0.8
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[1].start_time = 0.3
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[2].start_time = 0.3
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.two_handed_swords_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
--Heavies
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.6
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.6
Weapons.two_handed_swords_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.6
--Dodge/Block/etc
Weapons.two_handed_swords_template_1.dodge_count = 4
Weapons.two_handed_swords_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.two_handed_swords_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
----------------------------------------------------Bret Longsword(Come back to this immediately)-------------------------------------------------
--Lights 1/2
Weapons.bastard_sword_template.actions.action_one.light_attack_left.damage_profile = "medium_slashing_linesman"
--Weapons.bastard_sword_template.actions.action_one.light_attack_left.anim_time_scale = 1.1
Weapons.bastard_sword_template.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.light_attack_left.allowed_chain_actions[3].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.light_attack_left.allowed_chain_actions[5].start_time = 0.62
--Weapons.bastard_sword_template.actions.action_one.light_attack_left.damage_window_start = 0.35
--Weapons.bastard_sword_template.actions.action_one.light_attack_left.damage_window_end = 0.55
Weapons.bastard_sword_template.actions.action_one.light_attack_right.anim_time_scale = 1.125
Weapons.bastard_sword_template.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.735
Weapons.bastard_sword_template.actions.action_one.light_attack_right.allowed_chain_actions[3].start_time = 0.67
Weapons.bastard_sword_template.actions.action_one.light_attack_right.allowed_chain_actions[5].start_time = 0.67
Weapons.bastard_sword_template.actions.action_one.light_attack_right.damage_window_end = 0.55
--Light 3/Pushstab
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.damage_profile = "medium_slashing_smiter_2h"
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.allowed_chain_actions[1].start_time = 0.775
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.allowed_chain_actions[3].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.light_attack_uppercut.allowed_chain_actions[5].start_time = 0.62
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.91
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.allowed_chain_actions[3].start_time = 0.73
Weapons.bastard_sword_template.actions.action_one.light_attack_bopp.allowed_chain_actions[4].start_time = 0.73
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
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.damage_profile = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.allowed_chain_actions[1].start_time = 0.37
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.49
--Lights 3/4
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right_diagonal.allowed_chain_actions[1].start_time = 0.43
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.42
--Pushstab
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.damage_profile_left = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.damage_profile_right = "light_blunt_tank_dual"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.dual_wield_hammer_sword_template.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.damage_window_start = 0.3
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_bopp.damage_window_end = 0.45
--Heavies
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.hit_mass_count = nil
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.allowed_chain_actions[1].start_time = 0.60
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.allowed_chain_actions[2].start_time = 0.60
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.hit_mass_count = nil
--Dodge/Block/etc
Weapons.dual_wield_hammer_sword_template.dodge_count = 4
--------------------------------------------------------------Tuskgor Spear-----------------------------------------------------------------------
--Lights 1/2/4/Pushstab
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_left.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.anim_time_scale = 0.9
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_1.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_heavy_spears_template.actions.action_one.default_left.allowed_chain_actions[2].sub_action = "heavy_attack_left"
Weapons.two_handed_heavy_spears_template.actions.action_one.default_left.allowed_chain_actions[6].sub_action = "heavy_attack_left"
Weapons.two_handed_heavy_spears_template.actions.action_one.default_left.anim_event = "attack_swing_charge_stab"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_2.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_2.allowed_chain_actions[1].start_time = 0.4
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_stab_2.allowed_chain_actions[2].start_time = 0.4
--Lights 3/Pushstab
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.51
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.allowed_chain_actions[2].start_time = 0.51
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_linesman_spear"
Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default_last_1"
--Weapons.two_handed_heavy_spears_template.actions.action_one.light_attack_bopp.allowed_chain_actions[2].sub_action = "default_last_1"
--Heavies
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.48
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.allowed_chain_actions[2].start_time = 0.48
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.allowed_chain_actions[3].start_time = 0.48
Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_left.allowed_chain_actions[5].start_time = 0.48
--Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.allowed_chain_actions[1].sub_action = "default_last_1"
--Weapons.two_handed_heavy_spears_template.actions.action_one.heavy_attack_tank.allowed_chain_actions[2].sub_action = "default_last_1"
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
Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.damage_window_end = 0.45
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
-----------------------------------------------Ranged---------------------------------------------------------
--Dodge/Ammo/Reload/Etc
Weapons.repeating_handgun_template_1.ammo_data.reload_time = 1.5
Weapons.repeating_handgun_template_1.ammo_data.max_ammo = 32
Weapons.repeating_handgun_template_1.dodge_count = 4
Weapons.repeating_handgun_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.2
Weapons.repeating_handgun_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.2

--Dodge/Ammo/Reload/Etc
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
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.anim_time_scale = 1.05
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
--Light 3/4
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.hit_mass_count = nil
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_last.damage_window_end = 0.42
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.range_mod = 1.2
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.anim_time_scale = 0.95
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.allowed_chain_actions[1].start_time = 0.55
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_down.allowed_chain_actions[2].start_time = 0.55
--Heavies
Weapons.one_handed_hammer_template_2.actions.action_one.heavy_attack_left.range_mod = 1.2 --0
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
--Lights/Pushstab
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.damage_profile = "medium_slashing_linesman"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.5
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.allowed_chain_actions[2].start_time = 0.5
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.allowed_chain_actions[3].start_time = 0.5
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.damage_profile = "medium_slashing_linesman"
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.5
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.allowed_chain_actions[2].start_time = 0.5
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.allowed_chain_actions[3].start_time = 0.5
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_linesman"

--Heavies
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.45
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[2].start_time = 0.45
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[3].start_time = 0.45
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[5].start_time = 0.45
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.45
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.45
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[3].start_time = 0.45
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[5].start_time = 0.45
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.damage_window_start = 0.3
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.damage_window_end = 0.5
--Dodge/Block/etc
Weapons.two_handed_picks_template_1.dodge_count = 3
Weapons.two_handed_picks_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_picks_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------1h Axe-------------------------------------------------------------------------------------------
--Lights/Pushstab
DamageProfileTemplates.light_slashing_smiter_diag.default_target.boost_curve_coefficient_headshot = 2
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.51
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.allowed_chain_actions[2].start_time = 0.51
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.one_hand_axe_template_2.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.one_hand_axe_template_2.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_diag"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.48
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions[2].start_time = 0.48
--Dodge/Block/etc
Weapons.one_hand_axe_template_2.dodge_count = 5
-------------------------------------------------------Dual Axes----------------------------------------------------------------------------------
--Pushstab
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.damage_profile_left = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.damage_profile_right = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axes_template_1.actions.action_one.push.fatigue_cost = "action_stun_push"
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
Weapons.dr_deus_01_template_1.dodge_count = 2
Weapons.dr_deus_01_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.dr_deus_01_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1

--Dodge/Ammo/Reload/Etc
Weapons.heavy_steam_pistol_template_1.ammo_data.reload_time = 1.5
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
Weapons.one_handed_throwing_axes_template.dodge_count = 3
Weapons.one_handed_throwing_axes_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.one_handed_throwing_axes_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--///////////////////////////////////////////////Kerillian////////////////////////////////////////////////////////////////////////////////////////
-------------------------------------------------1h Axe-------------------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.allowed_chain_actions[1].start_time = 0.55
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.allowed_chain_actions[2].start_time = 0.55
Weapons.we_one_hand_axe_template.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.we_one_hand_axe_template.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
--Dodge/Block/etc
Weapons.we_one_hand_axe_template.dodge_count = 5
-------------------------------------------------Sword and Dagger---------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push_stab.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push.fatigue_cost = nil
--Heavies
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.additional_critical_strike_chance = nil
--Dodge/Block/etc
Weapons.dual_wield_sword_dagger_template_1.dodge_count = 4
Weapons.dual_wield_sword_dagger_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_sword_dagger_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15

Weapons.dual_wield_sword_dagger_template_1.block_fatigue_point_multiplier = 0.5
Weapons.dual_wield_sword_dagger_template_1.outer_block_fatigue_point_multiplier  = 2
-------------------------------------------------1h Sword-----------------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_finesse"
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.range_mod = 1.2

--Heavies
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_left.additional_critical_strike_chance = nil
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.additional_critical_strike_chance = nil
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_right.additional_critical_strike_chance = nil

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
--Lights 1/2/3/4/Pushstab
--DamageProfileTemplates.light_fencer_stab_diag.targets[1].boost_curve_coefficient_headshot = 2
--DamageProfileTemplates.light_fencer_stab_diag.armor_modifier.attack = { 1, 0.3, 1, 1, 1, 0.3 }
--DamageProfileTemplates.light_fencer_stab_diag.critical_strike.attack_armor_power_modifer = {	1, 0.5, 1, 1, 0.5 }


--Dodge/Block/etc
Weapons.dual_wield_daggers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_daggers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25

Weapons.dual_wield_daggers_template_1.max_fatigue_points = 6
Weapons.dual_wield_daggers_template_1.block_angle = 45
Weapons.dual_wield_daggers_template_1.block_fatigue_point_multiplier = 0.25
-------------------------------------------------Glaive-------------------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.hit_mass_count = nil
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.range_mod = 1.4
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_first.damage_profile = "heavy_slashing_smiter_executioner"
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.range_mod = 1.4
Weapons.two_handed_axes_template_2.actions.action_one.heavy_attack_down_second.damage_profile = "heavy_slashing_smiter_executioner"

--Dodge/Block/etc
Weapons.two_handed_axes_template_2.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_axes_template_2.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------Greatsword-----------------------------------------------------------------------
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
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.51
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.allowed_chain_actions[2].start_time = 0.51
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.one_hand_axe_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.one_hand_axe_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_diag"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.48
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[2].start_time = 0.48
--Dodge/Block/etc
Weapons.one_hand_axe_template_1.dodge_count = 5
-------------------------------------------------Billhook-----------------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab.damage_profile = "medium_slashing_smiter_stab_elf"
Weapons.two_handed_billhooks_template.actions.action_one.light_attack_stab_2.damage_profile = "medium_slashing_smiter_stab_elf"
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
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.damage_profile = "light_slashing_smiter_diag_dual_L"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_down_left.anim_time_scale = 1.3
--Lights 2/3/Pushstab
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.allowed_chain_actions[1].start_time = 0.47
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right_diagonal.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_left_diagonal.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Heavies
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.damage_profile_left = "light_slashing_smiter_stab_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack.damage_profile_right = "light_slashing_smiter_stab_dual"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.damage_profile_left = "light_slashing_linesman_dual_medium"
Weapons.dual_wield_axe_falchion_template.actions.action_one.heavy_attack_2.damage_profile_right = "light_slashing_linesman_dual_medium"
--Dodge/Block/etc
Weapons.dual_wield_axe_falchion_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_axe_falchion_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
-------------------------------------------------Rapier-------------------------------------------------------------------------------------------
--Lights/Pushstab
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.anim_time_scale = 0.925
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left.total_time = 1.2
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.anim_time_scale = 0.925
Weapons.fencing_sword_template_1.actions.action_one.light_attack_right.total_time = 1.2
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.anim_time_scale = 1.65
Weapons.fencing_sword_template_1.actions.action_one.light_attack_left_last.total_time = 1.2
Weapons.fencing_sword_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.fencing_sword_template_1.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.fencing_sword_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 0.975
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.total_time = 1.2
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[2].start_time = 0.35
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[4].start_time = 0.35
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
--Lights 3/4/Pushstab
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
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.anim_time_scale = 1.05
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_tank_diag"
--Light 3/4
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.hit_mass_count = nil
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_03.damage_window_end = 0.42
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.range_mod = 1.2
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.anim_time_scale = 0.95
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.allowed_chain_actions[1].start_time = 0.55
Weapons.one_handed_hammer_priest_template.actions.action_one.light_attack_04.allowed_chain_actions[2].start_time = 0.55
--Heavies
Weapons.one_handed_hammer_priest_template.actions.action_one.heavy_attack_01.range_mod = 1.2 --0
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
Weapons.wh_deus_01_template_1.dodge_count = 3
Weapons.wh_deus_01_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.wh_deus_01_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
Weapons.wh_deus_01_template_1.ammo_data.ammo_per_reload = 1
Weapons.wh_deus_01_template_1.ammo_data.max_ammo = 16
Weapons.wh_deus_01_template_1.ammo_data.ammo_per_clip = 3
Weapons.wh_deus_01_template_1.ammo_data.reload_time = 0.75

--Dodge/Ammo/Reload/Etc
Weapons.repeating_pistol_template_1.dodge_count = 3
Weapons.repeating_pistol_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.repeating_pistol_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15

--Dodge/Ammo/Reload/Etc
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
--//////////////////////////////////////////////////////////Sienna////////////////////////////////////////////////////////////////////////////////
----------------------------------------------------------2h Mace---------------------------------------------------------------------------------
--Lights 1/2
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.damage_profile = "medium_blunt_smiter_2h_hammer"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.8
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.allowed_chain_actions[3].start_time = 0.67
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.allowed_chain_actions[4].start_time = 0.68
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.1
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.damage_profile = "medium_blunt_smiter_2h_hammer"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.allowed_chain_actions[3].start_time = 0.6
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.allowed_chain_actions[4].start_time = 0.6
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.anim_time_scale = 1.05
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.hit_mass_count = nil
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.additional_critical_strike_chance = 0.1
--Lights 3/4/Pushstab
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.damage_profile = "medium_blunt_tank"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.allowed_chain_actions[3].start_time = 0.6
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.allowed_chain_actions[4].start_time = 0.6
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.1
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.damage_profile = "medium_blunt_tank"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.65
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[3].start_time = 0.6
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[4].start_time = 0.6
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.1
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.damage_profile = "medium_blunt_tank"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.66
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[3].start_time = 0.65
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[5].start_time = 0.64
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
--Heavies
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.damage_profile = "priest_hammer_blunt_smiter"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.slide_armour_hit = true
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.slide_armour_hit = true
--Dodge/Block/etc
Weapons.one_handed_hammer_wizard_template_1.max_fatigue_points = 8
Weapons.one_handed_hammer_wizard_template_1.dodge_count = 3
Weapons.one_handed_hammer_wizard_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.one_handed_hammer_wizard_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.1
-------------------------------------------------------Sienna Dagger------------------------------------------------------------------------------
--Dodge/Block/etc
Weapons.one_handed_daggers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.one_handed_daggers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
Weapons.one_handed_daggers_template_1.block_angle = 45
Weapons.one_handed_daggers_template_1.block_fatigue_point_multiplier = 0.25
-------------------------------------------------------Flaming Sword------------------------------------------------------------------------------
--Lights 1/2/Pushstab
--Weapons.flaming_sword_spell_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_dual"
--Weapons.flaming_sword_spell_template_1.actions.action_one.light_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Weapons.flaming_sword_spell_template_1.actions.action_one.light_attack_left.anim_time_scale = 1.4
--Weapons.flaming_sword_spell_template_1.actions.action_one.light_attack_right_diagonal.damage_profile = "light_slashing_linesman_dual"
--Weapons.flaming_sword_spell_template_1.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Weapons.flaming_sword_spell_template_1.actions.action_one.light_attack_right.anim_time_scale = 1.4
--.flaming_sword_spell_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman_dual"
--Weapons.flaming_sword_spell_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--Weapons.flaming_sword_spell_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1.4

--Lights 3/4
--Weapons.flaming_sword_spell_template_1.actions.action_one.light_attack_stab.anim_time_scale = 1.4

--Heavies
--Weapons.flaming_sword_spell_template_1.actions.action_one.heavy_attack_left.damage_profile = "priest_hammer_blunt_smiter"

--Dodge/Block/etc
--Weapons.flaming_sword_spell_template_1.dodge_count = 3
--Weapons.flaming_sword_spell_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
--Weapons.flaming_sword_spell_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
-------------------------------------------------------Flaming Flail------------------------------------------------------------------------------
--Lights 1/2
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.damage_profile = "medium_blunt_tank"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_left.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.damage_profile = "medium_blunt_tank"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
--Lights 3/4/Pushstab
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_last.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_down.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_down.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_smiter_2h"
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.anim_time_scale = 1
Weapons.one_handed_flails_flaming_template.actions.action_one.light_attack_bopp.hit_mass_count = nil
--Heavies
Weapons.one_handed_flails_flaming_template.actions.action_one.heavy_attack.impact_explosion_template = nil
--Dodge/Block/etc
Weapons.one_handed_flails_flaming_template.dodge_count = 3
Weapons.one_handed_flails_flaming_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.one_handed_flails_flaming_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--------------------------------------------------------------Crowbill----------------------------------------------------------------------------
--Lights 1/2/3/4/Pushstab
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.allowed_chain_actions[4].start_time = 0.41
Weapons.one_handed_crowbill.actions.action_one.push.allowed_chain_actions[3].start_time = 0.3
Weapons.one_handed_crowbill.actions.action_one.push.allowed_chain_actions[4].start_time = 0.3
Weapons.one_handed_crowbill.actions.action_one.push.allowed_chain_actions[5].start_time = 0.3
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_smiter_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.allowed_chain_actions[3].start_time = 0
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.allowed_chain_actions[4].start_time = 1.5
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.allowed_chain_actions[5].start_time = 0.43
--Heavies
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.damage_profile = "medium_slashing_smiter_1h_axe"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.damage_profile = "medium_slashing_smiter_1h_axe"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_right_up.damage_profile = "medium_slashing_smiter_1h_axe"
--Dodge/Block/etc
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

--25/6 Finesse 20/5 1h 15/4 Duals-2h Lite 10/3 Super Heavy Weapon
--25/5 Staves/HiCap 20/4 BoP 15/3 Shotgun/Throwables 10/2 Sniper
--Lonk Says lower block MS on Billhook so do it to the other spears too


