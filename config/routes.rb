Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/resumes', to:'resume#index'
      get '/resumes/:id', to: 'resume#show'
      patch '/resumes/:id', to: 'resumes#update'
      delete '/resumes/:id', to: 'resumes#destroy'
    end
  end
end
