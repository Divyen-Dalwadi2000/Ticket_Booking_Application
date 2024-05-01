class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def new
    @show = Show.new
  end

  def create 
    @show = Show.create(show_params)
    if @show.save
      redirect_to shows_path
    else
      render :new
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      redirect_to shows_path
    else
      render :edit
    end
  end

  def destroy
    p "================================"
    @show = Show.find(params[:id])  
    @show.destroy
    redirect_to shows_path
  end

  private

  def show_params
    params.require(:show).permit(:show_type , :show_time , :cinema_id )
  end

end
