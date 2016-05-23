Rails.application.routes.draw do
  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  resources :users
  resources :dota_hero_show_criterium_modes
  resources :dota_hero_show_criteria
  resources :dota_heroes
  get 'summary/welcome'

  get 'summary/administration'

  get 'reload_dota_heroes' => 'dota_heroes#load_from_gamepedia'

  get 'chunker' => 'chunker#penis_form'
  post 'chunker_submit' => 'chunker#penis'

  get 'chunker_endings/multi' => "chunker_endings#multi_new"
  post 'chunker_endings/multi' => "chunker_endings#multi_create"

  get 'chunker_subjects/multi' => "chunker_subjects#multi_new"
  post 'chunker_subjects/multi' => "chunker_subjects#multi_create"

  get 'chunker_verbs/multi' => "chunker_verbs#multi_new"
  post 'chunker_verbs/multi' => "chunker_verbs#multi_create"

  resources :chunker_endings

  resources :chunker_verbs

  resources :chunker_subjects

  resources :nouns

  resources :adjectives

  get 'disk_controller/diskform'
  get 'disk_controller/genitalite'
  post 'penis_enlargement' => "disk_controller#genitalite"

  resources :competitions

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    get 'logout' => :destroy
  end
  get 'register' => 'users#new', as: 'register'

  mount ActionCable.server => '/cable'

  root 'summary#welcome'

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
