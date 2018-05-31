def prime_factors(num)
    prime_array = []
     n = 2
    if num <= 2
      return n
    end
    while n <= num
        until num % n != 0
          prime_array << n
          num = num/n
        end
      n += 1
    end
    prime_array
end


p prime_factors(123123123)
