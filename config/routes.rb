Rails.application.routes.draw do
   resources :groceries
    root 'welcome#index'
end
