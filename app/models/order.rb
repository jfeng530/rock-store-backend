class Order < ApplicationRecord
  belongs_to :user
  has_many :purchases
end
