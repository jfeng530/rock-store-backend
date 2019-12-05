class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :purchases, :checkedout

  def purchases
    self.object.purchases.map do |purchase|
      {id: purchase.id,
      rock: purchase.rock,
      quantity: purchase.quantity}
    end
  end

end
