json.extract! dinner, :id, :item_name, :item_description, :item_price, :created_at, :updated_at
json.url dinner_url(dinner, format: :json)
