class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :medicine, null: false
      t.references :user, null: false
      t.integer :quantity, default: 1
      t.integer :approved_by_id
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
