class Figure < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  belongs_to :figure_category
  has_many :images, class_name: 'FigureImage', dependent: :destroy
  has_many :votes, class_name: 'Vote', dependent: :destroy
  
  accepts_nested_attributes_for :images, :allow_destroy => true
  accepts_nested_attributes_for :figure_category, :allow_destroy => false
  
  def rand_image
    rand_pos = rand(images.count)
    images[rand_pos]
  end
  
  def rand_image_url
    rand_pos = rand(images.count)
    images[rand_pos].url
  end
  
  def votes_by_type
    vote_types = VoteType.pluck(:name)
    unsorted_votes = votes.pluck(:vote_type_id)
    sorted_votes = unsorted_votes.sort.inject(Hash.new(0)) do |res, vote|
      vote_type = vote_types[vote-1]
      res[vote_type]+=1
      res
    end
  end
  
  def display_name
    name.upcase
  end
  
  def display_description
    description ? description.upcase : ""
  end
  
  def self.random_figure
    rand_id = rand(count)
    Figure.all[rand_id]
  end
end
