def stock_picker(prices)
  day_to_buy = nil
  day_to_sell = nil
  highest_profit = 0

  prices.each_with_index do |price, index|
    highest_day = prices[(index + 1)..].max
    next unless highest_day

    if highest_day - price > highest_profit
      day_to_buy = index
      day_to_sell = prices[(index + 1)..].find_index(highest_day) + index + 1
      highest_profit = highest_day - price
    end
    next
  end
  [day_to_buy, day_to_sell]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
