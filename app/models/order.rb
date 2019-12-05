class Order < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy
end
