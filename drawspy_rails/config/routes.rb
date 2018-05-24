Rails.application.routes.draw do
  
  resources :games
  post 'games/join'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
