Rails.application.routes.draw do
  devise_for :users
 # devise_for :installs
  root to: "links#index"
  resources :links do
    member do
      put "Like", to: "links#upvote"
      put "dislike", to:"links#downvote"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
