module ApplicationHelper

	def nav_link_to (click_text, action, url, style)
		if action_name == action
			return link_to click_text, url, class: "style" 
		else
			return link_to click_text, url
		end	
	end
	
	def stars (num_stars)
		return ((image_tag "star.jpg") * num_stars).html_safe		
	end

	def is_admin?
		return current_user.try(:admin?)		
	end

end
