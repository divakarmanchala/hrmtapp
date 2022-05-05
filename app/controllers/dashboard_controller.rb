class DashboardController < ApplicationController
  before_action :set_profile
  def dashboard
    @upholidays = Holiday.all
  end


  private

  

  def set_profile 
    $name = full_name
    $profile_name = profile_letters
  end

  def full_name 
    find_user = Employee.find(current_employee.id)
    first_name = find_user.first_name 
    last_name = find_user.last_name 
    return first_name.capitalize + " " + last_name.capitalize 
  end
  def profile_letters
    find_user = Employee.find(current_employee.id)
    first_name = find_user.first_name 
    last_name = find_user.last_name 
    return first_name[0].capitalize + last_name[0].capitalize
  end
end
