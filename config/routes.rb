Rails.application.routes.draw do
  resources :pages

  devise_for :users do
  	get '/users/sign_out' => 'devise/sessions#destroy'
  end

	get 'admin', to: 'admin#index'

	#get 'store' => 'home#page'

	get 'store' => 'home#store'

	get 'tour' => 'home#tour'

	get 'fanwall' => 'home#fanwall'

  root 'home#index'
end
