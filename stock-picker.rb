
def stock_picker(arr)
    len = arr.length()
    max_diff = -(2**(0.size * 8 -2)) 
    opt_buy = -1
    opt_sell = -1
    for i in 0...len do
        for j in (i + 1)...len do
            if arr[j] - arr[i] > max_diff 
                max_diff = arr[j] - arr[i]
                opt_buy = i
                opt_sell = j
            end
        end
    end
    return [opt_buy, opt_sell]
end


recommended = stock_picker([17,3,6,9,15,8,6,1,10])
puts recommended