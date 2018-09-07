class Comment < ApplicationRecord
  validates :author, :presence => true
  belongs_to :post
  belongs_to :author
end
