class ArtWork < ApplicationRecord
	belongs_to :work
  has_many :media
end