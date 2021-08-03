Rails.application.routes.draw do
  resources :comments, only: :destroy
  devise_for :users
  #devise_for :installs
  root to: "links#index"
  resources :links do
    member do
      put "like", to: "links#upvote"
      put "dislike", to:"links#downvote"
    end
    resources :comments, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end