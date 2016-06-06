
#    Largest no. in array
#    2nd largest no.
#    Sum of digits in a number
#    Check if no. is prime
#
#    Palindrome
#    Count words
#    Longest line
#    n-Longest lines
#    Fuzzy search


## 1.
## Write a program to get the largest number in an array
## Assume the array is: [35, 2, 22, 44, -2]

arr = [35, 2, 22, 44, -2]
puts arr.max

### or

largest = arr[0]
arr.each do |element|
  if element > largest
    largest = element 
  end
end
puts largest

## 2.
## Write a program to get the largest number in an array
##  Assume the array is: [35, 2, 22, 44, -2]

arr = [35, 2, 22, 44, -2]
arr1 = arr.sort
l2 = arr1[-2]
puts l2

### or

l1 = arr[0]
l2 = arr[1]
arr.each do |element|
  if element > l1
    l2 = l1
    l1 = element
  end
  if element > l2 && element < l1
    l2 = element
  end
end
puts l2

## 3.
## Write a program to add the digits in a number
## eg: 123 gives 6, 334 gives 10, 011 gives 2
##

def sum_of_digits(num)
  str = num.to_s
  arr = str.chars
  arr1 = arr.map{ |c| c.to_i }
  sum = 0
  arr1.each do |i|
    sum += i
  end
  sum
end

puts sum_of_digits(123)
puts sum_of_digits(334)
puts sum_of_digits(011)

## 4.
## Check if no. is prime
## Write a function that checks if a given number is prime
## Check for 123, 4557, 2, 1

def prime?(num)
  is_prime = true
  first = 2
  last = num - 1

  (first..last.each do |x|
    if num % x == 0
      is_prime = false
      break
    end
  end

  is_prime
end

puts prime?(123)
puts prime?(4557)
puts prime?(2)
puts prime?(1)

## 5. Check if a string is Palindrome
## A string is Palindrome when it looks the same when reversed
## examples: malyaylam, abcba

def palindrome?(str)
  if str == str.reverse
    puts "yes"
  else
    puts "no"
  end
end

palindrome?("malyaylam")
palindrome?("abcba")


## 6. Word count
## Write a program to give the count of words in a paragraph
## assume word are separated by single space

def word_count(para)
  words = para.split(" ")
  words.size
end

para = "Hello how are you? I am fine thank you!"
puts word_count(para)


## 7. Longest line
## Write a program that reads a text file, and prints the longest line in it
## All lines have \n characters at the end

def longest_line1(filename)
  lines = File.readlines(filename)
  lines1 = lines.sort_by{ |line| line.size }
  lines1.last
end

## or

def longest_line2(filename)
  longest = ""
  File.open(filename, "r") do |f|
    f.each_line do |line|
      if line.size > longest.size
        longest = line
      end
    end
  end
  longest
end


