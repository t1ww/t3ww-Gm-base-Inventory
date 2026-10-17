/// @description > cont_itemsSetup create event
// > import here
import(cmp_itemsListing);
import(cmp_itemsTag);
import(cmp_bundleSetup);
// > code here
// Enum - Setting types for item
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

// Items setup - listing all items
cmp_itemsListing.init_on_instance(self);

// Item tags setup - Its like grouping
cmp_itemsTag.init_on_instance(self);

// Items bundle setup - Defining possible bundles and results
cmp_bundleSetup.init_on_instance(self);
