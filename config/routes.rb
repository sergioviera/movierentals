Movierentals::Application.routes.draw do
  resources :movies
  resources :rentals
  
  root :to => 'movies#new'
end
