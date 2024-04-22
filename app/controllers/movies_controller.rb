class MoviesController < ApplicationController
  # create a authorize method to do a specific action (rolify)
  # before_action :authorize_user , only: [:create , :destroy, :update]
  before_action :authenticate_user!  , except: [:index , :show]

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create 
    @movie = Movie.create(movie_params)
    authorize @movie
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    authorize @movie
    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])  
    authorize @movie
    @movie.destroy
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:image , :name, :description, :release_date, :duration_hour , :duration_minute)
  end

  # def authorize_user 
  #   unless current_user.has_role?(:admin)
  #     redirect_to root_path , alert: "You are not authorized to perform this action" 
  #   end 
  # end 

  # def authorize_user 
  #   movie = @movie || Movie
  #   authorize movie
  # end
end
