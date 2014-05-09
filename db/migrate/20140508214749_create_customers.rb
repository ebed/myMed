class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :mid_initial
      t.string :last_name
      t.date :bod
      t.string :sex
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :mob_phone
      t.string :phone
      t.string :picture

      t.timestamps
    end
  end
end
