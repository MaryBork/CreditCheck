#INPUT:
# Take A string of Numbers
#Turn the Numbers into an array of Integers, Arranging them from last index to first
CreditNum = "6011797668867828" #(this is an integer)
LuhnNum = CreditNum.to_i.digits #(empty array)
puts "#{LuhnNum}"
#______________________________
#PROCESS:
# Turn the integer of Numbers into an Array (to access individual values)
# Flip the Array, arranging them from last index to first(Maybe step one--Reverse String)
#(this flips the numbers unexpectedly? numbers in array dependent on base/radix?
#Digits can also take arguments that change the return...? Dont really understand...but it works!)
# Move through each 2nd element in the array and modify it by multiplying it by two (.map?)(.step?)(.each?)
 DoublesArray = []
 LuhnNum.each.with_index do |num, index|
	DoublesArray <<
	 if index.odd?
		 num * 2
	else
		num
	end
end
puts "#{DoublesArray}"
SinglesArray = []
DoublesArray.each.with_index do |num, index|
	SinglesArray<<
	if num >= 10
			num - 9
		else
			num
		end
	end
	#AmendNum
	#AmendNum << LuhnNum[i]

	puts "#{SinglesArray}"
 #end
# Any elements with a value greater than 10 should be split and added together to get a single digit number
#DONT FORGET ABOUT THE CHECK DIGIT
# You can add digits above 10 or subtract 9...≥Something like this...
# Add all single resulting digits together to create a resulting number

ResultNum = SinglesArray.sum

print "#{ResultNum}"
# Take the resulting number and modulo it with 10
ModNum = ResultNum % 10
if ModNum == 0
	puts "Valid Number"
else
	puts "Invalid Number"
end

#	def Luhn
#	LuhnNum = CreditNum.reverse.to_i
#
#	(LuhnNum\change into array)
#	LuhnNum.each do |arraynum|
#	 LuhnArray = [arraynum.push]
#	end
#	end
#-----------------------
#OUTPUT:
#If resulting number is == 0
#Puts "Valid Number"
#If resulting number is !=0
#Puts "Invalid Number"
