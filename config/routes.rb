Rails.application.routes.draw do

  resources :users
  resources :holidays

  post 'users/new', to: 'users#create'
  post 'users/:id/edit', to: 'users#update'
  

  get 'projectsmanagements', to: 'projects_management#projectsmanagement'

  
  #routes for halidays managemet
  # get 'holidaysmanagement', to: 'holidays_management#index'
  # get 'holidaysmanagement/new', to: 'holidays_management#new'
  # post 'holidaysmanagement', to: 'holidays_management#create'
  # get 'holidaysmanagement/:id', to: 'holidays_management#show'
  # get 'holidaysmanagement/:id/edit', to: 'holidays_management#edit'
  # patch 'holidaysmanagement/:id', to: 'holidays_management#update'
  # put 'holidaysmanagement/:id', to: 'holidays_management#update'
  # delete 'holidaysmanagement/:id', to: 'holidays_management#destroy'
  


   
  

  #resources :employeemanagement
   get 'employeemanagement', to: 'employee_management#employeemanagement'
  # get 'employeemanagement/new', to: 'employee_management#newemployee'
  # post 'employeemanagement/new', to: 'employee_management#create'

  get 'designationmanagement', to: 'designation_management#designationmanagement'
  post 'designationmanagement', to: 'designation_management#create'

  get 'leavesmanagement', to: 'leaves_management#leavesmanagement'
  post 'leavesmanagement', to: 'leaves_management#create'

  devise_for :employees
  # get 'employeedetails', to: "employee_details#new"
  # post 'employeedetails', to: "employee_details#create"

  # get 'dashboard', to: 'zensark#home'

  
  

  #after giving controller 
  get 'dashboard', to: 'dashboard#dashboard'

  get 'attendance', to: 'attendance#attendance'

  get 'leaves', to: 'leaves#leaves'

  get 'settings', to: 'settings#settings'


  #for admin routes
   #get 'admin', to: 'admin#leaves'
  # post 'admin', to: "admin#create"


  # get 'designationmanagement', to: 'admin#designation'
  

  # get 'holidaysmanagement', to: 'admin#holidays'
  # post 'holidaysmanagement', to: 'admin#create'

  # get 'employemanagement', to: 'admin#employemanagement'
  # get 'projectmanagement', to: 'admin#projects'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



  get 'users', to: 'users#new'
  post 'users', to: 'users#create'
  
  root 'pages#home'
end
