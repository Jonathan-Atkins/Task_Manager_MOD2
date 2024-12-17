Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "/",                         to: "welcome#index"
  get '/api/v1/tasks',             to: "api/v1/tasks#index"
  get '/api/v1/tasks/:id',         to: "api/v1/tasks#show"
  post '/api/v1/tasks',            to: "api/v1/tasks#create"
  patch '/api/v1/tasks/:id',       to: "api/v1/tasks#update" 
  delete '/api/v1/tasks/:id',      to: "api/v1/tasks#destroy"
end
