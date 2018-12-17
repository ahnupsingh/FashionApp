json.extract! employee, :id, :name, :type, :address, :contact, :created_at, :updated_at
json.url employee_url(employee, format: :json)
