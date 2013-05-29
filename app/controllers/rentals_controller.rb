class RentalsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
  	@movie = Movie.find(params[:id])
  	@rentals = @movie.rentals.build
  end

  def create
  	@movie = Movie.find(params[:id])
  	@rental = @movie.rentals.build(params[:rental])
  	if @rental.save
  		redirect_to new_rental_path(:id => @movie.id)
  	end
  end

end
