class Mythos < ApplicationRecord
  enum category: {
    1 => 'TV Show',
    2 => 'Novel',
    3 => 'Movie',
  }

  has_many :figures
end
