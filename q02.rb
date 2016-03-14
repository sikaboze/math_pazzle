split_val_arr = []
op_arr = ["+","-","*","/",""]

1000.upto(9999) do |raw_value|
	split_val_arr = raw_value.to_s.split(//) # split each position of a figure

	for i in 0..op_arr.length-1 do
		for j in 0..op_arr.length-1 do
			for k in 0..op_arr.length-1 do
				val = split_val_arr[0] + op_arr[i] + split_val_arr[1] + op_arr[j] + split_val_arr[2] + op_arr[k] + split_val_arr[3]
				val.gsub!(/([^\d]?)0+(\d+)/, '\1\2')

				if (val.length > 4) && (!val.include?("/0"))
					if raw_value.to_s.reverse == eval(val).to_s
						print("#{val} = #{raw_value.to_s.reverse}\n")
					end
				end
			end	
		end	
	end
end