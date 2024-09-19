class Customer < ApplicationRecord
    has_many :machines
    has_many :tickets
end
