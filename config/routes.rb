Rails.application.routes.draw do
  resources :work do
  	resources :web_work
  	resources :art_work
  end

  root "works#index"
end
