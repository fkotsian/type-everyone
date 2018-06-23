class CreateFigureImages < ActiveRecord::Migration[4.2]
  def change
    create_table :figure_images do |t|
      t.string :url, null: false
      t.string :size

      t.timestamps
    end

    add_index :figure_images, :url, unique: true
    add_index :figure_images, :size
  end
end
