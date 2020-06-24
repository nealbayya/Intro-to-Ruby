

def bubble_sort(arr)
    limit = arr.length() - 1
    while limit > 0
        new_lim = 0
        for i in 0...limit
            if arr[i] > arr[i+1]
                temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
                new_lim = i
            end
        end
        limit = new_lim
    end

end





arr = [4,3,78,2,0,2]
bubble_sort(arr)
print arr