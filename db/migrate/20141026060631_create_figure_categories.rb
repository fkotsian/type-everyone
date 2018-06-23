class CreateFigureCategories < ActiveRecord::Migration[4.2]
  def change
    create_table :figure_categories do |t|
      t.string :name, null: false

      t.timestamps
    end
 
    add_index :figure_categories, :name, unique: true
  end
end
