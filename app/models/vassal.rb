class Vassal < ApplicationRecord
  has_many :characters, as: :characterable
  belongs_to :house
end
