class Post < ActiveRecord::Base
    has_many :connections
    has_many :categories, through: :connections
    has_many :comments

    belongs_to :user
end