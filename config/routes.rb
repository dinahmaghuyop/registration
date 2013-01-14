Registration::Application.routes.draw do
  
  root :to => 'applicants#index'
  
  resources :applicants
  
end
