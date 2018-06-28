#INPUT:
# Take A string of Numbers
#Turn the Numbers into an array of Integers(to access individual values), Arranging them from last index to first
CreditNum = "6011797668867828" #(this is an integer)
LuhnNum = CreditNum.to_i.digits #(empty array)
puts "#{LuhnNum}"
#______________________________
#PROCESS:
# Move through each 2nd element in the array and modify it by multiplying it by two (odd numbers to skip check number)
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


#Any Element with a value greater than 10 should be split and added together to get a single digit (or subtract by 9)

SinglesArray = []
DoublesArray.each.with_index do |num, index|
	SinglesArray<<
	if num >= 10
			num - 9
		else
			num
		end
	end
	puts "#{SinglesArray}"

# Add all single resulting digits together to create a resulting number
ResultNum = SinglesArray.sum
print "#{ResultNum}"

# Take the resulting number and modulo it with 10/ If == 0/VALID Else/INVALID
ModNum = ResultNum % 10
if ModNum == 0
	puts "Valid Number"
else
	puts "Invalid Number"
end
