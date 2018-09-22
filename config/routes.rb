Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
	
	authenticated :user do
		root 'docs#index', as: 'authenticated_root'
	end
	resources :docs
end
