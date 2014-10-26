class AddFiguresToFigureImages < ActiveRecord::Migration
  def change
    add_column :figure_images, :figure_id, :integer
    add_index  :figure_images, :figure_id, unique: true
  end
end
