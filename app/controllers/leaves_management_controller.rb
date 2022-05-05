class LeavesManagementController < ApplicationController
  def leavesmanagement
  end

  def new
    @leaves = Leave.new
  end
  
  def create
    @leaves= Leave.new(leavesparams)
    @leaves.save
    redirect_to leavesmanagement_path
  end
  
  def leavesparams
    params.permit(:name , :description)
  end
end
