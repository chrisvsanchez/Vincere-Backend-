class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :user
      t.string :belongs_to

      t.timestamps
    end
  end
end
