Rails.application.routes.draw do

  resources :posts
  get '/posts/:id/detalhe_post', to: 'posts#detalhe_post', as: 'detalhe_post'

  root 'static_pages#home'
  
  resources :usuarios

  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'

  get '/cadastro', to: 'cadastro#new'
  post '/cadastro', to: 'cadastro#create'

  get '/login',   to: 'sessao#new'
  post '/login',   to: 'sessao#create'
  delete '/logout',  to: 'sessao#destroy'

  

end
