json.extract! account, :id, :number, :name, :cost_center, :work_front, :phone :created_at, :updated_at
json.url account_url(account, format: :json)