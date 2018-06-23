class AddDescriptionToFigures < ActiveRecord::Migration[4.2]
  def change
    add_column :figures, :description, :string
  end
end
