# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  else
    sum = 0
    # array.inject(0){|sum,x| sum + x }
    return arr.sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr.sum
  else
    arr.sort
    sum = arr.last(2).sum
    if arr.first(2).sum >= sum
      sum = arr.first(2).sum
    end
    return sum
  end
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length() == 0 or arr.length() == 1
    return false
  else
    for i in 0...(arr.length()-1) do
      for j in (i+1)...arr.length do
        sum = arr[i] + arr[j]
        if sum == n
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  if s.length() == 0
    return false
  elsif vowels.include? s[0] 
    return false
  elsif s[0].match?(/[A-Za-z]/)
    return true
  else
    return false
  end

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length() < 3
    if s.length() == 1 and s[0] == "0"
      return true
    end
    return false
  else
    if s !~ /[^01]/
      if s[s.length()-1] == "0" and s[s.length()-2]=="0"
        return true
      end
    end
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE

  @price
  @isbn

  def initialize(isbn, price)
    if price <=0
      raise ArgumentError.new("Error")
    end

    if isbn.length() == 0
      raise ArgumentError.new("Error")
    end

    @price = price
    @isbn = isbn
  end

  def price
    @price
  end

  def isbn
    @isbn
  end

  def price=(price)
    @price = price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price_as_string()
    return "$#{'%.2f' % price()}"
  end
end
