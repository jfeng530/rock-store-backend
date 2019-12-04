class PurchaseSerializer < ActiveModel::Serializer
  attributes :id, :rock_id, :order_id, :quantity
end
