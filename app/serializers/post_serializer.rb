class PostSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :category
end
