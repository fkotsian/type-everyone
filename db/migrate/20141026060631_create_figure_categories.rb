class CreateFigureCategories < ActiveRecord::Migration
  def change
    create_table :figure_categories do |t|
      t.string :name, null: false

      t.timestamps
    end
    
    add_index :figure_categories, :name, unique: true
  end
end
