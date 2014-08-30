module PageHelper

	def calendar ( month, year )
		current_date = Date.new(year, month, 1)

		prev_month = month - 1
		prev_year = year
		if(prev_month <= 0)
			prev_month = 12
			prev_year = year - 1
		end
		cal = ""
		cal += link_to("Prev", calendar_path(:month => prev_month, :year => prev_year))
		cal += current_date.strftime("%B")		
		day_of_week = current_date.strftime("%w").to_i
		cal += "<table border ='1'><tr>"
		days = %w(Sun Mon Tue Wed Thu Fri Sat)
		days.each do |day|
			cal += "<td>#{day}</td>"
		end
		#second row - first week of the month
		cal += "<tr>"
		day_of_week.times do 
			cal += "<td>&nbsp;</td>"
		end
		(7 - day_of_week).times do |day|
			cal += "<td>#{day + 1}</td>"
			
		end

		#Loop to do the in-between rows
		

		#loop to do the last row


		cal += "</tr>"
		cal += "</tr></table>"

		return cal
	end 

end
