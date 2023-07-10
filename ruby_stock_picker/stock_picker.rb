def stock_picker(stock_prices)
  best_profit = 0
  result = []
  stock_prices.each_with_index do |price2buy, day2buy|
    profit, day2sell = stock_prices[day2buy..].map { |price2sell| price2sell - price2buy }.each_with_index.max
    if profit > best_profit
      best_profit = profit
      result = [day2buy, day2sell + day2buy]
    end
  end
  result
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 0])
#   => [1,4]  # for a profit of $15 - $3 == $12
# [best_day_to_buy, best_day_to_sell]
