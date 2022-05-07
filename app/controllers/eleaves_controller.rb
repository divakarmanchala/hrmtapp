class EleavesController < ApplicationController
  before_action :set_eleave, only: [:edit, :update, :destroy]

  def index
    @eleaves = Leave.all
  end

  def new
    @eleave = Leave.new
  end

  def edit 
  end

  def create 
    @eleave = Leave.new(eleave_params)
    if @eleave.save 
      redirect_to eleaves_path
    else  
      render 'new'
    end
  end

  def update 
    if @eleave.update(eleave_params)
      redirect_to eleaves_path
    else  
      render 'edit'
    end
  end

  def destroy 
    @eleave.destroy 
    redirect_to eleaves_path
  end

  private 

  def eleave_params 
    params.permit(:name, :description)
  end

  def set_eleave
    @eleave = Leave.find(params[:id])
  end
end