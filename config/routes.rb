Rails.application.routes.draw do

  resources :bios
  resources :videos
  resources :exhibitions
  resources :news

  resources :pages

  devise_for :users do
  	get '/users/sign_out' => 'devise/sessions#destroy'
  end

	get 'admin', to: 'admin#index'

  get 'member', to: 'member#index'

	#get 'store' => 'home#page'

	get 'store' => 'home#store'

	get 'tour' => 'home#tour'

	get 'fanwall' => 'home#fanwall'

  get 'music' => 'home#music'

  get 'latest_news' => 'home#latest_news'

  get 'art' => 'home#art'

  get 'video_page' => 'home#video_page'

  get 'biography' => 'home#biography'

  root 'home#index'
end
