card_status_arr = {}
skip_num = 2
max_num = 100

1.upto(max_num) do |i|
	card_status_arr.store(i,false)
end

2.upto(max_num) do 
	i = skip_num
	while i <= max_num
		if card_status_arr[i] == false	
			card_status_arr[i] = true 
		elsif card_status_arr[i] == true
			card_status_arr[i] = false
		end 
		i = i + skip_num
	end
	skip_num+=1
end

1.upto(max_num) do |i|
	p i if card_status_arr[i] == false
end