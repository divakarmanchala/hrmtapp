class EmployeesController < ApplicationController

  def index 
    @user = Employee.find(params[:id])
  end

  def employeemanagement
    @users = Employee.all
  end

  #creating new employee

  def new 
    @user = Employee.new
  end

  

  def create 
    @user = Employee.new(new_employee_params)
    if @user.save 
      redirect_to employeemanagement_path
    else  
      render plain: 'faild'
    end
  end

  def destroy 
    @user = Employee.find(params[:id])
    @user.destroy
    redirect_to employeemanagement_path
  end
  #(:email, :first_name, :last_name, :employee_id, :role_id:, :password)

  def new_employee_params  
    params.permit(:email, :first_name, :last_name, :employee_id, :role_id, :password)
  end

 
  
end
