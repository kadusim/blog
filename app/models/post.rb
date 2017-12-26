class Post < ApplicationRecord

	has_attached_file :foto, :styles => { 
    :medium => "600x600>",
    :thumb => "50x50>" }

    #validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
    validates_attachment_content_type :foto, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'Arquivo não permitido (somente jpeg/png/gif images)'
    #validates_attachment_content_type :foto, content_type: ["image/png", "image/jpg", "image/jpeg"]
	#do_not_validate_attachment_file_type :foto


end
