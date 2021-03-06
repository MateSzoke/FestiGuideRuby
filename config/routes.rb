Rails.application.routes.draw do
  root 'festival_bases#index'
  resources :festival_bases, path: 'festivals/'
  get 'festival/:id', to: 'festival_bases#show'
  get 'programs/new/:id', to: 'programs#new', as: 'new_programs'
  post 'programs/new/:id', to: 'programs#create', as: 'create_programs'
  get 'programs/edit/:id', to: 'programs#edit', as: 'edit_programs'
  post 'programs/edit/:id', to: 'programs#update', as: 'update_programs'
end
