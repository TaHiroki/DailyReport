Rails.application.routes.draw do
  get 'users/index' => 'users#index'
  get '/allusers' => 'users#all'
  get 'users/new' => 'users#new'
  post 'users/create' => 'users#create'


  get 'reports/index' => 'reports#index'
  get 'reports/new' => 'reports#new'
  post 'reports/create' => 'reports#create'
  get 'reports/show/:id' => 'reports#show'
  get 'reports/edit/:id' => 'reports#edit'
  post 'reports/update/:id' => 'reports#update'
  post 'reports/destroy/:id' => 'reports#destroy'

end
