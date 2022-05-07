Rails.application.routes.draw do
  resources :eleaves 
  resources :holidays 
  resources :users
  devise_for :employees

  post 'eleaves/new', to: 'eleaves#create'
  post 'eleaves/:id/edit', to: 'eleaves#update'

  post 'users/new', to: 'users#create'
  post 'users/:id/edit', to: 'users#update'

  post 'holidays/new', to: 'holidays#create'
  post 'holidays/:id/edit', to: 'holidays#update'

  get 'projectsmanagements', to: 'projects_management#projectsmanagement'

  get 'designationmanagement', to: 'designation_management#designationmanagement'
  post 'designationmanagement', to: 'designation_management#create'

  get 'leavesmanagement', to: 'leaves_management#leavesmanagement'
  post 'leavesmanagement', to: 'leaves_management#create'


  #employee urls
  get 'dashboard', to: 'dashboard#dashboard'
  get 'attendance', to: 'attendance#attendance'
  get 'leaves', to: 'leaves#leaves'
  get 'settings', to: 'settings#settings'

  get 'about', to: 'pages#home'

  root 'pages#home'
end
