class ItemSerializer < ActiveModel::Serializer
    attributes :id, :title, :price, :description, :category, :image
    belongs_to :carts
end
  