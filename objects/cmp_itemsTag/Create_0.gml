/// @description > cmp_itemsTag create event
// > code here
// Inherit the parent event
event_inherited();

// Item tags setup - Its like grouping
on_init = function() {
	global.item_tag = {};
	#macro ITEM_TAG global.item_tag

	with (ITEM_TAG) {
		can_be_sandwich = [ITEM.bread, ITEM.ham, ITEM.cheese_slice];
	}
}
