def stock_picker(array)
  best = {profit: 0, buy_day: 0, sell_day: 0}
  array.each_with_index do |buy, buy_day|
    array[(buy_day+1)..(array.length)].each_with_index do |sell, sell_day|
      if sell-buy > best[:profit]
        best = {
          profit: sell-buy,
          buy_day: buy_day,
          sell_day: sell_day+buy_day+1
        }
      end
    end
  end
  best
end

p stock_picker([30,3,6,9,15,8,6,1,20])