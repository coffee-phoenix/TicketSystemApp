json.extract! machine, :id, :make, :model, :serial_number, :description, :last_service_date, :customer_id, :created_at, :updated_at
json.url machine_url(machine, format: :json)
