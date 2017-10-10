class CreateTimings < ActiveRecord::Migration[5.0]
  def change
    create_table :timings do |t|
      t.date :day
      t.datetime :fajar
      t.datetime :zohar
      t.datetime :asar
      t.datetime :magrib
      t.datetime :isha
      t.references :masjid, foreign_key: true

      t.timestamps
    end
  end
end
