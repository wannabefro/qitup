class PerformanceSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name
  has_many :songs
end
