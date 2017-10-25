Rails.application.routes.draw do
  get 'home/index'

  get 'welcome/index'

  resources :gates do
  	resources :keys
  end

  root 'gates#index'
end