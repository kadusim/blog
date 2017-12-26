require 'bcrypt'

class Usuario < ApplicationRecord

	#validando nome
	validates :nome, presence: true

	#validando e-mail
	before_save { email.downcase! }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
	format: { with: VALID_EMAIL_REGEX }
	#verifica se já existe o e-mail que será cadastrado
	#,uniqueness: { case_sensitive: false }

	#validando senha
	has_secure_password
  	validates :password, presence: true

	#validando tipo
	#validates :tipo, presence: true

end
