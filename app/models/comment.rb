class Comment < ApplicationRecord
  VALID_REGEX = /\A[A-Z]\w{1,}(\s+[A-Z]\w{1,}\s*){1,}\./

  belongs_to :commentable, polymorphic: true

  validates :author, presence: true, format: { with: VALID_REGEX }
end
