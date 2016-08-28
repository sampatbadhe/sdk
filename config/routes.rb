Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :members, controllers: {
    sessions: 'members/sessions',
    registrations: 'members/registrations'
  }
  resources :topics
  resources :helplines
  resources :maintenance_receipts
  resources :comments

  get '/topic_comments/:id' => 'topics#comments', as: :topic_comments
  patch '/topic_status/:topic_id/:status' => 'topics#update_status', as: :topic_status

  get "members", to: "members#home", as: :home

  root to: 'members#home'
end
