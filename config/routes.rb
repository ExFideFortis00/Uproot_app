#              Prefix Verb   URI Pattern                                   Controller#Action
#                root GET    /                                             welcome#index
#               admin GET    /admin(.:format)                              access#index
#               users GET    /users(.:format)                              users#index
#                     POST   /users(.:format)                              users#create
#            new_user GET    /users/new(.:format)                          users#new
#           edit_user GET    /users/:id/edit(.:format)                     users#edit
#                user GET    /users/:id(.:format)                          users#show
#                     PATCH  /users/:id(.:format)                          users#update
#                     PUT    /users/:id(.:format)                          users#update
#                     DELETE /users/:id(.:format)                          users#destroy
#     move_belongings GET    /moves/:move_id/belongings(.:format)          belongings#index
#                     POST   /moves/:move_id/belongings(.:format)          belongings#create
#  new_move_belonging GET    /moves/:move_id/belongings/new(.:format)      belongings#new
# edit_move_belonging GET    /moves/:move_id/belongings/:id/edit(.:format) belongings#edit
#      move_belonging GET    /moves/:move_id/belongings/:id(.:format)      belongings#show
#                     PATCH  /moves/:move_id/belongings/:id(.:format)      belongings#update
#                     PUT    /moves/:move_id/belongings/:id(.:format)      belongings#update
#                     DELETE /moves/:move_id/belongings/:id(.:format)      belongings#destroy
#               moves GET    /moves(.:format)                              moves#index
#                     POST   /moves(.:format)                              moves#create
#            new_move GET    /moves/new(.:format)                          moves#new
#           edit_move GET    /moves/:id/edit(.:format)                     moves#edit
#                move GET    /moves/:id(.:format)                          moves#show
#                     PATCH  /moves/:id(.:format)                          moves#update
#                     PUT    /moves/:id(.:format)                          moves#update
#                     DELETE /moves/:id(.:format)                          moves#destroy
#         session_new GET    /session/new(.:format)                        session#new
#             session POST   /session(.:format)                            session#create
#              logout GET    /logout(.:format)                             session#destroy

UprootApp::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get 'admin', :to => "access#index"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
    resources :users
    resources :moves
    resources :belongings
    get "belongings/:move_id/new" => "belongings#new"

  #routes needed for session creation
  get  "/session/new"  => "session#new"
  post "/session"      => "session#create"
  get  "/logout"       => "session#destroy"



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
