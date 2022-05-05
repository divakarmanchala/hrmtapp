class HolidaysManagementController < ApplicationController
  def holidaysmanagement
    @upholidays = Holiday.all
  end

  def new
    @holiday = Holiday.new 
  end

  def create 
    @holiday = Holiday.new(holidaysparams)
    @holiday.save
    redirect_to holidaysmanagement_path
  end

  private 

  def holidaysparams 
    params.permit(:name, :date, :year)
  end
end
