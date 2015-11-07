class FigureCategory < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :figures
  
  def display_name
    name.titleize
  end
end
