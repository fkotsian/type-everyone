class FigureImage < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true
  belongs_to :figure

  def self.default_error_message
    "Please provide a valid image URL!"
  end

  def self.height_error_message
    "Please provide an image that is at least 600px tall!"
  end

  def self.width_error_message
    "Please provide an image that is at least 800px wide!"
  end

  def self.dimension_error_message
    "Please provide an image that is at least 800x600px!"
  end

  private

  def self.image_sizes
    ['Small', 'Medium', 'Full Screen']
  end
end
