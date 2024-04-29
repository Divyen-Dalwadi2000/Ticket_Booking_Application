class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def show
  end

  def new
    @day = Day.new
  end

  def create 
    @day = Day.create(days_params)
    if @day.save
      redirect_to days_path
    else
      render :new
    end
  end 

  def edit 
    
  end 


end
