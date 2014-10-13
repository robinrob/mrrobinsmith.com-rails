Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users

  # The priority is based upon order of :creation => first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'blogposts#index'

  get '/cv' => 'pages#cv'

  get '/cv/download' => 'pages#download_cv'

  get '/programming/css' => 'css#index'

  get '/css/face' => 'css#face'

  get '/css/gradient' => 'css#gradient'

  get '/css/eyes' => 'css#eyes'

  get '/blogposts/admin' => 'blogposts#admin'

  resource :profile

  resources :blogposts

  resources :programming

  # resources :users, :except => [:index]

end