class DesignationManagementController < ApplicationController
  def designationmanagement
  end
  def new 
    @mf = Designation.new()
  end

  def create 
    @mf = Designation.new(designationparams)
    @mf.save
    redirect_to designationmanagement_path
  end

  def designationparams 
    params.permit(:name, :description)
  end
end
