Blah::Application.routes.draw do
  devise_for :users
  resources :posts
  get "/posts/:id/like" => "posts#like", as: "like_post"

  root "posts#index"

end
