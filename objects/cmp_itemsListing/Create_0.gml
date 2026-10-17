/// @description > objectname eventname event
// > code here
// Inherit the parent event
event_inherited();

// NOTE: We'll break this down to multiple category cmps when it grows bigger
// Create items
on_init = function() {
	// Items setup
	global.item = {};
	#macro ITEM global.item

	with (ITEM) {
		// Its nothing, also serves as example really well
		nothing = {
			id: -1,
			name: "nothing",
			description: "-",
			tool_tip: "shows you that the inventory index is empty",
			type: ItemType.none,
			consumable: false,
			material: false,
			stack_size: 1,
			price: 0,
			sprite: icon_item,
			on_use: function(){}
		}
		// Consumable example
		apple = {
			id: 1,
			name: "apple",
			description: "Keeps the doctors away!",
			tool_tip: "+1 hp",
			type: ItemType.Food,
			consumable: true,
			material: false,
			stack_size: 9999,
			price: 10,
			sprite: spr_item_apple,
			on_use: function() {
				show_debug_message("used apple");
				// eat(); // run eating state / animation?
				// hp += 1;
			}
		};
		bread = {
			id: 2,
			name: "bread",
			description: "High in carbs!",
			tool_tip: "+1 hp, Can bundle into sandwich",
			type: ItemType.Food,
			consumable: true,
			material: false,
			stack_size: 9999,
			price: 10,
			sprite: spr_item_apple,
			on_use: function() {
				show_debug_message("used bread");
				// eat(); // run eating state / animation?
				// hp += 1;
			}
		};
		ham = {
			id: 3,
			name: "ham",
			description: "",
			tool_tip: "+1 hp, Can bundle into sandwich",
			type: ItemType.Food,
			consumable: true,
			material: false,
			stack_size: 9999,
			price: 10,
			sprite: spr_item_apple,
			on_use: function() {
				show_debug_message("used ham");
				// eat(); // run eating state / animation?
				// hp += 1;
			}
		};
		cheese_slice = {
			id: 2,
			name: "A slice of cheese",
			description: "Stringy when heated",
			tool_tip: "+2 hp, Can bundle into sandwich",
			type: ItemType.Food,
			consumable: true,
			material: false,
			stack_size: 9999,
			price: 11,
			sprite: spr_item_apple,
			on_use: function() {
				show_debug_message("used cheese slice");
				// eat(); // run eating state / animation?
				// hp += 2;
			}
		};
		// equipment example
		hat = {
			id: 10,
			name: "hat",
			description: "wear it on your head",
			tool_tip: "+1 def",
			type: ItemType.Armor,
			consumable: false,
			material: false,
			stack_size: 1,
			price: 25,
			sprite: spr_item_hat,
			on_use: function() {
				show_debug_message("wearing a hat");
				def += 1;
			},
			equip: function() {
				show_debug_message("wearing a hat");
				def += 1;
			},
			dequip: function() {
				def -= 1;
			},
		};
	}
}
