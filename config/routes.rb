Rails.application.routes.draw do
	root to: "posts#index"

	resources :posts, only: [:new, :create, :index]

	resource :session, only: [:new, :create]
end
