def sort(array)
  interval = array.length / 2
  while interval > 0
    (interval...array.length).each do |index|
      insertion_sort(array, index, interval)
    end
    interval = interval / 2
  end
  array
end

def trigger_insertion_sort?(array, index, interval)
  index >= interval && array[index] < array[index - interval]
end

def swap_elements(array, index, interval)
  array[index], array[index-interval] = array[index-interval], array[index]
end

def insertion_sort(array, index, interval)
  while trigger_insertion_sort?(array, index, interval)
    swap_elements(array, index, interval)
    index -= interval
  end
end

p sort([27, 15, 26, 65, 21, 34, 5, 40, 54, 45, 100, 32, 49, 74, 5])
