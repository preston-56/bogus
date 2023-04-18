class CreateMerchandisers < ActiveRecord::Migration[7.0]
  def change
    create_table :merchandisers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :salesManager_id, null: false, foreign_key: true
      t.integer :route_plan_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
