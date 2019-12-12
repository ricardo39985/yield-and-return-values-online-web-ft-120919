require 'pry'

def hello(array)
  i = 0
  new_array = []
  while i < array.length
    new_array.push(yield(array[i]))
    i += 1
  end
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
