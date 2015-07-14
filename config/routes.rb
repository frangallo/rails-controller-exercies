Rails.application.routes.draw do
  root 'users#index'
  resources :users, except: [:edit, :new] do
    resources :contacts, only: [:index]
  end
  resources :contacts, except: [:edit, :new, :index]
  resources :contact_shares, only: [:create, :destroy]


end


# get '/users' => 'users#index'
# post '/users' => 'users#create'
# get 'users/new' => 'users#new', :as => 'new_user'
# get 'users/:id/edit' => 'users#edit', :as => 'edit_user'
# get 'users/:id' => 'users#show', :as => 'user'
# patch 'users/:id' => 'users#update'
# put 'users/:id' => 'users#update'
# delete 'users/:id' => 'users#destroy'
