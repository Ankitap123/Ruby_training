class Calculator
	def sum(num1,num2)
		puts"#{num1+num2}"
	end
	def mult(num1,num2)
		puts"#{num1*num2}"
	end
	def div(num1,num2)

		puts"#{(num1/num2).to_f}" 
	end
	def subt(num1,num2)

		puts"#{(num1-num2).to_f}" 
	end
	def common_met(num1,num2,op)
		a = [num1,num2]
        result=a.inject(op.chomp.to_sym)
        puts result
	end
	def self.display_details()
		puts 'Operations are:'
		puts '1.+ 2.- 3.* 4./'
	end

end

Calculator.display_details()
obj1=Calculator.new
obj2=Calculator.new
obj3=Calculator.new
obj4=Calculator.new
obj1.sum(3,5)
obj2.mult(3,5)
obj3.div(8,5)
obj4.subt(3,5)
obj5=Calculator.new
obj5.common_met(3,4,'+')

