class AddFigureToVotes < ActiveRecord::Migration[4.2]
  def change
    add_reference :votes, :figure, index: true
  end
end
