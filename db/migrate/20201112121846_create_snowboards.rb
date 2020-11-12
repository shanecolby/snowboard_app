class CreateSnowboards < ActiveRecord::Migration[6.0]
  def change
    create_table :snowboards do |t|
      t.string :brand
      t.decimal :price
      t.string :shape
      t.text :description

      t.timestamps
    end
  end
end
