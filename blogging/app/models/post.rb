class Post < ApplicationRecord
  validates :author, :presence => true
  validates :title, :presence => true
  belongs_to :author
  has_many :comments
end
