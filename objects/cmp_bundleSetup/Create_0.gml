/// @description > cmp_itemsTag create event
// > code here
// Inherit the parent event
event_inherited();

// Items bundle setup - Defining possible bundles and results
on_init = function() {
    global.bundle = {};
    #macro BUNDLE global.bundle

    BUNDLE.sandwich = {};
    with (BUNDLE.sandwich) {
        name = "Sandwich";
        bundlable = ITEM_TAG.can_be_sandwich;
		
        // Check whether an item is accepted.
        validation = function(_adding_item) {
            for (var i = 0; i < array_length(bundlable); i++) {
                if (bundlable[i].id == _adding_item.id) {
                    return true;
                }
            }

            return false;
        };

        // Create an empty assembly.
        create_bundle = function(_item1, _item2) {
			// Create the bundle's base
			var _created_bundle = {
				name: name,
				bundlable: bundlable,
				list: [_item1, _item2],
				description: "Who doesn't like sandwiches?",
				tool_tip: "",
				type: ItemType.Food,
				consumable: true,
				material: false,
				stack_size: 1,
			}
			// Functions to return attributes
			// Calculated price
			_created_bundle.price = function() {
				var _total_price = 0;
				for (var i = 0; i < array_length(list); i++) {
			        _total_price += list[i].price;
			    }
				return _total_price * 1.1;
			}
			// Sprite stacking
			_created_bundle.sprite = function() {
				var _sprites = [];
				for (var i = 0; i < array_length(list); i++) {
			        array_push(_sprites, list[i].sprite);
			    }
				return _sprites;
			}
			// Use the completed bundle.
	        _created_bundle.on_use = function() {
	            // Apply eating effects.
	            // Consume the assembled sandwich.
				for (var i = 0; i < array_length(list); i++) {
			        list[i].on_use();
			    }
				// Extra effect
				// apply_effect(effect.defense, 1, 600);
	        };
			
			
			// Bundle functions
			_created_bundle.add_item = function(_adding_item) {
	            if (!validation(_adding_item)) {
	                return false;
	            }

	            array_push(list, _adding_item);
	            return true;
	        };
			// Check whether the assembly is complete.
	        _created_bundle.finish = function(_ingredients) {
	            var _bread_count = 0;

	            for (var i = 0; i < array_length(_ingredients); i++) {
	                if (_ingredients[i].type == ItemType.Food) {
	                    // Replace with your actual bread-tag check.
	                    if (_ingredients[i].id == ITEM.bread.id) {
	                        _bread_count++;
	                    }
	                }
	            }

	            return _bread_count >= 2;
	        };
			
			return _created_bundle;
		};
    }
};
