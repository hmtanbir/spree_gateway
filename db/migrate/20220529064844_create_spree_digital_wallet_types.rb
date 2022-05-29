class CreateSpreeDigitalWalletTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_digital_wallet_types do |t|
      t.string 'name', null: false
      t.integer 'wallet_type', null: false, default: 0

      t.timestamps
      t.datetime 'deleted_at'
    end
  end
end
