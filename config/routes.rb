Rails.application.routes.draw do
  get 'jobs/index'
  get 'jobs/show'
  get 'jobs/new'

  get 'pages/about' => 'high_voltage/pages#show', id: 'about'

  resources :jobs
	root 'jobs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end