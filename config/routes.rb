Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/receivers" => "receivers#index"
  get "/receivers/:id" => "receivers#show"
  post "/receivers" => "receivers#create"
  patch "/receivers/:id" => "receivers#update"
end
