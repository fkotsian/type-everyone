class CreateMythoi < ActiveRecord::Migration[5.1]
  def change
    create_table :mythoi do |t|
      t.string :name
      t.integer :category

      t.timestamps
    end
  end
end
