puts "***************************************************************************************************************"
puts "GUESS THE MAGIC NUMBER!!!!!"
puts "***************************************************************************************************************"

puts "Welcome to the the number guessing game."
puts "Please select a mode."
puts "(1): GUESS THE NUMBER"
puts "(2): GUESS THE EVEN NUMBER"
gm = gets.chomp

until gm.to_i == 1 or gm.to_i == 2 
	puts "Not a valid input."
	puts "(1): GUESS THE NUMBER"
	puts "(2): GUESS THE EVEN NUMBER"
	gm = gets.chomp
end

while gm.to_i == 1 or gm.to_i == 2

	
while gm.to_i == 1 
puts "***************************************************************************************************************"


	puts "Please try and guess the number I am thinking of."
	puts "It is a number between 1 and 10000"
	puts "Good luck!"
	numg = gets.chomp.to_i
	rannum = 1 + rand(10000)
	trys = 1

	until numg.to_i == rannum.to_i 
		trys = trys + 1
		if numg.to_i > 10000 or numg.to_i < 1 
			puts "I SAID A NUMBER BETWEEN 1 AND 10000 YOU STUPID ASSHOLE!"
			puts "Try again"
			numg = gets.chomp 
		elsif numg.to_i < rannum.to_i
			puts "More than that. Try again"
			numg = gets.chomp.to_i
		elsif numg.to_i > rannum.to_i
			puts "Thats to much. Try again" 
			numg = gets.chomp.to_i
		end
	end

	puts "Congradulations! " + numg.to_s + " was the number I was thinking of!"  
	puts "It took you " + trys.to_s + " tries to get the right number!"
	puts "I think you can do better then that. Want to try again? (y/n)"
	a1 = gets.chomp.to_s

	until a1 == "y" or a1 == "n"
		puts "Please type y if you want to try again, or n if you want to stop playing."
		a1 = gets.chomp.to_s 
	end

	while a1 == "y" 
	puts "************************************************************************************************************"
		puts "Please try and guess the number I am thinking of."
		puts "It is a number between 1 and 10000"
		puts "Good luck!"
	
		numg = gets.chomp.to_i
		rannum = 1 + rand(10000)
		trys = 1
	
		until numg.to_i == rannum.to_i 
				trys = trys + 1
			if numg.to_i > 10000 or numg.to_i < 1 
				puts "I SAID AN EVEN NUMBER BETWEEN 1 AND 10000 YOU STUPID ASSHOLE!"
				puts "Try again"
				numg = gets.chomp 
			elsif numg.to_i < rannum.to_i
				puts "More than that. Try again"
				numg = gets.chomp.to_i
			elsif numg.to_i > rannum.to_i
				puts "Thats to much. Try again"
				numg = gets.chomp.to_i
			end
		end
		puts "Congradulations! " + numg.to_s + " was the number I was thinking of!"  
		puts "It took you " + trys.to_s + " tries to get the right number!"
		puts "I think you can do better then that. Want to try again? (y/n)"
		a1 = gets.chomp
			until a1 == "y" or a1 == "n"
				puts "Please type y if you want to try again, or n if you want to stop playing."
				a1 = gets.chomp.to_s 
			end
	end

	
	puts "Want to play a different game mode?"
	puts "(1): GUESS THE NUMBER"
	puts "(2): GUESS THE EVEN NUMBER"
	puts "(3): EXIT GAME"
	gm = gets.chomp
		until gm.to_i == 1 or gm.to_i == 2 or gm.to_i == 3
			puts "Not a valid input."
			puts "(1): GUESS THE NUMBER"
			puts "(2): GUESS THE EVEN NUMBER"
			puts "(3): EXIT GAME" 
			gm = gets.chomp
		end 
	
end

while gm.to_i == 2
puts "**************************************************************************************************************************************************"

	puts "Im thinking of an even number between 1 and 10000. Try and guess it."
	puts "Good luck!"
	
	numg = gets.chomp.to_i
	rannum = (1 + rand(5000))*2
	trys = 1

	until numg.to_i == rannum.to_i 
		trys = trys + 1
		if numg.to_i > 10000 or numg.to_i < 1 
			puts "I SAID AN EVEN NUMBER BETWEEN 1 AND 10000 YOU STUPID ASSHOLE!"
			puts "Try again"
			numg = gets.chomp 
		elsif numg.to_i % 2 == 1
			puts "An even number is a number that is divisible by 2... dumbass..."
			puts "Please try again"
			numg = gets.chomp
		elsif numg.to_i < rannum.to_i
			puts "More than that. Try again"
			numg = gets.chomp.to_i
		elsif numg.to_i > rannum.to_i
			puts "Thats to much. Try again"
			numg = gets.chomp.to_i
		end
	end

	puts "Congradulations! " + numg.to_s + " was the number I was thinking of!"  
	puts "It took you " + trys.to_s + " tries to get the right number!"
	puts "I think you can do better then that. Want to try again? (y/n)"
	a1 = gets.chomp.to_s

	until a1 == "y" or a1 == "n"
		puts "Please type y if you want to try again, or n if you want to stop playing."
		a1 = gets.chomp.to_s 
	end
	
	while a1 == "y" 
		puts "*******************************************************************************************************"
		puts "Im thinking of an even number between 1 and 10000. Try and guess it."
		puts "Good luck!"
		
		numg = gets.chomp.to_i
		rannum = (1 + rand(5000))*2
		trys = 1
		until numg.to_i == rannum.to_i 
		trys = trys + 1
			if numg.to_i > 10000 or numg.to_i < 1 
				puts "I SAID AN EVEN NUMBER BETWEEN 1 AND 10000 YOU STUPID ASSHOLE!"
				puts "Try again"
				numg = gets.chomp 
			elsif numg.to_i % 2 == 1
				puts "An even number is a number that is divisible by 2... dumbass..."
				puts "Please try again"
				numg = gets.chomp
			elsif numg.to_i < rannum.to_i
				puts "More than that. Try again"
				numg = gets.chomp.to_i
			elsif numg.to_i > rannum.to_i
				puts "Thats to much. Try again"
				numg = gets.chomp.to_i
			end
		end
		puts "Congradulations! " + numg.to_s + " was the number I was thinking of!"  
		puts "It took you " + trys.to_s + " tries to get the right number!"
		puts "I think you can do better then that. Want to try again? (y/n)"
		a1 = gets.chomp
			until a1 == "y" or a1 == "n"
				puts "Please type y if you want to try again, or n if you want to stop playing."
				a1 = gets.chomp.to_s 
			end
	end

		puts "Want to play a different game mode?"
		puts "(1): GUESS THE NUMBER"
		puts "(2): GUESS THE EVEN NUMBER"
		puts "(3): EXIT GAME"
		gm = gets.chomp
		
		until gm.to_i == 1 or gm.to_i == 2 or gm.to_i == 3
			puts "Not a valid input."
			puts "(1): GUESS THE NUMBER"
			puts "(2): GUESS THE EVEN NUMBER"
			puts "(3): EXIT GAME" 
			gm = gets.chomp
		end
end
end 

if  gm.to_i == 3
	puts "THANKS FOR PLAYING. HAVE A NICE DAY."
end
