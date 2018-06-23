class CreateFigures < ActiveRecord::Migration[4.2]
  def change
    create_table :figures do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :figures, :name, unique: true
  end
end
