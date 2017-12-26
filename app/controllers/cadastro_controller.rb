class CadastroController < ApplicationController
	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new(parametros_usuario)

		if @usuario.save
			flash[:success] = "Bem-vindo"
			#redirect_to @usuario
		else
			render 'new'
		end
	end

	private

	def parametros_usuario
		params.require(:usuario).permit(:nome, :email, :password, :password_confirmation, :tipo)
	end
end
