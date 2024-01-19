class Movie < ApplicationRecord
	has_many :reviews, dependent: :destroy
	belongs_to :user
	has_many :star_casts
	belongs_to :director
	has_one_attached :image
	validates :title, presence: true
end
