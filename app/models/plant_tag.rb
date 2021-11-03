class PlantTag < ApplicationRecord
  belongs_to :tag
  belongs_to :plant

  validates :plant_id, uniqueness: { scope: :tag_id }
end
