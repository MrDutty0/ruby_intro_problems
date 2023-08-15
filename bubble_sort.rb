def bubble_sort(arr)
  repeat_times = arr.length - 1
  loop do
    last_swapped = 1

    1.upto(repeat_times) do |i|
      if arr[i - 1] > arr[i]
        swap(arr, i - 1, i)
        last_swapped = i
      end
    end

    repeat_times = last_swapped - 1
    break if last_swapped <= 1
  end
  arr
end

def swap(arr, a_ind, b_ind)
  tmp = arr[a_ind]
  arr[a_ind] = arr[b_ind]
  arr[b_ind] = tmp
  return
end

bubble_sort([4,3,78,2,0,2]) # => [0,2,2,3,4,78]