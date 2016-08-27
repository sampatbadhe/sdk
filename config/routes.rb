Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :members, controllers: {
    sessions: 'members/sessions',
    registrations: 'members/registrations'
  }

  root to: 'members#home'
end
