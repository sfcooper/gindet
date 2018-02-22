class AddSnippetToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :snippet, :text
  end
end
