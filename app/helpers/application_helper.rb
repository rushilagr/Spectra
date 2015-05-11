module ApplicationHelper

	def not_guest?
		if current_user || current_admin
			true
		else
			false
		end
	end
	
	def get_logout_path
		if current_user 
			destroy_user_session_path
		elsif current_admin
			destroy_admin_session_path
		end
	end
end
