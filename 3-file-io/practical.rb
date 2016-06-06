
## 2. Sum of Squares of numbers
## Write a program to print the sum of squares of numbers till n
## take n from the command line
## 


def sum_of_squares(n)
  sum = 0
  (1..n).each do |i|
    sum += i ** 2
  end
  sum
end

n = ARGV[0]
sum n
