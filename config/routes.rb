Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  } 
  


  # as :user do
  #   delete '/users/sign_in', to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
  resources :posts 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

    #post へのルーティング
  get 'underPage', to: 'posts#underPage' 

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get  '/users/sign_out' , to: 'posts#underPage'
  end


  # Define the root path route ("/")
  # Defines the root path route ("/")
  # root "posts#index"



end

