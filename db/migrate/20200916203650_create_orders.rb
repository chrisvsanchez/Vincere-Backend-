class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.float :total
      t.float :subtotal
      t.float :tax
      t.string :address
      t.string :confirmation
      t.timestamps
    end
  end
end
