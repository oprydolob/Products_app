class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :manufacturer_id
      t.integer :distributor_id

      t.timestamps
    end
    add_index :products, :manufacturer_id, unique: true
  end
end
