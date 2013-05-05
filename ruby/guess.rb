number = rand(99)

puts 'guess the number'

guess = gets.to_i

until guess == number do
  if guess > number
    puts 'high'
    guess = gets.to_i
  else
    puts 'low'
    guess = gets.to_i
  end
end

puts 'correct!'
