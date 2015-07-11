class Song < ActiveRecord::Base
  has_many :set_songs
  has_many :performances, through: :set_songs

  validates :name, presence: true
end
