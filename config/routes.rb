Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/destroy'
  get 'posts/index'
  get 'posts/show'
  resources :apartments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
