class Purchase < ApplicationRecord
  belongs_to :rock
  belongs_to :order
end
