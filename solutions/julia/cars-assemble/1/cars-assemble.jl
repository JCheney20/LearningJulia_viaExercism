success_rate(speed) = speed <= 0 ? 0 : 1 ≤ speed ≤ 4 ? 1.0 : 5 ≤ speed ≤ 8 ? 0.9 : speed == 9 ? 0.8 : 0.77

production_rate_per_hour(speed) = 221 * speed * success_rate(speed)

working_items_per_minute(speed)::Int64 = production_rate_per_hour(speed) ÷ 60

