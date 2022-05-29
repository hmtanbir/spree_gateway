class AddSpreeCheckToPayment < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_payments, :account_number, :string, null: true
    add_column :spree_payments, :routing_number, :string, null: true
  end
end
