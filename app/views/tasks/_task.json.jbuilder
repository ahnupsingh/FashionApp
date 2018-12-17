json.extract! task, :id, :date, :bill_no, :task_particular, :quantity, :total, :created_at, :updated_at
json.url task_url(task, format: :json)
