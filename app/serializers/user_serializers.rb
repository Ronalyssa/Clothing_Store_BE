class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :password, :age
    has_many :carts
end