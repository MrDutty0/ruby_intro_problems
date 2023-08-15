def stock_picker(stock_price) 
  ans = []
  buy_idx = 0
  biggest_profit = 0

  stock_price.each_with_index do |price, idx|
    curr_profit = price - stock_price[buy_idx]

    if curr_profit > biggest_profit
      ans = [buy_idx, idx]
      biggest_profit = curr_profit 
    end

    if price < stock_price[buy_idx]
      buy_idx = idx
    end
  end
  ans
end

stock_picker([17,3,6,9,15,8,6,1,10]) # => [1,4] 