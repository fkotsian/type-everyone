class AddUploadedFileToFigureImages < ActiveRecord::Migration[4.2]
  def change
    add_column :figure_images, :uploaded, :string
  end
end
