class ChangeColumnCustomer < ActiveRecord::Migration
  def change
  	add_column :customers, :pais, :string
  	remove_column :customers, :country
  end
end
