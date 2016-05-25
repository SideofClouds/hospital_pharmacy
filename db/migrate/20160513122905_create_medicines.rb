class CreateMedicines < ActiveRecord::Migration[5.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :description, default: ''
      t.integer :capacity, default: 0
      t.timestamps
    end
  end
end
