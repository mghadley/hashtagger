Rails.application.routes.draw do
  root to: 'hashtags#select'

  resources :hashtags do
    collection do
      get 'select'
      get 'show_block'
    end
    scope 'category/:category_id' do
      member do
        delete 'remove_from_user', as: 'remove_from_user_category'
        get 'edit', as: 'edit_category'
        put 'update', as: 'category'
      end
    end
  end

  resources :categories, only: [:index]

  get '/user_hashtag_categories/edit/:category_id/:hashtag_id', to: 'user_hashtag_categories#update', as: 'edit_user_hashtag_category'
  post '/user_hashtag_categories'
  put '/user_hashtag_categories/:id', to: 'user_hashtag_categories#update', as: 'user_hashtag_category'

  get 'show_block', to: 'hashtags#show_block'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
