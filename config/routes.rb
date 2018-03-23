Rails.application.routes.draw do
  get 'pages/about' => 'pages#about', id: 'about'
    get 'pages/postajob' => 'pages#postajob', id: 'postajob'
  resources :jobs
	root 'jobs#index'


match '/contacts',     to: 'contacts#new',             via: 'get'
resources "contacts", only: [:new, :create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end