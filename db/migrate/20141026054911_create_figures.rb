class CreateFigures < ActiveRecord::Migration
  def change
    create_table :figures do |t|
      t.string :name, null: false

      t.timestamps
    end
    
    add_index :figures, :name, unique: true
  end
end
