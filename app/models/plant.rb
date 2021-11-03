class Plant < ApplicationRecord
  belongs_to :garden
  has_many :plant_tags
  has_many :tags, through: :plant_tags

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
