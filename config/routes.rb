Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
    get 'users/sign_in' => "devise/sessions#new"
  end
  
  get 'pages/servers'
  get 'pages/flowchart'
  
  # Defines the root path route ("/")
  root "pages#servers"
end
