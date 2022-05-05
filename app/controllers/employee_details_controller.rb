class EmployeeDetailsController < ApplicationController
  def new 
    @mf = EmployeeDetail.new()
  end

  def create 
    @mf = EmployeeDetail.new(edparams)
    @mf.save
    render plain: @mf.errors.inspect
  end

  def edparams 
    params.permit(:contact_no, :emplyee_id, :emergency_contact_no, :designation_id, :manager_id, :blood_group, :project_id, :experience)
  end
end
