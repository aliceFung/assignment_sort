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
  end

  def merge_sort(array)
    return array if array.length <=1
    array1 = merge_sort(array[0..(array.length/2)])
    array2 = merge_sort(array[(array.length/2+1)..-1])
    merge(array1, array2)
    #recursive
    #split it up to one
    #merge into 2
    #merge into 4
    #...
  end

  def merge(array1, array2)
    result =[]
    until array1.empty? || array2.empty?
      if array1[0] < array2[0]
        result << array1.shift
      else
        result << array2.shift
      end
    end
    result += array1 + array2
  end


end