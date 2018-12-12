require 'pry'

def sort_array_asc(array)
  array.sort
end

# def sort_array_desc(array)
#   array.sort {|a,b| b <=> a}
# end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort {|a,b| a.length <=> b.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def swap_elements_from_to(array, index, destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.map {|name| name.gsub(name[2], "$")}
end

def find_a(array)
  array.select {|str| str.start_with?("a")}
end

def sum_array(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  sum
end

# def add_s(array)
#   array.map do |str|
#     if str != array[1]
#       str << "s"
#     else
#       str
#     end
#   end
# end

def add_s(array)
  array.each_with_index.collect do |element, index|
    if index != 1
      element << "s"
    else
      element
    end
  end
end
