class CreateMeasures < ActiveRecord::Migration[5.1]
  def change
    create_table :measures do |t|
      t.integer :luminosity

      t.timestamps
    end
  end
end
