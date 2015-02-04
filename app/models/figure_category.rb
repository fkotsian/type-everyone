class FigureCategory < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :figures
end
