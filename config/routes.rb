Rails.application.routes.draw do
  namespace :api do
    resources :users, except: [:new, :edit]
    resources :notes, except: [:new, :edit] do
      resources :comments, except: [:new, :edit]
    end
  end

  post '/api/users' => 'api/users#create'

  # get '/api/notes' => 'notes#index'
  # post '/api/notes' => 'notes#create'
  # get '/api/notes/:id' => 'notes#show'
  # patch '/api/notes/:id' => 'notes#update'


  get '/api/notes/tag/:tag_name' => 'api/notes#by_tag'
end
