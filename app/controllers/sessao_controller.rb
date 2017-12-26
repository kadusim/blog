class SessaoController < ApplicationController
	def new
	end

	def create
		usuario = Usuario.find_by(email: params[:sessao][:email].downcase)

		if usuario && usuario.authenticate(params[:sessao][:password])
			log_in usuario
			redirect_to usuario
		else
			flash[:danger] = 'Invalid email/password combination'
			render 'new'
		end
		
	end

	def destroy
		log_out
    	redirect_to root_url
	end
end
