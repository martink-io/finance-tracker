Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  devise_scope :user do
    post '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root 'welcome#index'

end
