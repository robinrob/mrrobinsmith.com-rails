Rails.application.routes.draw do
  get "auth/login"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'blogposts#index'

  get '/' => 'pages#home'

  get '/back' => 'application#back'

  get '/writing' => 'writing#home'

  get '/cv' => 'pages#cv'

  get '/cv/download' => 'pages#download_cv'

  get '/programming' => 'programming#index'

  get '/programming/css' => 'css#index'

  get '/login' => 'auth#index'

  get '/signup' => 'auth#signup'

  get '/auth/login' => 'auth#login'

  get '/auth/logout' => 'auth#logout'

  get '/auth/newuser' => 'auth#newuser'

  get '/blogposts/index' => 'blogposts#index'

  get '/blogposts/admin' => 'blogposts#admin'

  get '/css/face' => 'css#face'

  get '/css/gradient' => 'css#gradient'

  get '/css/eyes' => 'css#eyes'

  get '/hello' => 'pages#hello'

  resources :blogposts

  resources :users
  

end