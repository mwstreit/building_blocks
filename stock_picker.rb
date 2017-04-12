#takes an array of stock prices, one for each day.  returns a pair of days
#best day to buy and best day to sell.  Days start at 0. must buy before selling

prices = [13,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  profit = 0
  buy_day = 0
  sell_day = 0
  prices.each_with_index do |buy, day|
    prices.each_with_index do |sell, day2|
      if day2 > day && sell - buy > profit
        profit = sell - buy
        buy_day = day
        sell_day = day2
      end
    end
  end
  puts "Buy on day #{buy_day}, sell on day #{sell_day} for a profit of $#{profit}"
end

stock_picker(prices)
