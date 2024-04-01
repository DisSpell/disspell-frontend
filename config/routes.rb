Rails.application.routes.draw do
  get 'contact_us/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "search#index"

  resources :video_scrape_api
  resources :search
  resources :videos
  resources :views
  resources :contact_us, only: [:index]
  resources :donations, only: [:index] 
  # Defines the root path route ("/")
  # root "posts#index"

  get 'search-setup', to: 'video_scrape_api#search_setup'
  post 'search-setup-post', to: 'video_scrape_api#post'
end
