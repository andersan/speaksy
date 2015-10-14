Rails.application.routes.draw do

  get 'vocabs/new'

  get 'lessons/new'

  # get 'chapters/new'
  # post 'chapters/create'
  get 'chapters/index' 
  # get 'chapters/show'

  root 'main_pages#home'
  
  get 'about'      => 'main_pages#about'
  get 'contact'    => 'main_pages#contact'
  get 'landing'    => 'main_pages#landing'
  get 'donate'     => 'main_pages#donate'
  get 'study'      => 'main_pages#study'

  resources :chapters
  resources :lessons
  resources :vocab_lists
  resources :vocablists
## might not need to create resources for all of the objects... but i dont think it causes any problems (maybe a security hole)
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'application#hello'
  # root 'MainPages#home'

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
