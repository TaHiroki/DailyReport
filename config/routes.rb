Rails.application.routes.draw do

  root to: '/login'

  get '/login' => 'users#login'
  post '/users/login_user' => 'users#login_user'
  post '/users/logout' => 'users#logout'
  get 'users/index' => 'users#index'
  get 'users/new' => 'users#new'
  post 'users/create' => 'users#create'
  get 'users/edit/:id' => 'users#edit'
  post 'users/update/:id' => 'users#update'
  get 'users/destroy/:id' => 'users#destroy'


  get 'reports/index' => 'reports#index'
  get 'reports/new' => 'reports#new'
  post 'reports/create' => 'reports#create'
  get 'reports/show/:id' => 'reports#show'
  get 'reports/edit/:id' => 'reports#edit'
  post 'reports/update/:id' => 'reports#update'
  post 'reports/destroy/:id' => 'reports#destroy'

  get 'comments/new' => 'comments#new'
  post 'comments/create' => 'comments#create'
  get 'comments/edit/:id' => 'comments#edit'
  post 'comments/update/:id' => 'comments#update'
  post 'comments/destroy/:id' => 'comments#destroy'

  post 'likes/:report_id/create' => 'likes#create'
  post 'likes/:report_id/destroy' => 'likes#destroy'

end
