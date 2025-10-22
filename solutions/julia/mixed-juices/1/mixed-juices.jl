const wedges = [(size="small", wedges=6), (size="medium", wedges=8), (size="large", wedges=10)]

function time_to_mix_juice(juice)
    if juice == "Pure Strawberry Joy"
        return 0.5
    elseif juice == "Energizer" || juice == "Green Garden"
        return 1.5
    elseif juice == "Tropical Island"
        return 3
    elseif juice == "All or Nothing"
        return 5
    else
        return 2.5
    end
end

function num_wedges(size)
    if size == "small"
        return 6
    elseif size == "medium"
        return 8
    elseif size == "large"
        return 10
    end
end


function limes_to_cut(needed, limes)
    wedges = 0
    limes_cut = 0
    while !isempty(limes)
        if wedges >= needed
            return limes_cut
        end
        limes_cut += 1
        wedges += num_wedges(popfirst!(limes))
    end
    return limes_cut
end

order_times(orders) = [time_to_mix_juice(juice) for juice in orders]

function remaining_orders(time_left, orders)
    if sum(order_times(orders)) <= time_left
        return []
    end
    while !isempty(orders)
        if (time_left - time_to_mix_juice(orders[1])) > 0
            time_left -= time_to_mix_juice(orders[1])
            popfirst!(orders)
        else
            popfirst!(orders)
            break
        end
    end
    orders
end
