class AddConfirmableToUsers < ActiveRecord::Migration
  def change
    add_column :users, :confirmation_token, :string
    add_column :users, :unconfirmed_email, :string
    add_column :users, :confirmed_at, :string
    add_column :users, :confirmation_sent_at, :string
  end
end
