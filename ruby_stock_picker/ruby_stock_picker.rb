def stock_picker(prices)
  profit = 0
  profit_days = []

  prices.each_with_index do |price_of_day, price_of_day_index|
    next_prices = prices.drop(price_of_day_index + 1)

    next_prices.each do |next_price|
      difference = next_price - price_of_day

      if difference > profit
        profit = difference
        profit_days = [price_of_day_index, prices.index(next_price)]
      end
    end
  end
  profit_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
