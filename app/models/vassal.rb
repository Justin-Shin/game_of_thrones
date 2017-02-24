class Vassal < ApplicationRecord
  has_many :characters, as: :characterable, dependent: :destroy
  belongs_to :house
end
