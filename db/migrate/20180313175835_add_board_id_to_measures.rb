class AddBoardIdToMeasures < ActiveRecord::Migration[5.1]
  def change
    add_column :measures, :board_id, :integer
  end
end
