class Category < ApplicationRecord
  VALID_REGEX = /\A[A-Z]\w{1,}(\s+\w{2,}\s*){1,}\./

  has_many :posts
  has_many :comments, as: :commentable

  validates :name, presence: true, format: { with: VALID_REGEX }
end
