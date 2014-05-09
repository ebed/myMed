class ChangeColumnContacts < ActiveRecord::Migration
  def change
  	remove_column :emergency_contacts, :costumer_id
  	add_column :emergency_contacts, :customer_id, :integer
  end
end
