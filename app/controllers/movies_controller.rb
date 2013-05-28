class MoviesController < ApplicationController
  def new
    @movie = Movie.new
    @movies = Movie.find(:all)
  end

  def create
  	@movie = Movie.new(params[:movie])
  	@rental = @movie.rentals.build(:borrowed_on => Date.new, :returned_on => Date.new)
  	if @movie.save
  	  redirect_to new_movie_path
  	end
  end

  def edit
  	@movie = Movie.find(params[:id])
  end

  def update
  	@movie = Movie.find(params[:id])
  	@rental = @movie.rentals.build(:borrowed_on => Date.new, :returned_on => Date.new)
  	if @rental.save
  		redirect_to new_rental_path(:id => @movie.id)
  	end
  end

end
