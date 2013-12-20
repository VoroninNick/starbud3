StarBud::Application.routes.draw do

  resources :dor_variant_performances

  #resources :collections

  #resources :brands

  resources :dors

  #resources :dor_variant

  resources :variants_colors

  #resources :sub_catalogs

  resources :main_catalogs do
    resources :sub_catalogs do
      resources :brands do
        resources :collections do

        end
      end
    end
  end
  resources :about_article_images

  resources :about_articles

  #get ':main_catalog/:sub_catalog', to:'catalog#all_brands', as:'my_sub_catalog'
  #get ':main_catalog/:sub_catalog/:brand' => 'brand#show', :as => :my_brand
  #get ':main_catalog/:sub_catalog/:brand/:collection' => 'catalog#brands_all', :as => :my_collection

  get '/sub_catalog/:id', to:'catalog#all_brands', as:'my_sub_catalog'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  #get "/catalog/item", to: "catalog#item"

  # You can have the root of your site routed with "root"
  root 'main#index'
  get "/about" => "main#about", :as => :about
  get "/catalog" => "main#catalog", :as => :main_page_catalog
  get "/actions" => "main#actions", :as => :actions
  get "/publications" => "main#publications", :as => :publications
  get "/contacts" => "main#contacts", :as => :contacts
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
