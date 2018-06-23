class CreateVoteTypes < ActiveRecord::Migration[4.2]
  def change
    create_table :vote_types do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :vote_types, :name, unique: true
  end
end
