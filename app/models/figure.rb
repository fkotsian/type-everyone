class Figure < ActiveRecord::Base
  enum figure_category_id: {
    musicians_and_artists:                          1,
    celebrities_actors_and_athletes:                2,
    politicians_scientists_and_historical_figures:  3,
    tv_movie_and_fictional_characters:              4,
  }
  alias_attribute :category, :figure_category_id

  validates :name, presence: true, uniqueness: true

  belongs_to :mythos, optional: true
  has_many :images, class_name: 'FigureImage', dependent: :destroy
  has_many :votes, class_name: 'Vote', dependent: :destroy

  scope :from_category, -> (category_id) { where(figure_category_id: category_id) }

  accepts_nested_attributes_for :images, :allow_destroy => true

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
    unsorted_votes.sort.inject(Hash.new(0)) do |res, vote|
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

  def self.random_figure(category_id: nil)
    if category_id
      category_count = Figure.from_category(category_id).count
      rand_row = rand(category_count)
      Figure.from_category(category_id).offset(rand_row).first
    else
      rand_row = rand(count)
      Figure.offset(rand_row).first
    end
  end

  def self.categories
    self.figure_category_ids
  end
end
