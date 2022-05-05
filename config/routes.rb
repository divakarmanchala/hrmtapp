Rails.application.routes.draw do

  resources :employee
  

  get 'projectsmanagements', to: 'projects_management#projectsmanagement'


  get 'holidaysmanagement', to: 'holidays_management#holidaysmanagement'
  post 'holidaysmanagement', to: 'holidays_management#create'

  #resources :employeemanagement
  get 'employeemanagement', to: 'employee_management#employeemanagement'

  get 'designationmanagement', to: 'designation_management#designationmanagement'
  post 'designationmanagement', to: 'designation_management#create'

  get 'leavesmanagement', to: 'leaves_management#leavesmanagement'
  post 'leavesmanagement', to: 'leaves_management#create'

  devise_for :employees
  get 'employeedetails', to: "employee_details#new"
  post 'employeedetails', to: "employee_details#create"

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
  root 'pages#home'
end
