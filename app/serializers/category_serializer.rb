class CategorySerializer < ActiveModel::Serializer
  # TODO: These serializers configs placed here,
  # because it doesn't work in initialize folder for some reason.
  ActiveModelSerializers.config.adapter = :json
  ActiveModelSerializers.config.key_transform = :camel

  attributes :id, :name, :desc
  has_many :posts
end
