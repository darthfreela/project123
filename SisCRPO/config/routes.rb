Rails.application.routes.draw do

  get 'temporary_replacements/new'

<<<<<<< HEAD
  get 'pointing_hours/new'

  get 'release_vacations/index'

  get 'release_vacations/edit'

  resources :disthoraext

  resources :distribuicao_horas_extras, :only =>  [:new, :create, :edit, :destroy, :update]
=======
  resources :profiles, :only =>  [:new, :create, :edit, :destroy, :update]

>>>>>>> cf206a925e9a3f9b0279f793ba69aa5491318fe0
  resources :distribuicao_horas_extras, :only =>  [:new, :create, :edit, :destroy, :update]


  resources :pointing_hours, :only => [:new, :create, :edit, :destroy, :update]

  resources :siglas, :only => [:new, :create, :edit, :destroy, :update]

  resources :substituicao_temporarias, :only => [:new, :create, :edit, :destroy, :update]

  resources :temporary_replacements, :only => [:new, :create, :edit, :destroy, :update]

  resources :release_vacations,  :only => [:new, :create, :edit, :destroy, :update]

  resources :tipo_servicos,  :only => [:new, :create, :edit, :destroy, :update]

  resources :pelotaos,  :only => [:new, :create, :edit, :destroy, :update]

  resources :companies, :only => [:new, :create, :edit, :destroy, :update]

  resources :estagiarios, :only => [:new, :create, :edit, :destroy, :update]

  resources :postograduacaos, :only => [:new, :create, :edit, :destroy, :update]

  resources :quadro_efetivo, :only => [:index]

  resources :gpms, :only => [:new, :create, :edit, :destroy, :update]

  resources :postograduacaos, :only => [:new, :create, :edit, :destroy, :update]

  resources :uniforms, :only => [:index, :new, :create, :edit, :destroy, :update]

  resources :functions, :only => [:index, :new, :create, :edit, :destroy, :update]

  resources :opms, :only => [:index, :new, :create, :edit, :destroy, :update]

  resources :solicitacao_fers, :only => [:new, :create, :edit, :destroy, :update]

  resources :licencas, :only => [:new, :create, :edit, :destroy, :update]

  resources :users, :only => [:index, :new, :create, :edit, :destroy, :update]

  resources :management_hours, :only => [:index, :new, :create, :edit, :destroy, :update]


  devise_for :users

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  devise_scope :user do
    authenticated :user do
      # Rails 4 users must specify the 'as' option to give it a unique name
      root to: 'dashboard#index', as: :dashboard
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
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
