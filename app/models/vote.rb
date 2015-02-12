class Vote < ActiveRecord::Base
  belongs_to :vote_type
  belongs_to :figure
end
