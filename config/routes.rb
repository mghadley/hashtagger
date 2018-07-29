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

  resources :categories, only: [:index] do
    member do
      get :category_hashtags
    end
  end

  resources :user_hashtag_categories, only: [:index, :destroy, :update, :create]

  get 'show_block', to: 'hashtags#show_block'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
