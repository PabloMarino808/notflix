Rails.application.routes.draw do

  get "movies",                 to:"movies#index",                as:"movies"
  get "series",                to:"series#index",                as:"series"
  get "documentary_films",     to:"documentary_films#index",      as:"documentary_films"

  get "movies/new",                to:"movies#new",                as:"movies_new"
  get "series/new",                to:"series#new",                as:"series_new"
  get "documentary_films/new",     to:"documentary_films#new",      as:"documentary_films_new"

  post "movies",                to:"movies#create"
  post "series",                 to:"series#create"
  post "documentary_films",     to:"documentary_films#create"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "movies#index"
end
