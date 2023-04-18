class CreateOutlets < ActiveRecord::Migration[7.0]
  def change
    create_table :outlets do |t|
      t.string :name
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
