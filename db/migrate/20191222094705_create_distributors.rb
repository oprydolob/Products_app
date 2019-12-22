class CreateDistributors < ActiveRecord::Migration[6.0]
  def change
    create_table :distributors do |t|
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end
