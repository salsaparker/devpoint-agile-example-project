class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.float :total_miles
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
