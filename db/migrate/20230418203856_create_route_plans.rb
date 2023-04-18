class CreateRoutePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :route_plans do |t|
      t.integer :salesManager_id, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
