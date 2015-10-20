class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :status
      t.float :lat
      t.float :long
      t.string :answer
      t.string :hint
      t.string :imagelink

      t.timestamps
    end
  end
end
