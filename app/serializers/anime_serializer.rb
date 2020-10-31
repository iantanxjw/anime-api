class AnimeSerializer < ActiveModel::Serializer

  attributes :id, :title, :plot, :release_date

end