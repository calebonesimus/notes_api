Rails.application.routes.draw do
  # resources :users, except: [:new, :edit]
  # resources :notes, except: [:new, :edit]

  post '/api/users' => 'users#create'

  get '/api/notes' => 'notes#index'
  post '/api/notes' => 'notes#create'

  get '/api/notes/tag/:tag_name' => 'notes#by_tag'
end
