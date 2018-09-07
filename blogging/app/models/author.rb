class Author < ApplicationRecord
	validates :userid, :presence => true
	has_many :posts
	has_many :comments
end
