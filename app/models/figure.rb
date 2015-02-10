class Figure < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :figure_category
  has_many :images, class_name: 'FigureImage', dependent: :destroy
  
  accepts_nested_attributes_for :images, :allow_destroy => true
end
