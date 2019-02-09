json.extract! bill, :id, :bill_no, :total, :advance, :grand_total, :is_complete, :created_at, :updated_at
json.url bill_url(bill, format: :json)
