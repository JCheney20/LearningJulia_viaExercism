using DataStructures

create_inventory(items) = counter(items)

add_items(inventory, items) = merge(Dict(haskey(inventory, k) ? k => inventory[k] + v : k => v for (k, v) in create_inventory(items)), Dict(k => v for (k, v) in inventory if !haskey(create_inventory(items), k)))

decrement_items(inventory, items) = Dict(v <= 0 ? k => 0 : k => v for (k, v) in Dict(haskey(create_inventory(items), k) ? k => v - create_inventory(items)[k] : k => v for (k, v) in inventory))

remove_item(inventory, item) = Dict(delete!(inventory, item))

list_inventory(inventory) = sort([x for x in Dict(x for x in inventory if x.second > 0)])
