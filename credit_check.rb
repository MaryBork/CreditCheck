#INPUT:
# Take A string of Numbers
CreditNum = 4929735477250543 #(this is an integer)
LuhnNum = [] #(empty array)
#______________________________
#PROCESS:
# Turn the integer of Numbers into an Array (to access individual values)
# Flip the Array, arranging them from last index to first(Maybe step one--Reverse String)
LuhnNum = CreditNum.digits #(this flips the numbers unexpectedly? numbers in array dependent on base/radix?
#Digits can also take arguments that change the return...? Dont really understand...but it works!)
# Move through each 2nd element in the array and modify it by multiplying it by two (.map?)(.step?)(.each?)
LuhnNum.map
# Any elements with a value greater than 10 should be split and added together to get a single digit number
#DONT FORGET ABOUT THE CHECK DIGIT
# You can add digits above 10 or subtract 9...≥Something like this...
# Add all single resulting digits together to create a resulting number
# Take the resulting number and modulo it with 10
#	def Luhn
#	LuhnNum = CreditNum.reverse.to_i
#
#	(LuhnNum\change into array)
#	LuhnNum.each do |arraynum|
#	 LuhnArray = [arraynum.push]
	end
#	end
#-----------------------
#OUTPUT:
#If resulting number is == 0
#Puts "Valid Number"
#If resulting number is !=0
#Puts "Invalid Number"
