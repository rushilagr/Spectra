module PermissionsHelpers 
	extend ActiveSupport::Concern

	def not_guest?
		if current_user || current_admin
			true
		else
			false
		end
	end
	
end