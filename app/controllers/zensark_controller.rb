class ZensarkController < ApplicationController

  def show_types 
    @types_of_eleaves = Leave.all
  end
  
  def home
    @attendances = Attendance.where("login > ? AND logout < ?", Date.today-7, Date.today-1)
    @upholidays = Holiday.all
  end

  def leaves
  end

  def attendance 
  end

  def settings
  end
end
