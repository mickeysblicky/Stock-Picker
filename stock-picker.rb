
def stock_picker (arr)
    profits = []
    days = []
    arr.each_with_index do |price, day|
        arr.each_with_index do |pay, index|
            if index > day
                profit = price - pay
                if profit < 0 
                    profits.unshift(profit)
                end
            end
            $best = profits.min
            if price - pay == $best
                days.unshift(day, index)
            end
        end
    end
    $new_days = days[0..1]
    p $new_days
end

stock_picker([12, 6, 26, 6, 26, 19, 6, 26, 14])