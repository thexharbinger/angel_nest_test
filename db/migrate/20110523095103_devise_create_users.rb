class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :username
      t.string  :name
      t.string  :email
      t.string  :location
      t.string  :introduction
      t.integer :followers_count, :default => 0
      t.integer :followed_count, :default => 0
      t.integer :messages_count, :default => 0
      t.integer :comments_count, :default => 0
      t.boolean :is_admin, :default => false

      # t.database_authenticatable :null => false
      # t.token_authenticatable
      # t.confirmable
      # t.recoverable
      # t.rememberable
      # t.trackable

      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Token authenticatable
      t.string :authentication_token

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable


      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      t.timestamps
    end

    add_index :users, :username,             :unique   => true
    add_index :users, :name
    add_index :users, :email,                :unique   => true
    add_index :users, :location
    add_index :users, :is_admin
    add_index :users, :reset_password_token, :unique   => true
    add_index :users, :confirmation_token,   :unique   => true
    add_index :users, :authentication_token, :unique   => true
  end
end
