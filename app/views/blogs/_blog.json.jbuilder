json.array! @blogs, :id, :title, :text, :created_at, :updated_at, :url
json.url blog_url(blog, format: :json)
