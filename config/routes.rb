Rails.application.routes.draw do
  get 'catalogs/new'
  get 'catalogs/show'
  get 'catalogs/edit'
  get 'userparam/new'
  get 'userparam/show'
  get 'userparam/edit'
  devise_for :users
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
