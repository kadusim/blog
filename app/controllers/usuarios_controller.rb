class UsuariosController < ApplicationController

	def index
		@usuarios = Usuario.all
	end

	def show
		@usuario = Usuario.find(params[:id])
		# com esse comando "debugger" ele para no end abaixo e voce continua pelo console caso queira ver sa variaveis, opara continuar ctrl+D
		#debugger
	end

	def new
		@usuario = Usuario.new
	end

	def edit
		@usuario = Usuario.find(params[:id])
	end

	def create
		#render plain: params[:usuario].inspect
		@usuario = Usuario.new(parametros_usuario)

		if @usuario.save
			flash[:success] = "Usuário criado"
			redirect_to @usuario
		else
			render 'new'
		end
	end

	def update
		@usuario = Usuario.find(params[:id])

		if @usuario.update(parametros_usuario)
			redirect_to @usuario
		else
			render 'edit'
		end
	end

	def destroy
		@usuario = Usuario.find(params[:id])
		@usuario.destroy

		redirect_to usuarios_path
	end

	before_action :logged_in_user

	private

	def parametros_usuario
		params.require(:usuario).permit(:nome, :email, :password, :password_confirmation, :tipo)
	end

end
