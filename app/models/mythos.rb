class Mythos < ApplicationRecord
  enum category: {
    # Fiction
    'TV Shows':   1,
    'Novels':     2,
    'Movies':     3,
    'Anime': 12,
    'Games': 13,
    'Comics': 14,
    # Nonfiction
    'Historical Figures':     4,
    'Politicians':     5,
    'Athletes': 6,
    'Inventors & Scientists': 7,
    'Musicians': 8,
    'Artists': 9,
    'Religious Figures': 10,
    'Business Greats': 10,
    'Writers': 11,
    'Actors & Actresses': 15,
  }

  has_many :figures

  validates :name, uniqueness: true, presence: true
end
