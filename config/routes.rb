Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      #resume routes
      get '/resumes', to:'resume#index'
      get '/resumes/:id', to: 'resume#show'
      patch '/resumes/:id', to: 'resumes#update'
      delete '/resumes/:id', to: 'resumes#destroy'
      #students routes
      post "/students", to: "students#create"
      #sessions routes
      post "/login", to: "sessions#create"
      get "/logout", to: "sessions#destroy"
    end
  end
end


