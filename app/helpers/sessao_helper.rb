module SessaoHelper
	def log_in(usuario)
		session[:usuario_id] = usuario.id
	end

	# Returns the current logged-in user (if any).
	def current_user
		@current_user ||= Usuario.find_by(id: session[:usuario_id])
	end

    # Returns true if the user is logged in, false otherwise.
    def logged_in?
    	!current_user.nil?
    end

    def log_out
    	session.delete(:usuario_id)
    	@current_user = nil
  	end
end
