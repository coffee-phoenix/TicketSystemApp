class Ticket < ApplicationRecord
  belongs_to :customer
  belongs_to :machine

  has_many :ticket_tags
  has_many :tags, through: :ticket_tags
end
