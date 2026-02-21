/// @description -- cont_game_test_inventory
// code here > testing keybinds
if (keyboard_check_pressed(input.inventory_toggle)) {
	main_inventory.active = !main_inventory.active;
	// Closing chest
	cont_inventory.sub_inventroy.active = false;
	cont_inventory.sub_inventroy = null;
}
