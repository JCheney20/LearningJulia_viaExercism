function secret_handshake(code)
    mask = BitArray([parse(Int, c) for c in bitstring(code)][end-4:end])
    all_actions = ["jump", "close your eyes", "double blink", "wink"]
    actions = mask[1] ? all_actions[mask[2:end]] : reverse(all_actions[mask[2:end]])
end
