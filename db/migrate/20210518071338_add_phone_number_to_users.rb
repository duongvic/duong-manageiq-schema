class AddPhoneNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_number, :string
    add_index "users", ["phone_number"], :name => "index_users_on_phone_numbers"
  end
end
