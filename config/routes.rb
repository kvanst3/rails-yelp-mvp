Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]

    collection do
      get 'top'
    end

    member do
      get 'chef'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
