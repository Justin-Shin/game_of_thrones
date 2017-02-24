class Character < ApplicationRecord
  belongs_to :characterable, polymorphic: true
end
