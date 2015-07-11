class Performance < ActiveRecord::Base
  has_many :set_songs
  has_many :songs, through: :set_songs

  validates :name, presence: true
end
