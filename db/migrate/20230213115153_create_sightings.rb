class CreateSightings < ActiveRecord::Migration[7.0]
  def change
    create_table :sightings do |t|
      t.date :date
      t.time :time
      t.belongs_to :ufo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
