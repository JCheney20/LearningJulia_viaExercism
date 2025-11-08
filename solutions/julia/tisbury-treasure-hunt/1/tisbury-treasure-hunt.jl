get_coordinate(line) = line[2]

convert_coordinate(coordinate) = Tuple(coordinate)

compare_records(azara_record, rui_record) = convert_coordinate(azara_record[2]) == rui_record[2]

create_record(azara_record, rui_record) = compare_records(azara_record, rui_record) ? (azara_record[2], rui_record[1], rui_record[3], azara_record[1]) : ()
