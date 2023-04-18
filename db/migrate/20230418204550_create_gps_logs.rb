class CreateGpsLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :gps_logs do |t|
      t.integer :merchandiser_id, null: false, foreign_key: true
      t.string :latitude
      t.string :longitude
      t.datetime :gpsStarted
      t.datetime :gpsStopped

      t.timestamps
    end
  end
end
