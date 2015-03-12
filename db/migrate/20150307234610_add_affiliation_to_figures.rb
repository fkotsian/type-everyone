class AddAffiliationToFigures < ActiveRecord::Migration
  def change
    add_column :figures, :affiliation, :String
  end
end
