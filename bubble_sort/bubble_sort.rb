def bubble_sort(array)
  loop do
    sorted = true
    array.each_with_index do |_, i|
      next unless i < array.length - 1
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]
      sorted = false
    end
    break if sorted
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
