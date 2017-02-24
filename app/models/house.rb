class House < ApplicationRecord
  has_many :characters, as: :characterable, dependent: :destroy
  has_many :vassals, dependent: :destroy
end
