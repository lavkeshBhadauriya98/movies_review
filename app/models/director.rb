class Director < ApplicationRecord
	has_many :movies
	has_many :star_cast
end
