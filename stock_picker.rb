def stock_picker(prices)
  days = []
  highest_profit = 0

  prices.each_with_index do |price, index|
    highest_day = prices[(index + 1)..].max
    next unless highest_day

    if highest_day - price > highest_profit
      days = [index, prices[(index + 1)..].find_index(highest_day) + index + 1]
      highest_profit = highest_day - price
    end
    next
  end
  days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4]
