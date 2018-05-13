class Post < ApplicationRecord
  belongs_to :category
  has_many :comments, as: :commentable
  has_many_attached :uploads
end