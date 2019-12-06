class Order < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy

  def showPurchaseRocks
    self.purchases.map{ |purchase| purchase.rock }
  end 

  def showTotal
    total = 0
    self.purchases.each{ |purchase| total = total + purchase.rock.price }
    return total
  end 

  
end
