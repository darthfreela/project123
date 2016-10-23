Rails.application.routes.draw do
<<<<<<< HEAD

=======
>>>>>>> de1060bd5964ab08de15d07d81235b71e5fccdf6


  resources :instruction_bulletins, :only => [:new, :create, :edit, :destroy, :update]

post '/users/change_profile' => "users#change_current_profile"

get '/users/change_password' => "users#change_password_page"

post '/users/change_password_function' => "users#change_password_function"

resources :import_files, :only =>  [:new, :create, :edit, :destroy, :update]#falto metodo create
resources :dashboard, :only => [:index]

resources :import_newsletters, :only =>  [:new, :edit, :destroy, :update]

resources :text_informatives, :only =>  [:new, :create, :edit, :destroy, :update]

resources :import_files, :only =>  [:new, :edit, :destroy, :update]

  resources :import_files, :only =>  [:new, :create, :edit, :destroy, :update]

<<<<<<< HEAD

=======
>>>>>>> de1060bd5964ab08de15d07d81235b71e5fccdf6
  resources :instruction_bulletins, :only => [:new, :create, :edit, :destroy, :update]

  resources :import_files, :only =>  [:new, :create, :edit, :destroy, :update]#falto metodo create

  resources :dashboard, :only => [:index]

  resources :import_newsletters, :only =>  [:new, :edit, :destroy, :update]


  resources :text_informatives, :only =>  [:new, :create, :edit, :destroy, :update]

  post '/change_profile' => "users#change_current_profile"

resources :report_overtime_supplementations, :only =>  [:index]

  get "/cities_by_state" => "report_overtime_supplementations#cities_by_state"
  get "/make_report_supplemention" => "report_overtime_supplementations#make_report_supplemention"

  resources :report_overtime_supplementations, :only =>  [:index]

  get "/cities_by_state" => "report_overtime_supplementations#cities_by_state"

  get "/make_report_supplemention" => "report_overtime_supplementations#make_report_supplemention"

  post '/change_profile' => "users#change_current_profile"

  resources :text_informatives, :only =>  [:new, :create, :edit, :destroy, :update]

  resources :informative_text_daily_bulletins, :only =>  [:new, :create, :edit, :destroy, :update]


  resources :imported_files, :only =>  [:new, :create, :edit, :destroy, :update]

  resources :rh_license_approvals, :only =>  [:new, :create, :edit, :destroy, :update]

<<<<<<< HEAD

=======
>>>>>>> de1060bd5964ab08de15d07d81235b71e5fccdf6
  resources :disthoraext

  resources :approval_solicitation, :only =>  [:new, :edit, :destroy, :update]
  get 'approval_solicitation/:id' => 'approval_solicitation#edit'
  get 'approval_solicitation/approve/:id' => 'approval_solicitation#approve'
  get 'approval_solicitation/reprove/:id' => 'approval_solicitation#reprove'
<<<<<<< HEAD

=======
>>>>>>> de1060bd5964ab08de15d07d81235b71e5fccdf6

  resources :approval_request_dispense_superior, :only =>  [:new, :edit, :destroy, :update]

  resources :approval_unavailability_and_removals, :only =>  [:new, :create, :edit, :destroy, :update]
  get 'approval_unavailability_and_removals/:id' => 'approval_unavailability_and_removals#view_request'
  get 'approval_unavailability_and_removals/approve/:id' => 'approval_unavailability_and_removals#approve'

<<<<<<< HEAD

=======
>>>>>>> de1060bd5964ab08de15d07d81235b71e5fccdf6
  get 'approval_request_dispense_superior/:id' => 'approval_request_dispense_superior#edit'
  get 'approval_request_dispense_superior/approve/:id' => 'approval_request_dispense_superior#approve'

  get 'approval_request_dispense_superior/reprove/:id' => 'approval_request_dispense_superior#reprove'

  resources :disthoraext, :only =>  [:new, :create, :edit, :destroy, :update]

<<<<<<< HEAD

=======
>>>>>>> de1060bd5964ab08de15d07d81235b71e5fccdf6
  resources :request_dispenses

  resources :disthoraext

  resources :distribuicao_horas_extras, :only =>  [:new, :create, :edit, :destroy, :update]

  resources :profiles, :only =>  [:new, :create, :edit, :destroy, :update]

  resources :pointing_hours, :only => [:new, :create, :edit, :destroy, :update]

  resources :initials, :only => [:new, :create, :edit, :destroy, :update]

  resources :substituicao_temporarias, :only => [:new, :create, :edit, :destroy, :update]

  resources :temporary_replacements, :only => [:new, :create, :edit, :destroy, :update]

  resources :request_vacations,  :only => [:new, :create, :edit, :destroy, :update]

  resources :service_types,  :only => [:new, :create, :edit, :destroy, :update]

  resources :platoons,  :only => [:new, :create, :edit, :destroy, :update, :cities_platoon]
  get "/cities_platoon" => "platoons#cities_platoon"

  resources :companies, :only => [:index, :new, :create, :edit, :destroy, :update]

  resources :trainees, :only => [:new, :create, :edit, :destroy, :update]

  resources :post_graduations, :only => [:new, :create, :edit, :destroy, :update]

  resources :person_table, :only => [:index]

  resources :gpms, :only => [:new, :create, :edit, :destroy, :update]

  resources :uniforms, :only => [:index, :new, :create, :edit, :destroy, :update]

  resources :functions, :only => [:index, :new, :create, :edit, :destroy, :update]

  resources :opms, :only => [:index, :new, :create, :edit, :destroy, :update]
  get "/cities_opm" => "platoons#cities_opm"

  resources :solicitacao_fers, :only => [:new, :create, :edit, :destroy, :update]

  resources :request_licences, :only => [:new, :create, :edit, :destroy, :update]

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

