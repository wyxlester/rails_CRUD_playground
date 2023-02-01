Rails.application.routes.draw do
  get 'books/new'
  get 'books/create'
  get 'books/destroy'
  root to: "profiles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :profiles do
    # Nested Resources example
    resources :testimonials, only: %i[new create]
    resources :books, only: %i[new create edit update destroy]
  end
  resources :testimonials, only: %i[destroy]
  resources :books, only: %i[destroy]
end
