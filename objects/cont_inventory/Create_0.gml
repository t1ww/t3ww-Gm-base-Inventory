/// @description create -- cont_inventory
// code here >
// Singleton
if (instance_number(cont_inventory) > 1) {
	instance_destroy();
	show_error("Duplicated singleton - cont_inventory", true);
}
// Variable to use across the inventories
// Hovered inventory
focusing_inventory = null;
focusing_inventory_index = null;
// Opened inventory
// Primary / Main (such as player's)
main_inventory = null;
// Secondary / Sub (such as chest's)
sub_inventroy = null;
// Current nearest chest
nearest_chest = null;

// Create mouse inventory object
mouse = instance_create_layer(x, y, "Inventory", obj_inventory_mouse);

// DEBUG OVERLAY
focusing_inv_name = "None";
var _ref_inventory_name = ref_create(self, "focusing_inv_name")
dbg_watch(_ref_inventory_name, "Focusing inventory instance");
dbg_watch(ref_create(self, "focusing_inventory_index"), "Focusing inventory's index")
