class Tag < ApplicationRecord
    has_many :ticket_tags
    has_many :tickets, through: :ticket_tags
end
