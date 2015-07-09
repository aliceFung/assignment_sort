class Sorts

  def insertion_sort(array)
    sorted = [array[0]]

    next_item = array[1]
    counter = -1
    until next_item < sorted[counter]
      sorted[counter] = sorted[counter-1]
      # sorted[-1] = sorted[-2]
      next_item = sorted[counter-2]
      counter -= 1
    else
      sorted << next_item
    end


    array.each do |item|
      minimum = item if item < minimum
    end

    sorted << minimum

  end
  #last_sorted = 0
  def insert(array, last_sorted, first_unsorted)

    while last_sorted <= 0 &&


  end
  3
  1,7,2,5



end