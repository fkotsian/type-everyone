class Figure < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :figure_category
  has_many :figure_images
end
