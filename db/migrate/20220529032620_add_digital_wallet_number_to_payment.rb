class AddDigitalWalletNumberToPayment < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_payments, :digital_wallet_number, :string, null: true
  end
end
