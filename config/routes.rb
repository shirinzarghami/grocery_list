Rails.application.routes.draw do
   resources :groceries
   resources :categories do
    resources :groceries, only: [:index]
   end
    # root 'welcome#index'
   root :to => "categories#index"

end
