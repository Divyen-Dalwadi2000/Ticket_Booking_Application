class CinemasController < ApplicationController
  def index
    @cinemas = Cinema.all
  end

  def new
  end
end
