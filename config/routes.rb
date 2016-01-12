Rails.application.routes.draw do
  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
   
  root 'pages#home'
  get 'items/:id/products' => 'products#index'

  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'

  get '/categories' => 'items#index'

  get '/items/:id/pros' => 'pros#index'

  get '/suppliers' => 'suppliers#index', as: 'suppliers'

  get '/payment' => 'pages#payment'


 
  get '/carts' => 'carts#index'
  get 'carts/clear' => 'carts#clearCart'
  get '/carts/:id' => 'carts#add'

  get '/cart' => 'cart#index'
  get 'cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'


  resources :items, :only => [:index, :show] do 
    resources :products, :only => [:show, :index] 
  end

  resources :products do 
    resources :comments
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
