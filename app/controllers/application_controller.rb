class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def after_sign_in_path_for(resource)
  	#puts "-----------------"
  	#puts resource.inspect
  	if resource.id == 1
    	admin_path
	else
		member_path
	end
  end
	
end
