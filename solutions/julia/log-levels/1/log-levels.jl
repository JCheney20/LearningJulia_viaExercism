splitter(msg) = split(msg, ": ")
message(msg) = strip(splitter(msg)[end])
log_level(msg) = lowercase(replace(splitter(msg)[1], "[" => "", "]" => ""))
reformat(msg) = "$(message(msg)) ($(log_level(msg)))"

