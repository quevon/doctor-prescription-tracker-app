json.extract! prescription, :id, :prescription_date, :doctor_id, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
