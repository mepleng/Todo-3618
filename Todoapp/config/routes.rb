Rails.application.routes.draw do
  root 'tasks#index'
  
  resources :tasks do
    member do
      get 'toggle'
    end
    collection do
      get 'incompletetask'
      get 'completetask'
    end
  end
end
