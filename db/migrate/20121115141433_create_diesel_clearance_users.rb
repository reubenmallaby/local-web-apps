class CreateDieselClearanceUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.string   :firstname
      t.string   :lastname
      t.boolean  :active, :default => true
      t.boolean  :admin, :default => false
      t.string   :email
      t.string   :encrypted_password, :limit => 128
      t.string   :salt,               :limit => 128
      t.string   :confirmation_token, :limit => 128
      t.string   :remember_token,     :limit => 128
      t.timestamps
    end

    add_index :users, :email
    add_index :users, :remember_token
  end

  def self.down
    drop_table :users
  end
end
