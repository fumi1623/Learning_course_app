Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :learning_courses, only: [:new, :create, :index, :show, :destroy]

end
