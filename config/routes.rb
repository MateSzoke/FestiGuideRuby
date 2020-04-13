Rails.application.routes.draw do

  resources :festival_bases, path: 'festivals'
  get 'add_festival/stage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
