function bob(stimulus)
    stim = replace(stimulus, r"[^a-zA-Z0-9?]" => "")
    just_letters = replace(stim, r"[0-9?]" => "")
    if strip(stim) == ""
        "Fine. Be that way!"
    elseif all(isuppercase, just_letters) && length(just_letters) > 1
        if last(stim) == '?'
            "Calm down, I know what I'm doing!"
        else
            "Whoa, chill out!"
        end
    elseif last(stim) == '?'
        "Sure."
    else
        "Whatever."
    end
end
