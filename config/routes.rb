Rails.application.routes.draw do

  resources :users
  devise_for :employees

  post 'users/new', to: 'users#create'
  post 'users/:id/edit', to: 'users#update'

 
  

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

  root 'pages#home'
end
