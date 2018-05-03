Rails.application.routes.draw do
	root to: "posts#index"

	resources :posts, only: [:new, :create, :index, :show]
	resources :audit_logs, only: [:index]

	resource :session, only: [:new, :create, :destroy]
end
