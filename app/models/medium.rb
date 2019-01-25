class Medium < ApplicationRecord
  belongs_to :art_work
  has_many :pieces
end