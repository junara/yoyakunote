Rails.application.routes.draw do
  root to: 'static_pages#home'
  match 'items/:uuid/inform', to: 'items#inform', via: [:get], as: 'inform_item'
  resources :items, param: :uuid, only: [:create, :edit, :show, :update] do
    resources :reservations, param: :uuid, only: [:create, :edit, :index, :show]
  end
end
