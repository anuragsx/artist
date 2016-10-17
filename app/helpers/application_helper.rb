module ApplicationHelper
	def selected_class(params, menu_txt)
		params[:action] == menu_txt ? "selected" : ""	
	end	
end
