numbers = (0...1000)

sum = 0

result = numbers.reduce(0) do |sum, n |
    if n % 3 == 0|| n % 5 == 0
        sum += n
    else
        sum
    end
end

puts result