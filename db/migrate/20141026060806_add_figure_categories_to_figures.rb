class AddFigureCategoriesToFigures < ActiveRecord::Migration
  def change
    change_table :figures do |t|
      t.references :figure_category, index: true
    end
  end
  
  def down
    change_table :figures do |t|
      t.remove :figure_category_id
    end
  end
end
