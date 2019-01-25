Rails.application.routes.draw do
  get '/works', to: 'works#index', as: 'works'
  get '/works/:id', to: 'works#show', as: 'work'

  get '/works/:work_id/web_works', to: 'web_works#index', as: 'work_web_works'
  get '/works/:work_id/web_works/:id', to: 'web_works#show', as: 'work_web_work'

  get '/works/:work_id/art_works', to: 'art_works#index', as: 'work_art_works'
  get '/works/:work_id/art_works/:id', to: 'art_works#show', as: 'work_art_work'

  get '/works/:work_id/art_works/:art_work_id/media', to: 'media#index'
  get '/works/:work_id/art_works/:art_work_id/media/:id', to: 'media#show'

  get '/works/:work_id/art_works/:art_work_id/media/:media_id/pieces', to: 'pieces#index', as: 'pieces'
  get '/works/:work_id/art_works/:art_work_id/media/:media_id/pieces/new', to: 'pieces#new', as: 'new_piece'
  post '/works/:work_id/art_works/:art_work_id/media/:media_id/pieces', to: 'pieces#create'

  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get '/about', to: 'pages#about', as: 'about'

  root 'works#index'
end
