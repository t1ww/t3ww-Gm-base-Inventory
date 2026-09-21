/// @description -- (testing cont_game)
// code here >
// Key input setup
input = {
	inventory_toggle: vk_tab
}

// Create the inventory controller
instance_create_layer(x, y, layer, cont_inventory);

// Create inventory + ui
main_inventory = instance_create_layer(x, y, "Inventory", obj_inventory_main);
main_inventory.set_array_size(29).set_grid_gap(10);

cont_inventory.main_inventory = main_inventory;

// DEBUG OVERLAY
dbg_section("Buttons");
dbg_button("add apple", function () {
	main_inventory.add_item(ITEM.apple, 15360);
});
