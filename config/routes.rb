Rails.application.routes.draw do
  namespace :admin do
    get 'book/action1'
    get 'book/action2'
  end
  resources :line_items
  resources :carts
  #get 'store/index'
  root 'store#index', as: 'store_index'

  resources :products, shallow: true do
    resources :reviews
  end
  resources :orders 
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
