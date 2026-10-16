// User-Generated Script.gml - Items setup
// code here >
// Setting types for item
enum ItemType {
	// As null
	none,
	
	// --- Components ---
	// Such as battery
	Component, Attachment,
	
	// --- Consumables ---
	// Use once and it's gone
	Usable, Potion, Food,
	
	// --- Reusable ---
	// Mostly utility items such as flashlight
	Reusable,
	
	// --- Permanent upgrades ---
	// Use once and it's gone and you can't use another one of the same item again
	// such as an artifact to increase your mana
	PermanentUpgrade, 
	
	// --- Weapons ---
	// -- Melee --
	// Uses two-hands holding
	Sword, Claymore,
	// Can dual wield as bundle
	Dagger, 
	
	// -- Ranged --
	// Use arrows
	Bow, Repeater, 
	// Use ammo
	Gun,
	RocketLauncher, GrenadeLauncher,
	// Use themselves
	Throwables,
	
	// -- Mage --
	Staff, Tome,
	
	// -- Tamer --
	Dart, Whip,
	
	// -- Equipment --
	Armor, Equipment, Augment,
	
	// --- Key items ---
	QuestItem, Key,
	
	// Just for counting
	total
}

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
		bundle: false,
		stack_size: 1,
		price: 0,
		sprite: spr_item_setup,
		use: function(){}
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
		bundle: false,
		stack_size: 9999,
		price: 10,
		sprite: spr_item_apple,
		use: function() {
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
		bundle: ITEM_TAG.can_be_sandwich,
		stack_size: 9999,
		price: 10,
		sprite: spr_item_apple,
		use: function() {
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
		bundle: ITEM_TAG.can_be_sandwich,
		stack_size: 9999,
		price: 10,
		sprite: spr_item_apple,
		use: function() {
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
		bundle: ITEM_TAG.can_be_sandwich,
		stack_size: 9999,
		price: 11,
		sprite: spr_item_apple,
		use: function() {
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
		bundle: false,
		stack_size: 1,
		price: 25,
		sprite: spr_item_hat,
		equip: function() {
			show_debug_message("wearing a hat");
			def += 1;
		},
		dequip: function() {
			def -= 1;
		},
	};
}

// Item tags setup - Its like grouping
global.item_tag = {};
#macro ITEM_TAG global.item_tag

with (ITEM_TAG) {
	can_be_sandwich = [ITEM.bread, ITEM.ham, ITEM.cheese_slice];
}

// crafting recipe

// should overwrite every items used "material -> true;"
// maybe create a function to add a recipe
//
