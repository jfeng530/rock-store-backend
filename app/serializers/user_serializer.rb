class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :admin, :orders

  def orders
    self.object.orders.map do |order|
      {id: order.id,
      checkedout: order.checkedout,
      purchases: order.purchases}
    end
  end

end
