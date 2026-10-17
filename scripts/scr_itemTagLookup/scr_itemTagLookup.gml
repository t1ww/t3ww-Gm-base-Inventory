// User-Generated Script.gml - description
// > code here
// Scripts / item_has_tag
function item_has_tag(_item, _tag) {
    if (!variable_struct_exists(_item, "tags")) {
        return false;
    }

    return array_contains(_item.tags, _tag);
}
