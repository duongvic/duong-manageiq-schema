class AddEnableTwoFactorsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :enable_two_factors, :boolean
  end
end