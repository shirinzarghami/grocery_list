Rails.application.routes.draw do
   resources :groceries
   resources :categories
    root 'welcome#index'
end
