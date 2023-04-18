class CreateRoutePlanDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :route_plan_details do |t|
      t.integer :routePlan_id, null: false, foreign_key: true
      t.integer :merchandiser_id, null: false, foreign_key: true
      t.integer :outlet_id, null: false, foreign_key: true
      t.string :date

      t.timestamps
    end
  end
end
