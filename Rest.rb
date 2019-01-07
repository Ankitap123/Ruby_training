res_list={Box8: ["vadapav,50","Rajma,30","Dal,20"],
		  Locavore:["Dal,10","vadapav,30","Sabji,40"],
		  Flavours:["Icecream,10","Sandwich,20","Burger,30","vadapav,30"]}
puts 'Enter dish name'
d_name=gets.chomp
puts 'Enter amount'
amnt=gets.chomp.to_i
result=Array.new
res_list.keys.each do |k|
  for v in res_list[k]
    res = v.split(',')
    if ((res.first == d_name) && (res.last.to_i <=amnt))
      result<<k
    end
  end
end
puts result
