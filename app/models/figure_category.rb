class FigureCategory < ActiveRecord::Base
  validates :name, presence: true, unique: true
  has_many :figures
end
