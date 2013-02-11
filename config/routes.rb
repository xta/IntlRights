IntlRights::Application.routes.draw do
  get '/videos/page/:page' => 'videos#index'
  get '/country/:iso_code/page/:page' => 'videos#country'

  get 'country/:iso_code' => 'videos#country'
  get 'show/:id' => 'videos#show'

  root :to => 'videos#index'
end
