class FigureImage < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true
  belongs_to :figure
  
  private
  def self.image_sizes
    ['Small', 'Medium', 'Full Screen']
  end
end
