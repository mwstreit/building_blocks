#takes an array of stock prices, one for each day.  returns a pair of days
#best day to buy and best day to sell.  Days start at 0. must buy before selling

stock_price = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_price)

  sell_price = stock_price[1..stock_price.length].max #find highest price that isn't the first entry
  sell = stock_price.index(sell_price) #find index of highest price
  buy_price = stock_price[0..sell].min #find lowest price that comes before the highest price
  buy = stock_price.index(buy_price) #find index of lowest price

  puts "Buy: #{buy}, Sell: #{sell}"
  puts "Profit: $#{sell_price - buy_price}"

end

stock_picker(stock_price)
