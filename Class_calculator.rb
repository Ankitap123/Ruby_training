class Calculator
	attr_accessor :num1, :num2
	
	def initialize(num1,num2)
		@num1 = num1
		@num2 = num2
	end	
	def sum()
		@num1 + @num2
	end
	def mult()
		@num1 * @num2
	end
	def div(num1,num2)

		@num1 / @num2
	end
	def subt(num1,num2)
	    @num1 - @num2
	end
	def common_method(op)
		case op
		when "+"
			puts "Addition is :#{sum} "
		when "-"
			puts "Subtraction is :#{subt} "
		when "*"
			puts "Multiplication is :#{mult} "
		when  "/"
			puts "Division is :#{div} "
		end
	end
	def operator_checking(op)
		if (op.eql?("+") || op.eql?("-") || op.eql?("*")|| op.eql?("/"))
			return true
		end
	end
	def display_op()
		puts ' List Of Operations { \'1. + \' , \' 2.- \' , \'3. * \' , \' 4. / \' }'
		puts 'Enter operator'
		op = gets.chomp
		if operator_checking( op )
			common_method( op )
		else
			puts 'Operator entered is invalid'
			return
		end
	end
end

input=0
loop do

	begin
		puts 'Operand 1'
		num1 = Integer(gets.chomp)
		puts 'Operand 2'
		num2 = Integer(gets.chomp)
		num1= num1.to_f
		num2 = num2.to_f
	rescue
		puts 'Invalid Operand'
		retry
	end
	
	obj1 = Calculator.new(num1, num2)
	obj1.display_op()
	puts 'Exit: 0 else Continue: 1'
	input= gets.chomp.to_i
	break if input == 0

end