class Category < ActiveRecord::Base
	has_many :connections
	has_many :posts, through: :connections

	validates :title, presence: true
end