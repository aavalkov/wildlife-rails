class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.date :date
      t.decimal :latitude
      t.decimal :longitude
    end
  end
end
