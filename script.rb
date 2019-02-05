def bubble_sort(arr)
  for i in 0...arr.length-1
    for j in 0...(arr.length - i - 1)
      if arr[j+1] < arr[j]
        temp = arr[j+1]
        arr[j+1] = arr[j]
        arr[j] = temp
      end
    end
  end
  print arr
end

bubble_sort([2,5,7,0,1,8])
puts
bubble_sort([1,1,3,3,2,6,5,5,7,9,7])

# Try to understand why we use yield
# def compareTo(left, right)
  # return left.length > right.length
# end


def bubble_sort_by(arr);
 for i in 0...arr.length-1
    for j in 0...(arr.length - i - 1)
      if yield(arr[j],arr[j+1])
        temp = arr[j+1]
        arr[j+1] = arr[j]
        arr[j] = temp
      end
    end
  end
  print arr
end



puts
bubble_sort_by(["Hi","Hello", "Hell", "hiiiiii5", "hiiii4"]) { |left, right| left.length > right.length }
puts
bubble_sort_by(["Hi","Hello", "Hell", "hiiiiii5", "hiiii4"]) { |left, right| left.length < right.length }
puts
bubble_sort_by(["Hi","Hello", "Hell", "hiiiiii5", "hiiii4"]) { |left, right| left[1].length < right[1].length }
