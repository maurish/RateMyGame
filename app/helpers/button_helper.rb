module ButtonHelper
	def button(button_text, button_path, button_options = {:class=>"btn"}, html_options = {})
		link_to button_path, html_options do 
			button_tag button_text,button_options
		end
	  
	end
end
