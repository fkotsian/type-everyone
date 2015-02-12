class Figure < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :figure_category
  has_many :images, class_name: 'FigureImage', dependent: :destroy
  has_many :votes, class_name: 'Vote', dependent: :destroy
  
  accepts_nested_attributes_for :images, :allow_destroy => true
  
  def rand_image
    rand_pos = rand(images.count)
    images[rand_pos]
  end
  
  def rand_image_url
    rand_pos = rand(images.count)
    images[rand_pos].url
  end
  
  def self.random_figure
    rand_id = rand(Figure.count) + 1
    Figure.find_by_id rand_id
  end
end
