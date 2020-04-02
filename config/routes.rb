Rails.application.routes.draw do
  get 'reports/index' => 'reports#index'
  get 'reports/new' => 'reports#new'
  post 'reports/create' => 'reports#create'
  get 'reports/show/:id' => 'reports#show'
  get 'reports/edit/:id' => 'reports#edit'
  post 'reports/update/:id' => 'reports#update'



end
