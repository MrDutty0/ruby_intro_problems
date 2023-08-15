def stock_picker(stock_price = []) 
  ans = []
  left = 0
  biggest_profit = -2**63

  stock_price.each_with_index do |price, idx|
    curr_profit = price - stock_price[left]
    bought_price = stock_price[left]

    if curr_profit > biggest_profit
      ans = [left, idx]
      biggest_profit = curr_profit 
    end

    if price < bought_price
      left = idx
    end
  end
  ans
end