class AddUploadedByToFigureImages < ActiveRecord::Migration[4.2]
  def change
    add_column :figure_images, :uploaded_by, :string
  end
end
