class CreateApplication < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :description
      t.string :pets_on_app
      t.integer :app_status, default: 0

      t.timestamps
    end
  end
end
