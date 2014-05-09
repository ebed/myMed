class Addcolumndoctors < ActiveRecord::Migration
  def change
  	add_column :doctors, :doctor_lname, :string
  end
end
