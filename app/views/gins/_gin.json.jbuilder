json.extract! gin, :id, :name, :abv, :snippet, :pic, :slug, :text, :botanicals, :distillery, :pic_file_name, :created_at, :updated_at
json.url gin_url(gin, format: :json)
