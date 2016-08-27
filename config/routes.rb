Rails.application.routes.draw do
  devise_for :members, controllers: { 
  	sessions: 'members/sessions',
  	registrations: 'members/registrations' }

  root to: 'members#home'
end
