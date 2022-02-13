# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  m1 = arr.sort!.pop
  m2 = arr.pop
  if m1 == nil
    m1 = 0
  end
  if m2 == nil
    m2 = 0
  end
  return m1 + m2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  h = {}
  arr.each_with_index do |a, i|
    m = n - a
    return true if h[m]
    h[a] = i
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return (s =~ /[bcdfghjklmnpqrstvwxyz]/i) == 0
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not(s.is_a? Integer) and !(s =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn,price)
    if isbn.size == 0 || price<=0
      raise(ArgumentError)
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%0.2f",@price)
  end
end
