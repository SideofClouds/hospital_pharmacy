Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  authenticated :user do
    root to: 'home#index', :as => :authenticated_root
  end

  root :to => redirect('sign_in')

  get 'home' => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
