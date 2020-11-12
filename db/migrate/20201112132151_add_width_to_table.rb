class AddWidthToTable < ActiveRecord::Migration[6.0]
  def change
    add_column :snowboards, :width, :decimal
  end
end
