Rails.application.routes.draw do
  get 'reports/index' => "reports#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
