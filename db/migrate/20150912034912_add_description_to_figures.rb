class AddDescriptionToFigures < ActiveRecord::Migration
  def change
    add_column :figures, :description, :string
  end
end
