class Sorts

  def insertion_sort(array)

    (1...array.length).each do |first_index|

      current_number = array[first_index]
      second_index = first_index - 1 #[2]
      #7 > 2
      while second_index >= 0 && array[second_index] > current_number
        array[second_index+1] = array[second_index]
        second_index -= 1
      end
      array[second_index+1] = current_number
    end
    array
  end

  def bubble_sort(array)

    length = array.length

    (length-1).times do
      (0...length-1).each do |index|
        if array[index] > array[index+1]
          array[index], array[index+1] = array[index+1], array[index]
        end
      end
      length -=1
    end
    array

    # until swap == false

    #   swap = false
    #   (0...array.length).each do |index|

    #     if array[index] > array[index+1]
    #       array[index], array[index+1] = array[index+1], array[index]
    #       swap = true
    #     end
    #   end
    # end

  end


end