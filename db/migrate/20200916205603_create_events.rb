class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location_name
      t.string :address
      t.string :event_time
      t.string :description
      t.string :date
      t.timestamps
    end
  end
end
