class AddFiguresToFigureImages < ActiveRecord::Migration[4.2]
  def change
    add_column :figure_images, :figure_id, :integer
    add_index  :figure_images, :figure_id, unique: true
  end
end
