json.extract! event, :id, :title, :text, :date, :time, :price, :slug, :snippet, :created_at, :updated_at
json.url event_url(event, format: :json)
