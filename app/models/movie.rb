class Movie < ActiveRecord::Base
  attr_accessible :title, :year
  has_many :rentals
end
