class AddColumnsToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :content, :text
  end
end
