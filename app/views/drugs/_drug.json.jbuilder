json.extract! drug, :id, :drug_name, :drug_price, :date_created, :date_expire, :created_at, :updated_at
json.url drug_url(drug, format: :json)
