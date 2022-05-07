class LeavesController < ApplicationController
  def index
  end
  def leaves
  end

  def leaves 
    @types_of_eleaves = Leave.all
  end
end
