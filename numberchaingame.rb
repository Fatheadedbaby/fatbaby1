puts 'Welcome to puzzle game Guess the next number!'

rn = 1 + rand(10)
rn2 = 1 + rand(5)
rn3 = 1 + rand(15)
rn4 = 1 + rand(20)

non = 1
hp = 100
rhp = 75
life = 1

puts 'Welcome to level 1'
puts 'HP: ' + hp.to_s
puts 'What is the next number in the chain?'

rc = rn + rn2 - rn3 
print rc.to_s + ', ' 
until non==3
	non = non.to_i + 1
	rc = rc + rn2 - rn3
	print rc.to_s + ', '
end
rc = rc + rn2 - rn3	
gn = gets.chomp.to_i

until gn == rc or rhp == 0
	hp = hp.to_i - 25
	rhp = hp.to_i - 25
	puts 'Thats not right, please try again you have lost 25HP'
	puts 'Current HP: ' + hp.to_s
	gn = gets.chomp.to_i
end

if rhp == 0
	puts "CURRENT HP: 0"
	life = life - 1
	puts 'You have died.'
	
	if life.to_i >= 1
		puts 'You have ' + life.to_s + 'lives left.'
		puts 'Would you like to use your extra life?'
		puts '[1]: Use extra life'
		puts '[2]: Quit'
		ul = gets.chomp

		until ul == '1' or ul == '2'
			puts 'NOT A VALID INPUT.'
			puts 'Please try again.' 
puts '****************************************************************************************' 
			puts '[1] Use extra life'
			puts '[2] Quit'
			ul = gets.chomp		
		end

		if ul == '1' 
			puts 'You are filled with determination.'
		elsif ul == '2'
			puts 'So you have had enough?' 
			puts 'Ok quiter, you will never get any further with that attitude.'
		end
	
	elsif life.to_i < 1 
		puts "Game Over"
	end
	
end



if gn == rc
	puts "Congradulations, you can now choose between 2 prizes!"
	puts '[1] 25HP'
	puts '[2] 1 extra life'
	pr1 = gets.chomp
	if pr1.to_s == '1' 
		rhp = rhp.to_i + 25
		hp = hp.to_i + 25
		puts 'Current HP: ' + hp.to_s
	elsif pr1.to_s == '2'
		life = life.to_i + 1
		puts 'Current number of lives: ' + life.to_s
	end
end
		 	