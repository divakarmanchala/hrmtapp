class EmployeeManagementController < ApplicationController

  def index 
    @employee = Employee.find(params[:id])
  end

  def employeemanagement
    @Employess = Employee.all
  end

  #creating new employee

  def new 
    @employee = Employee.new
  end

  

  def create 
    @employee = Employee.new(new_employee_params)
    if @employee.save 
      redirect_to employeemanagement_path
    else  
      render plain: 'faild'
    end
  end

  def destroy 
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employeemanagement_path
  end
  #(:email, :first_name, :last_name, :employee_id, :role_id:, :password)

  def new_employee_params  
    params.permit(:email, :first_name, :last_name, :employee_id, :role_id, :password)
  end

 
  
end
