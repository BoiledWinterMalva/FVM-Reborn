damage = 0
move_speed = 0
row = 0
damage_type = "pierce"
target_type = "rotate"

shape = 0

image_xscale = 1.6
image_yscale = 1.6
image_speed = 0

anim_timer = 0;

hitted_enemy = ds_list_create()
bullet_hit = false

ignore_list = ["mario_mouse","mario_pipeline","arno","pharaoh_coffin","temple_pharaoh","ice_residue","rumble","abyss_pharaoh",
				"pink_paul","paul_tentacle","blonde_mary","pete","pete_claw","pete_spike","barrier","hells_messenger","messenger_mace","messenger_poop",
				"needle_baron","fog_julie","lieutenant_buzz","irritable_jack","hot_vajra","hot_vajra_spike","huang_xiaoming",
				"angelababy","angelababy_diamond","mouse_train_1","captain_america_mouse","captain_rainbow","iron_man_mouse","mouse_train_2",
				"iron_man","spider_man_mouse","hulk_mouse","mouse_train_3","mermaid_mary","mermaid_wave","machine_shark_1",
				"lobster_knight","electric_jellyfish","jellyfish_bullet","war_god","war_god_duck","war_god_wood","hercules",
				"thor"
]

target_ignore = ["mole","bat_mouse","sawblade_mouse","dentist_mouse","baron_bats","paratrooper_mouse_shield","kamikaze_glider_mouse",
				"sardine_mouse"
]