class CreateInventaries < ActiveRecord::Migration
  def change
    create_table :inventaries do |t|
      t.integer :serial_number, null: false
      t.integer :wheel_size
      t.text :wheel_description

      t.timestamps null: false
    end
  end
end
