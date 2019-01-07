def Calculate
	begin 
			puts 'Enter 1st number'
			x1=Integer(gets.chomp).to_i
			puts 'Enter 2nd number'
			x2=Integer(gets.chomp).to_i
	rescue
			puts 'Invalid number'
			retry
	end
puts 'Enter operator {1. + ,2. -,3. *,4. /,5. Exit}'
x=gets.to_i
  case x
	 when 1
	 	 puts "Addition is: #{x1+x2}"
	 when 2
	 	 puts "Subtraction is: #{x1-x2}"
	 when 3
	 	puts "Multiplication is: #{x1*x2}"
	 when 4
	 	puts "Division is: #{x1/x2}"
	 else
	 	puts 'None of the option is selected'	
	 	exit
	end
end
Calculate()