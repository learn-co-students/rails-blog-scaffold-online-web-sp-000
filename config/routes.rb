Rails.application.routes.draw do
  resources :posts

  get 'posts/edit', to: 'edit_post_path'
end
