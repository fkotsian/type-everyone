class AddUploadedFileToFigureImages < ActiveRecord::Migration
  def change
    add_column :figure_images, :uploaded, :string
  end
end
