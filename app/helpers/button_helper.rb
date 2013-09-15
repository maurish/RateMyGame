module ButtonHelper
	def button(button_text, button_path, button_class ="btn")
		link_to button_path do 
			button_tag button_text,class:button_class
		end
	  
	end
end
