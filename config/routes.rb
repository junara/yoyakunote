Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'signup', to: 'users#new'
  get    'login', to: 'sessions#new'
  post   'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match 'search/', to: 'static_pages#search', via: [:get], as: 'search'
  match 'items/:uuid/inform', to: 'items#inform', via: [:get], as: 'inform_item'
  resources :items, param: :uuid, only: [:create, :edit, :show, :update] do
    resources :reservations, param: :uuid, only: [:create, :edit, :index, :show]
  end

  resources :matchings, param: :uuid, only: [:create, :edit, :show, :update, :new] do
    resources :matching_conversations, param: :uuid, only: [:create, :edit, :index, :show]
  end
end
