class SetSong < ActiveRecord::Base
  belongs_to :performance
  belongs_to :song
end
