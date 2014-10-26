class AddFigureCategoriesToFigures < ActiveRecord::Migration
  def change
    add_column :figures, :figure_category_id, :integer
    add_index  :figures, :figure_category_id, unique: true
  end
end
