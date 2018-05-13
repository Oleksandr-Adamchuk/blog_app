class Post < ApplicationRecord
  VALID_REGEX = /\A[A-Z]\w{1,}(\s+\w{2,}\s*){1,}\./

  belongs_to :category
  has_many :comments, as: :commentable
  has_many_attached :uploads

  validates :name, presence: true, format: { with: VALID_REGEX }
  validate :upload_validation

  def upload_validation
    if uploads.attached? && uploads.blob.byte_size > 2_000_000
      uploads.purge
      errors[:base] << 'Too big'
    end
  end
end
