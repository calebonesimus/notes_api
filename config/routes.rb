Rails.application.routes.draw do
  resources :notes, except: [:new, :edit]
  get '/api/notes' => 'notes#index'
  post '/api/notes' => 'notes#create'
  get '/api/notes/tag/:tag_name' => 'tags#index'
end
