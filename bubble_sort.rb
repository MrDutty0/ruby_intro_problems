def bubble_sort(arr)
  repeat_times = arr.length - 1
  loop do
    last_swapped = 1

    1.upto(repeat_times) do |i|
      if arr[i - 1] > arr[i]
        arr[i - 1], arr[i] = arr[i], arr[i - 1]
        last_swapped = i
      end
    end

    repeat_times = last_swapped - 1
    break if last_swapped <= 1
  end
  arr
end

p bubble_sort([4,3,78,2,0,2]) # => [0,2,2,3,4,78]