class Sighting < ApplicationRecord
  belongs_to :ufo
  has_many :coordinates, dependent: :destroy
  accepts_nested_attributes_for :coordinates, reject_if: :all_blank, allow_destroy: true

end
