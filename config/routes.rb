Rails.application.routes.draw do
  devise_for :members, { sessions: 'members/sessions' }

  root to: 'members#home'
end
