class Hotel	

	def initialize( d_name, d_price)
		@d_name = d_name
		@d_price = d_price
		@h_list = {
		            Box8: {'Rajma' => 30, 'Vada Pav' => 50, 'Dal' => 20},
		            Locavore: {'Dal' => 10, 'Vada Pav' => 30, 'Sabji' => 40},
			        Flavours: {'Ice Cream' => 10, 'Burger' => 30, 'Vada Pav' => 30}
			      }
	end

	def budget_function
		result=Array.new
        @h_list.each do |key,value| 
	    res = value.select{ |dish,price| dish.to_s == @d_name && price >= @d_price  }
	    result << key if res.count>0
	    end
	    puts result
    end

end

puts 'Enter Dish Name'
d_name = gets.chomp
puts 'Enter Price'
d_price = gets.chomp

obj = Hotel.new(d_name, d_price.to_f)
obj.budget_function
