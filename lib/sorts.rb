class Sorts

  def insertion_sort(array)

    (1...array.length).each do |first_index|

      current_number = array[first_index]
      second_index = first_index - 1

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
    if array.length <= 1
      return array
    else
      array1 = merge_sort(array[0..(array.length/2-1)])
      array2 = merge_sort(array[(array.length/2)..-1])
      merge(array1, array2)
    end

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

  def benchmark(array)

    t0 = Time.now

    10000.times { insertion_sort(array) }

    puts "The time it took to run insertion_sort was #{Time.now-t0}"

    t0 = Time.now

    10000.times { bubble_sort(array) }

    puts "The time it took to run bubble_sort was #{Time.now-t0}"

    t0 = Time.now

    10000.times { merge_sort(array) }

    puts "The time it took to run merge sort was #{Time.now-t0}"

  end


end

s = Sorts.new

#s.benchmark(%w(20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0))

#s.benchmark(%w(5 1 3))

s.benchmark(Array.new(5000) {rand(0..100)})



