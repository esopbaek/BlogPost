Rails.application.routes.draw do
	root to: "users#index"

	resources :audit_logs, only: [:index]

	resources :users, only: [:create, :new] do
		member do
			resources :posts, only: [:new, :create, :index, :show]
			resources :musings, only: [:new, :create, :index, :show]
		end
	end

	resource :session, only: [:new, :create, :destroy]

	post 'posts/:id/comment', to: 'posts#comment'
end
