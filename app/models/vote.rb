class Vote < ActiveRecord::Base
  belongs_to :vote_type
  belongs_to :figure

  scope :for_figure, ->(id) { where(figure_id: id) }
  scope :for_type,   ->(id) { where(vote_type_id: id) }
end
