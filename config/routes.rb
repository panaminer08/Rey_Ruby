Rails.application.routes.draw do
  resources :admin
  resources :students
  resources :teachers
  resources :profiles
  resources :cohorts
  resources :courses
  resources :student_cohorts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
