class AddImagesToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :image, :text
  end
end
