Rails.application.routes.draw do
  root 'users#index'

	resources :users, only: [:create, :show, :new] do
		resources :posts, only: [:create, :show, :index, :new]
	end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
