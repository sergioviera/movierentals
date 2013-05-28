class Rental < ActiveRecord::Base
  attr_accessible :borrowed_on, :movie_id, :returned_on
  belongs_to :movie
end
