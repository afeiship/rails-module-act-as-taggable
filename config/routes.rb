Rails.application.routes.draw do
  resources :articles
  # resources :tags
  root to: 'articles#index'
  get 'tags/:tag', to: 'articles#index', as: :tag, :constraints  => { :tag => /[^\/]+/ }
end
