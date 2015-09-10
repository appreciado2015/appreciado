Rails.application.routes.draw do
  
  root 'static_pages#top_benefits'
  
  match '/scheduling-coordinators', to: 'static_pages#top_benefits_connecting', via: 'get', as: :top_benefits_connecting
  match '/dental-practices', to: 'static_pages#top_benefits_growing', via: 'get', as: :top_benefits_growing
  match '/your-patients', to: 'static_pages#top_benefits_rewarding', via: 'get', as: :top_benefits_rewarding
  match '/who-are-we', to: 'static_pages#about', via: 'get', as: :about
  match '/team', to: 'static_pages#about_team', via: 'get', as: :about_team
  match '/partners', to: 'static_pages#partners', via: 'get', as: :partners
  match '/contact', to: 'static_pages#contact', via: 'get', as: :contact
  match '/talk-with-us', to: 'static_pages#support', via: 'get', as: :support
  match '/appreciado-support', to: 'static_pages#support_appreciado', via: 'get', as: :support_appreciado
  match '/question-support', to: 'static_pages#support_question', via: 'get', as: :support_question
  match '/purchase', to: 'static_pages#purchase', via: 'get', as: :purchase
  match '/thank-you', to: 'static_pages#thankyou', via: 'get', as: :thankyou

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
