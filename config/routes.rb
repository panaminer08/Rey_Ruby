Rails.application.routes.draw do
  get 'flashes/amin_panel'
  get 'admins/update'
  get 'admins/delete'
  get 'admins/edit'
  devise_for :admins
  root to: 'home#index'

  post 'admins/index',   to: 'admins#sign_in',    as: 'admin_sign_in'
  get 'admins/index',   to: 'admins#index'
  get 'admins/new',   to: 'admins#new'
  get 'flashes/admin_panel',    to: 'flashes#admin_panel',    as: 'flashes'
  get 'admins/create',  to: 'flashes#admin_panel',    as: 'admin_profile'
  get 'admins/new',   to: 'admins#new'
  post 'admins/new',   to: 'admins#create',  as: 'admins'
  get 'home/index',   to: 'home#index', as: 'home'
  get 'admin/create'
  get 'admin/update'
  get 'admin/index'
  get 'admin/delete'
  get 'admin/new'
  get 'profiles/new', to: 'profiles#new', as: 'new_profile'
  get 'profiles/edit'
  get 'profiles/update'
  get 'profiles/delete'
  get 'profiles/create'
  resources :profiles
  resources :admin
  post 'students/index',    to: 'students#sign_in'
  post '/students/new', to: 'students#create'
  resources :teachers  
  post 'teachers/index',    to: 'teachers#sign_in'   
  get 'teachers/index', to: 'teachers#index',    as: 'teacher_home' 
  get 'students/index', to: 'students#index',    as: 'student_home' 
  post 'profiles/index', to: 'profiles#index'                                
  get 'dashboards/teacher_profile', to: 'dashboards#teacher_profile',  as: 'instructor'
  get 'profiles/show_student', to: 'profiles#show_student',  as: 'pupil' 
  post '/teachers/new', to: 'teachers#create'
  resources :cohorts
  resources :courses
  resources :student_cohorts
  

end
