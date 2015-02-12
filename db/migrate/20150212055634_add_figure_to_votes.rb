class AddFigureToVotes < ActiveRecord::Migration
  def change
    add_reference :votes, :figure, index: true
  end
end
