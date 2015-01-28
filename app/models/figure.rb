class Figure < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :figure_category
  has_many :figure_images, dependent: :destroy
  
  accepts_nested_attributes_for :figure_images, :allow_destroy => true
end