class Machine < ApplicationRecord
  belongs_to :customer
  has_many :tickets
end
