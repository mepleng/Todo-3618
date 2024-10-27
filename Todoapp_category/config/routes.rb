Rails.application.routes.draw do
  resources :categories do
    resources :tasks, only: [:index, :new, :create]
  end
  
  resources :tasks do
    member do
      get 'toggle'
    end
    collection do
      get 'incompletetask'
      get 'completetask'
    end
  end

  root 'categories#index'
end
