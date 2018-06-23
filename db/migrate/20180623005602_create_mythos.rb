class CreateMythos < ActiveRecord::Migration[5.1]
  def change
    create_table :mythos do |t|
      t.string :name
      t.integer :category

      t.timestamps
    end
  end
end
