class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :purchases

end
