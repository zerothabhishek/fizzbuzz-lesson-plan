
## 1. FizzBuzz
## Loop through numbers 1 to 100,
## If the number is divisible by 3, print "fizz"
## If the number is divisible by 5, print "buzz"
## If the number is divisible by both 3 and 5, print "fizzbuzz"
## Print the numbers too


(1..100).each{ |i|

  puts i
  if i%3 == 0 && i%5 == 0
    puts "fizzbuzz"
  elsif i%3 == 0
    puts "fizz"
  elsif i%5 == 0
    puts "buzz"
  end

}





## 2. Sum of Squares of numbers
## Write a function to print the sum of squares of numbers till n
## Test it for n: 2, 5, 30
## 



def sum_of_squares(n)
  sum = 0
  (1..n).each do |i|
    sum += i ** 2
  end
  sum
end

sum 2
sum 5
sum 30


