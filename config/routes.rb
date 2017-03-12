Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/resumes', to:'resume#index'
  get '/resumes/:id', to: 'resume#show'
  get '/resumes/new', to: 'resume#new'
  post 'resumes', to: 'resumes#create'
  get '/resumes/edit', to: 'resumes#edit'
  patch '/resumes/:id', to: 'resumes#update'
  delete '/resumes/:id', to: 'resumes#destroy'
end
