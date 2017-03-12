Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      #students routes
      get "/signup", to: "students#new"
      post "/students", to: "students#create"
      #sessions routes
      # get "/login", to: "sessions#new"
      post "/login", to: "sessions#create"
      get "/logout", to: "sessions#destroy"
    end
  end

end