Rails.application.routes.draw do
  root to: 'hashtags#select'

  resources :hashtags do
    collection do
      get 'select'
      get 'show_block'
    end
  end

  resources :categories, only: [:index]

  get 'show_block', to: 'hashtags#show_block'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
