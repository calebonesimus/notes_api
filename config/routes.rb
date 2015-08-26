Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:create]
    resources :notes, only: [:index, :show, :create, :update] do
      resources :comments, only: [:create]
    end
  end

  get '/api/notes/tag/:tag_name' => 'api/notes#by_tag'
end
