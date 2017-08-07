class CreateWhitelists < ActiveRecord::Migration[5.1]
  def change
    create_table :whitelists do |t|
      t.string :ip_address

      t.timestamps
    end
    add_index :whitelists, :ip_address
  end
end
