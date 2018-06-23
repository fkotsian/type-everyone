class AddMythosIdToFigures < ActiveRecord::Migration[5.1]
  def change
    add_reference :figures, :mythoses, foreign_key: true
  end
end
