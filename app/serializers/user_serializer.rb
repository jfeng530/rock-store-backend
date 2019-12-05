class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :admin, :orders

  def orders
    self.object.orders.map do |order|
      {id: order.id,
      purchases: order.purchases}
    end
  end
end
