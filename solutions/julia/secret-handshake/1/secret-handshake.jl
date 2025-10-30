function secret_handshake(code)
    mask = BitArray([parse(Int, c) for c in bitstring(code)][end-4:end])
    Reverse = mask[1]
    action_mask = mask[2:end]
    all_actions = ["jump", "close your eyes", "double blink", "wink"]

    actions = Reverse ? all_actions[action_mask] : reverse!(all_actions[action_mask])
end
