module PostsHelper
	
	def listar_posts
		@posts = Post.all.page(params['page']).per(2)
		
	end

	def listar_destaques
		@posts = Post.where('destaque' => true).limit(4)
	end

end
