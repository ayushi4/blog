Rails.application.routes.draw do
   root "articles#index"
   
   #For 'C'
   #get "/articles", to: "articles#index"
   #get "/articles/:id", to: "articles#show"
   
   # for 'R'
   resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :articles
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :articles do
        resources :comments
      end
    end
  end
end
