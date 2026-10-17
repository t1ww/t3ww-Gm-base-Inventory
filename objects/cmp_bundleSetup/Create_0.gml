/// @description > cmp_itemsTag create event
// > code here
// Inherit the parent event
event_inherited();

// Items bundle setup - Defining possible bundles and results
on_init = function() {
	global.bundle = {};
	#macro BUNDLE global.bundle

	with (BUNDLE) {
		// Name str
		// Bundlable []
		// Finish validations function
		sandwich = {}
		with (sandwich) {
			name = "Sandwich";
			// Assign tag into bundle
			bundlable = ITEM_TAG.can_be_sandwich;
			
			// Loop through items in bundlable tag and set bundle = self (sandwich)
			
			
			// If this pass, let the item in, creates the unfinished bundle
			validation = function(_adding_item) {
				// Can be sandwich
				// check bundlable
			}
			
			// If this pass, mark as finished bundle, can be use as thier indended use
			// Can still manipulated as bundle, add things with left clicks, 
			// or remove things with right click
			finish = function() {
				// There must be at least 2 breads
			}
	
			// Helper function to add item
			add_item = function(_adding_item) {
				// Check validation
			}
	
			// Function defining use of the bundle
			on_use = function() {
				// Eat	
			}
		}
	}
}
