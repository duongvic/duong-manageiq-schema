class AddUserPasswordExpiration < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_expiration, :datetime
  end
end