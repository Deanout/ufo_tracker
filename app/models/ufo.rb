class Ufo < ApplicationRecord
    has_many :sightings
    has_rich_text :description
    enum statuses: %i[Active Inactive Decommisioned]
end
