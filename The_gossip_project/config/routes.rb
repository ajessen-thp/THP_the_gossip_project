Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/team', to: 'team#index'
  get '/contact', to: 'contact#index'
  get '/welcome/:first_name', to: 'welcome#index'
  get '/', to: 'gossip#index'
  get '/gossip/show/:id', to: 'gossip#show'
  get '/gossip/update/:id', to: 'gossip#update'
  get '/gossip/add'

  post '/gossip/add', to: 'gossip#add'
  
  put '/gossip/update', to: 'gossip#update'

  delete '/gossip/delete/:id', to: 'gossip#delete'
end
