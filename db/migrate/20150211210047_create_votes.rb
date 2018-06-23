class CreateVotes < ActiveRecord::Migration[4.2]
  def change
    create_table :votes do |t|
      t.references :vote_type, index: true

      t.timestamps
    end
  end
end
