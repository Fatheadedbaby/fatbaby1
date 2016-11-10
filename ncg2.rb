#Variables that i need for the rest of the game.
	$hp=100
	$lvl=0
	$v25=0
	$v50=0
	$v75=0

#This is the Main Menu
def mainMenu

	puts "Welcome to the Number Chain game lets see how far you can get."
	puts "1: Start the Game"
	puts "2: Cheat Codes"
	puts "3: Exit"
	input = gets.chomp.to_i
	
	
	until input == 1 or input == 2 or input == 3
		puts "Not a valid input"
		puts ""
		puts"*************************************"
		puts ""
		puts "1: Start the game"
		puts "2: Enter a cheat code"
		puts "3: Exit"
		input = gets.chomp.to_i
	end
	
	
	
	if input == 1
		puts "*****************************************************************************************"
		puts ""
		puts ""
		level1
	else
		if input == 2
			cheatcodes
		else
			if input == 3
				exit
			end
		end
	end

end

def cheatcodes
	puts "please enter a cheat code:"
	puts "or if you want to go back to the main menu type m"		
	cheat = gets.chomp.to_s	
	
	if cheat.to_s == "uuddlrlrba"
		puts "not finished"
	else
		if cheat.to_s == "m"
			mainMenu
		end
	end

end

#How to determine what level to go to after they win
def level
	if $lvl == 1
		level2
	else 
		if $lvl == 2
			level3
		else
			if $lvl == 3
				level4
			end
		end	
	end	
end



#What happens when player chooses to save the prizes
def flawlessvictory
	puts ""
	puts ""
	puts ""
	puts "Great Job!"
	puts "Now You Get To Choose Between 3 Amazing Prizes."
	puts ""
	puts "CURRENT HP: " + $hp.to_s		
	puts ""
	puts "1: 25 HP"
	puts "2: 50 HP"
	puts "3: 75 HP"
	puts "4: Save These Prizes For Later"
	p1 = gets.chomp.to_i
		
	until p1 == 1 or p1 == 2 or p1 == 3 or p1 == 4
		puts "CURRENT HP: " + $hp.to_s
		puts ""
		puts "1: 25 HP"
		puts "2: 50 HP"
		puts "3: 75 HP"
		puts "4: Save These Prizes For Later"
		p1 = gets.chomp.to_i
	end
		
	if p1 == 1 
		$hp = $hp + 25 
			
		if $hp > 100
			$hp = 100
			puts "I Sure Hope You Meant to Waist Some of That Prize"
		end

		#v25 equals 1 so now I am able to take 25 hp off of the prize list later.
		$v25 = 1

		puts "CURRENT HP: " + $hp.to_s
		level
	else
		if p1 == 2
			$hp = $hp + 50
				
			if $hp > 100
				$hp = 100
				puts "I Sure Hope You Meant to Waist Some of That Prize"
			end
			
			#v50 equals 1 so now I can take 50 hp off of the prize list later.
			$v50 = 1
			
			puts "CURRENT HP: " + $hp.to_s
			level
		else
			if p1 == 3 
				$hp = $hp + 75
				
				if $hp > 100
					$hp = 100
					puts "I Sure Hope You Meant to Waist Some of That Prize"
				end
				
				#v75 equals 1 so now I can take 75 hp off of the prize list later.
				$v75 = 1
				
				puts "CURRENT HP: " + $hp.to_s
				level
			else 
				if p1 == 4
					puts "Ok, Good Luck In The Next Level"
					level
				end
			end
		end
	end
	
	

end

#What happens when player chooses prize 1
def victory25
	
	puts ""
	puts ""
	puts ""
	puts "Great Job!"
	puts "Now You Get To Choose Between 2 Amazing Prizes."
	puts ""
	puts "CURRENT HP: " + $hp.to_s		
	puts ""
	puts "2: 50 HP"
	puts "3: 75 HP"
	puts "4: Save These Prizes For Later"
	p1 = gets.chomp.to_i
		
	until p1 == 2 or p1 == 3 or p1 == 4
		puts "CURRENT HP: " + $hp.to_s
		puts ""
		puts "2: 50 HP"
		puts "3: 75 HP"
		puts "4: Save These Prizes For Later"
		p1 = gets.chomp.to_i
	end
		

	if p1 == 2
		$hp = $hp + 50
				
		if $hp > 100
			$hp = 100
			puts "I Sure Hope You Meant to Waist Some of That Prize"
		end

		#v50 equals 1 so now I can take 50 hp off of the prize list later.
		$v50 = 1
		
		puts "CURRENT HP: " + $hp.to_s
		level
	else
		if p1 == 3 
			$hp = $hp + 75
				
			if $hp > 100
				$hp = 100
				puts "I Sure Hope You Meant to Waist Some of That Prize"
			end
			
			#v75 equals 1 so now I can take 75 hp off of the prize list later.
			$v75 = 1
	
			puts "CURRENT HP: " + $hp.to_s
			level
		else 
			if p1 == 4
				puts "Ok, Good Luck In The Next Level"
				level
			end
		end
	end

	
end





def victory50
	puts ""
	puts ""
	puts ""
	puts "Great Job!"
	puts "Now You Get To Choose Between 2 Amazing Prizes."
	puts ""
	puts "CURRENT hp: " + $hp.to_s		
	puts ""
	puts "1: 25 HP"
	puts "3: 75 HP"
	puts "4: Save These Prizes For Later"
	p1 = gets.chomp
		
	until p1 == 1 or p1 == 3 or p1 == 4
		puts "CURRENT HP: " + $hp.to_s
		puts ""
		puts "1: 25 HP"
		puts "3: 75 HP"
		puts "4: Save These Prizes For Later"
		p1 = gets.chomp.to_i
	end
		
	if p1 == 1 
		$hp = $hp + 25 
			
		if $hp > 100
			$hp = 100
			puts "I Sure Hope You Meant to Waist Some of That Prize"
		end

		#v25 equals 1 so now I am able to take 25 hp off of the prize list later.
		$v25 = 1

		puts "CURRENT HP: " + $hp.to_s
		level
	else
		if p1 == 3 
			$hp = $hp + 75
				
			if $hp > 100
				$hp = 100
				puts "I Sure Hope You Meant to Waist Some of That Prize"
			end
				
			#v75 equals 1 so now I can take 75 hp off of the prize list later.
			$v75 = 1
				
			puts "CURRENT HP: " + $hp.to_s
			level
		else 
			if p1 == 4
				puts "Ok, Good Luck In The Next Level"
				level
			end
		end
	end
	
	
end






def victory75
	puts ""
	puts ""
	puts ""
	puts "Great Job!"
	puts "Now You Get To Choose Between 2 Amazing Prizes."
	puts ""
	puts "CURRENT HP: " + $hp.to_s		
	puts ""
	puts "1: 25 HP"
	puts "2: 50 HP"
	puts "4: Save These Prizes For Later"
	p1 = gets.chomp.to_i
	
	until p1 == 1 or p1 == 2 or p1 == 4
		puts "CURRENT HP: " + $hp.to_s
		puts ""
		puts "1: 25 HP"
		puts "2: 50 HP"
		puts "4: Save These Prizes For Later"
		p1 = gets.chomp.to_i
	end
		
	if p1 == 1 
		$hp = $hp + 25 
			
		if $hp > 100
			$hp = 100
			puts "I Sure Hope You Meant to Waist Some of That Prize"
		end

		#v25 equals 1 so now I am able to take 25 hp off of the prize list later.
		$v25 = 1

		puts "CURRENT HP: " + $hp.to_s
		level
	else
		if p1 == 2
			$hp = $hp + 50
				
			if $hp > 100
				$hp = 100
				puts "I Sure Hope You Meant to Waist Some of That Prize"
			end
			
			#v50 equals 1 so now I can take 50 hp off of the prize list later.
			$v50 = 1
			
			puts "CURRENT HP: " + $hp.to_s
			level
		else 
			if p1 == 4
				puts "Ok, Good Luck In The Next Level"
				level
			end
		end
	end
	
end





def victory2550
	puts ""
	puts ""
	puts ""
	puts "Great Job!"
	puts "Now You Get To Choose if you want an Amazing Prize."
	puts ""
	puts "CURRENT HP: " + $hp.to_s		
	puts ""
	puts "3: 75 HP"
	puts "4: Save These Prizes For Later"
	p1 = gets.chomp.to_i

	until p1 == 3 or p1 == 4
		puts "CURRENT HP: " + $hp.to_s
		puts ""
		puts "3: 75 HP"
		puts "4: Save These Prize For Later"
		p1 = gets.chomp.to_i
	end
		
	if p1 == 3 
		$hp = $hp + 75
				
		if $hp > 100
			$hp = 100
			puts "I Sure Hope You Meant to Waist Some of That Prize"
		end
				
		#v75 equals 1 so now I can take 75 hp off of the prize list later.
		$v75 = 1
				
		puts "CURRENT HP: " + $hp.to_s
		level
	else 
		if p1 == 4
			puts "Ok, Good Luck In The Next Level"
			level
		end
	end
	
end





def victory2575
	puts ""
	puts ""
	puts ""
	puts "Great Job!"
	puts "Now You Get To Choose if you want an Amazing Prize."
	puts ""
	puts "CURRENT HP: " + $hp.to_s		
	puts ""
	puts "2: 50 HP"
	puts "4: Save These Prizes For Later"
	p1 = gets.chomp.to_i

		until p1 == 2 or p1 == 4
		puts "CURRENT HP: " + $hp.to_s
		puts ""
		puts "2: 50 HP"
		puts "4: Save These Prize For Later"
		p1 = gets.chomp.to_i
	end
		
	if p1 == 2
		$hp = $hp + 50
				
		if $hp > 100
			$hp = 100
			puts "I Sure Hope You Meant to Waist Some of That Prize"
		end
			
		#v50 equals 1 so now I can take 50 hp off of the prize list later.
		$v50 = 1
			
		puts "CURRENT HP: " + $hp.to_s	
		level
	else 
		if p1 == 4
			puts "Ok, Good Luck In The Next Level"
			level
		end
	end

		
end





def victory5075
	puts ""
	puts ""
	puts ""
	puts "Great Job!"
	puts "Now You Get To Choose if you want an Amazing Prize."
	puts ""
	puts "CURRENT HP: " + $hp.to_s		
	puts ""
	puts "1: 25 HP"
	puts "4: Save These Prizes For Later"
	p1 = gets.chomp.to_i

	until p1 == 1 or p1 == 4
		puts "CURRENT HP: " + $hp.to_s
		puts ""
		puts "1: 25 HP"
		puts "4: Save These Prize For Later"
		p1 = gets.chomp.to_i
	end
		
	if p1 == 1 
		$hp = $hp + 25 
			
		if $hp > 100
			$hp = 100
			puts "I Sure Hope You Meant to Waist Some of That Prize"
		end

		#v25 equals 1 so now I am able to take 25 hp off of the prize list later.
		$v25 = 1

		puts "CURRENT HP: " + $hp.to_s
		level
	else 
		if p1 == 4
			puts "Ok, Good Luck In The Next Level"
			level
		end
	end
		
end




def victory255075
	puts ""
	puts ""
	puts ""
	puts "Great Job!"
	puts "Now You Get To Choose Between.... Oh No"
	puts ""
	puts "CURRENT HP: " + $hp.to_s		
	puts ""
	puts "4: You don\'t have any more prizes left to choose from. Type 4 to continue to the next level."
	puts "Good Luck"
	p1 = gets.chomp.to_i
	
	until p1 == 4
		puts "That is not a valid input, please try again."
		p1 = gets.chomp.to_i
	end
	
	if p1 == 4
		puts "Good Luck in The Next Level."
		level
	end
		
end


#What happens when player wins a level 
def victorymethod
	puts ""
	puts ""
	puts ""
	puts "*******************************************************************************************************"
	
	if $v25 == 0 and $v50 == 0 and $v75 == 0
		flawlessvictory
	else 
		if $v25 == 1 and $v50 == 0 and $v75 == 0
			victory25
		else 
			if $v25 == 0 and $v50 == 1 and $v75 == 0
				victory50
			else 
				if $v25 == 0 and $v50 == 0 and $v75 == 1
					victory75
				else 
					if $v25 == 1 and $v50 == 1 and $v75 == 0
						victory2550
					else 
						if $v25 == 1 and $v50 == 0 and $v75 == 1
							victory2575
						else 
							if $v25 == 0 and $v50 == 1 and $v75 == 1
								victory5075	
							else 
								if $v25 == 1 and $v50 == 1 and $v75 == 1
									victory255075
								end
							end
						end
					end
				end
			end
		end
	end

end

	




#*******************************************************************************************************************************

#Begin level 1
def level1
	$lvl = 1
	
	#Randomly generated number that im going to use for level 1.
	rn1 = 1+rand(15)
	rn2 = 1+rand(15)
	puts "Welcome to LEVEL 1"	
	puts "Current HP:" + $hp.to_s
	puts ""
	puts ""
	puts "Guess the next number in the chain:"
	
	#Random chain for level 1
	non1=1
	rc1 = rn1 + rn2
	print rc1.to_s + ", "
	until non1==3 
		rc1 = rc1 + rn2
		print rc1.to_s + ", "
		non1=non1+1
	end
		rc1 = rc1 + rn2
	
	gn1 = gets.chomp.to_i
	
	
	#What happens when the player runs out of HP and dies
	def deathmethod
		puts "You Have Died"
		puts ""
		puts ""
		puts "What Would You Like To Do Now?"
		puts "" 
		puts "1: Restart The Game And Try Again"
		puts "2: Go To The Main Menu"
		puts "3: Give Up Because You\'re a Big Baby Who Can\'t Solve A Simple Puzzle."
		adi = gets.chomp.to_i		


		until adi == 1 or adi == 2 or adi == 3
			puts "That is not a valid input please try again."
			puts ""
			puts "******************************************"
			puts ""
			puts "1: Restart The Game And Try Again"
			puts "2: Go To Main Menu"
			puts "3: Give Up Because You\'re a Big Baby Who Can\'t Solve A Simple Puzzle."
			adi = gets.chomp.to_i
		end
		
			
		if adi == 1
			$hp = 100
			level1
		else 
			if adi == 2
				$hp = 100
				mainMenu
			else
				if adi == 3
					puts "Alright I Guess You\'ll Just Be A Yeet For The Rest Of Your Life."
					exit
				end
			end
		end

		 
	end	
	

#How the player loses health and may possibly die.
	until rc1.to_i == gn1.to_i 
		$hp = $hp - 25
		if $hp == 0
			deathmethod
		end
		puts "That is incorrect, please try again:"
		puts "CURRENT HP: " + $hp.to_s
		gn1 = gets.chomp.to_i
	end
	
	
	
#When player get answer correct
	if rc1.to_i == gn1.to_i
		victorymethod
	end
end


#*********************************************************************************************************************************************************



#Begin level 2
def level2
	$lvl = 2
#Random numbers for level 2
	rn1 = rand(15)
	rn2 = rand(20)
	
	puts "*************************************************************************************************"
	puts ""
	puts ""
	puts "Welcome To LEVEL 2"
	puts "Current HP:" + $hp.to_s
	puts ""
	puts ""
	puts "Guess the next number in the chain:"
	
#Random chain for level 2
	non2=1
	rc2 = rn1 - rn2
	print rc2.to_s + ", "
	until non2==3 
		rc2 = rc2 - rn2
		print rc2.to_s + ", "
		non2=non2+1
	end
		rc2 = rc2 - rn2
	
	gn2 = gets.chomp.to_i
		
		
#What heppens when player dies in level 2
	def deathmethod2
		puts "You Have Died"
		puts ""
		puts ""
		puts "What Would You Like To Do Now?"
		puts "" 
		puts "1: Restart The Game And Try Again"
		puts "2: Go To The Main Menu"
		puts "3: Give Up Because You\'re a Big Baby Who Can\'t Solve A Simple Puzzle."
		adi = gets.chomp.to_i		


		until adi == 1 or adi == 2 or adi == 3
			puts "That is not a valid input, please try again."
			puts ""
			puts "******************************************"
			puts ""
			puts "1: Restart The Game And Try Again"
			puts "2: Go To Main Menu"
			puts "3: Give Up Because You\'re a Big Baby Who Can\'t Solve A Simple Puzzle."
			adi = gets.chomp.to_i
		end
		
			
		if adi == 1
			$hp = 100
			level1
		else 
			if adi == 2
				$hp = 100
				mainMenu
			else
				if adi == 3
					puts "Alright I Guess You\'ll Just Be A Yeet For The Rest Of Your Life."
					exit
				end
			end
		end	

	end


	
#How the player loses health and may possibly die.
	until rc2.to_i == gn2.to_i 
		$hp = $hp - 25
		if $hp == 0
			deathmethod
		end
		puts "That is incorrect, please try again:"
		puts "CURRENT HP: " + $hp.to_s
		gn2 = gets.chomp.to_i
	end
	
	
	

	if rc2.to_i == gn2.to_i
		victorymethod
	end

end

#******************************************************************************************************************


#Begin level 3
def level3
	$lvl = 3

	#Randomly generated number that im going to use for level 3.
	rn1 = 1+rand(20)
	rn2 = 1+rand(25)
	puts "*************************************************************************************************"
	puts ""
	puts ""	
	puts "Welcome to LEVEL 3"
	puts "Current HP:" + $hp.to_s
	puts ""
	puts ""
	puts "Guess the next number in the chain:"
	
	#Random chain for level 3
	non1=1
	rc1 = rn1 * rn2
	print rc1.to_s + ", "
	until non1==3 
		rc1 = rc1 * rn2
		print rc1.to_s + ", "
		non1=non1+1
	end
		rc1 = rc1 * rn2
	
	gn1 = gets.chomp.to_i
	
	
	#What happens when the player runs out of HP and dies
	def deathmethod
		puts "You Have Died"
		puts ""
		puts ""
		puts "What Would You Like To Do Now?"
		puts "" 
		puts "1: Continue game from previous level"
		puts "2: Go To The Main Menu"
		puts "3: Give Up Because You\'re a Big Baby Who Can\'t Solve A Simple Puzzle."
		adi = gets.chomp.to_i		


		until adi == 1 or adi == 2 or adi == 3
			puts "That is not a valid input please try again."
			puts ""
			puts "******************************************"
			puts ""
			puts "1: Continue game from previous level"
			puts "2: Go To Main Menu"
			puts "3: Give Up Because You\'re a Big Baby Who Can\'t Solve A Simple Puzzle."
			adi = gets.chomp.to_i
		end
		
			
		if adi == 1
			$hp = 100
			level2
		else 
			if adi == 2
				$hp = 100
				mainMenu
			else
				if adi == 3
					puts "Alright I Guess You\'ll Just Be A Yeet For The Rest Of Your Life."
					exit
				end
			end
		end

		 
	end	
	

#How the player loses health and may possibly die.
	until rc1.to_i == gn1.to_i 
		$hp = $hp - 25
		if $hp == 0
			deathmethod
		end
		puts "That is incorrect, please try again:"
		puts "CURRENT HP: " + $hp.to_s
		gn1 = gets.chomp.to_i
	end
	
	
	
#When player get answer correct
	if rc1.to_i == gn1.to_i
		victorymethod
	end	

end

#*************************************************************************************************************


def level4
	$lvl = 4

	#Randomly generated number that im going to use for level 4.
	rn1 = 1+rand(20)
	rn2 = 1+rand(45)
	puts "*************************************************************************************************"
	puts ""
	puts ""		
	puts "Welcome to LEVEL 4"
	puts "Current HP:" + $hp.to_s
	puts ""
	puts ""
	puts "Guess the next number in the chain:"
	
	#Random chain for level 4
	non1=1
	rc1 = rn1*rn1
	print rc1.to_s + ", "
	until non1==3 
		rc1 = rc1*rc1
		print rc1.to_s + ", "
		non1=non1+1
	end
		rc1 = rc1*rc1
	
	gn1 = gets.chomp.to_i
	
	
	#What happens when the player runs out of HP and dies
	def deathmethod
		puts "You Have Died"
		puts ""
		puts ""
		puts "What Would You Like To Do Now?"
		puts "" 
		puts "1: Continue game from previous level"
		puts "2: Go To The Main Menu"
		puts "3: Give Up Because You\'re a Big Baby Who Can\'t Solve A Simple Puzzle."
		adi = gets.chomp.to_i		


		until adi == 1 or adi == 2 or adi == 3
			puts "That is not a valid input please try again."
			puts ""
			puts "******************************************"
			puts ""
			puts "1: Continue game from previous level"
			puts "2: Go To Main Menu"
			puts "3: Give Up Because You\'re a Big Baby Who Can\'t Solve A Simple Puzzle."
			adi = gets.chomp.to_i
		end
		
			
		if adi == 1
			$hp = 100
			level3
		else 
			if adi == 2
				$hp = 100
				mainMenu
			else
				if adi == 3
					puts "Alright I Guess You\'ll Just Be A Yeet For The Rest Of Your Life."
					exit
				end
			end
		end

		 
	end	
	

#How the player loses health and may possibly die.
	until rc1.to_i == gn1.to_i 
		$hp = $hp - 25
		if $hp == 0
			deathmethod
		end
		puts "That is incorrect, please try again:"
		puts "CURRENT HP: " + $hp.to_s
		gn1 = gets.chomp.to_i
	end
	
	
	
#When player get answer correct
	if rc1.to_i == gn1.to_i
		victorymethod
	end
end


#*********************************************************************************************************************************************************




mainMenu

