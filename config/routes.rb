Rails.application.routes.draw do
  resources :works do
  	resources :web_works
  	resources :art_works
  end

  root "works#index"
end
