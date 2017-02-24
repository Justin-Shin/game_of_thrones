class House < ApplicationRecord
  has_many :characters, as: :characterable
  has_many :vassals
end
