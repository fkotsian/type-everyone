class Mythos < ApplicationRecord
  enum category: {
    'TV Shows':   1,
    'Novels':     2,
    'Movies':     3,
  }

  has_many :figures

  validates :name, uniqueness: true, presence: true
end
