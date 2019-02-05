def bubble_sort(arr)
  #puts arr
  for i in 0...arr.length-1
    if arr[i+1] < arr[i]
      temp = arr[i+1]
      arr[i+1] = arr[i]
      arr[i] = temp
    end
  end
  print arr
end

  bubble_sort([2,5,7,0,1,8])
