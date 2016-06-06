
## 1.
## Write a program to print the sum and difference of two numbers
## Assume the numbers are 100 and 80

    a = 100
    b = 80
    sum = a + b
    diff = a - b
    puts sum
    puts diff

## 2.
## Write a method `add` that takes two numbers as arguments,
## and returns their sum
## Execute the method with values 1000 and 500   


    def add(a, b)
      a + b
    end

    sum = add(1000, 500)
    puts sum

## 3.
## Write a method that checks if a given number is even or odd
## if it is even, print 'even', otherwise print 'odd'
## Execute for 1, 2, 10, 221, 0


    def even_odd(num)
      if num % 2 == 0
        puts "even"
      else
        pits "odd"
      end
    end

    even_odd 1
    even_odd 2
    even_odd 10
    even_odd 221
    even_odd 0

