class AddImageUrlToMythoi < ActiveRecord::Migration[5.1]
  def change
    add_column :mythoi, :image_url, :string
  end
end
