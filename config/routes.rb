Rails.application.routes.draw do

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

  get 'latest_news' => 'home#latest_news'

  get 'art' => 'home#art'

  root 'home#index'
end
