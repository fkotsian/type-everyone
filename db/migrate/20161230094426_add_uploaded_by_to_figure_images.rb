class AddUploadedByToFigureImages < ActiveRecord::Migration
  def change
    add_column :figure_images, :uploaded_by, :string
  end
end
