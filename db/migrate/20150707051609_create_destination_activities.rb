class CreateDestinationActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
    	t.string :name
    	t.integer :duration
    	t.belongs_to :destination

      t.timestamps null: false
    end
  end
end
