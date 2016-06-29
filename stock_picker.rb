def stock_picker(prices)
	sum = 0
	buy_day = -1
	sell_day = -1
	prices.each_with_index do |buy, i|
		prices.each_with_index do |sell, j|  
			if j > i then
				if sell - buy > sum then
					sum = sell - buy
					buy_day = i
					sell_day = j
				end
			end
		end
	end
	puts "buy on #{buy_day} and sell on #{sell_day} for a profit of #{sum}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([17,6,9,15,8,6,1,10, 3])