json.extract! ticket, :id, :description, :ticket_type, :photos, :notes, :customer_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
