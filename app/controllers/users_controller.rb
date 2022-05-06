class UsersController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def show 
  end

  def index
    @user = Employee.all
  end

  def new
    @user = Employee.new
  end

  def edit 
  end

  def create
    @user = Employee.new(employee_params)
    if @user.save 
      redirect_to employeemanagement_path
    else  
      render 'new'
    end 
  end

  def update
    if @user.update(employee_params)
      redirect_to employeemanagement_path
    else  
      redner 'edit'
    end
  end

  def destroy
    @user.delete 
    redirect_to employeemanagement_path
  end

  private 
  
  def set_employee
    @user = Employee.find(params[:id])
  end

  def employee_params 
    params.permit(:first_name, :last_name, :email, :password, :role_id, :employee_id)
  end

end