class VoteType < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many  :votes
end
