class ChangeRefPhoneNumberDataType < ActiveRecord::Migration[5.2]
  def change
    change_column :user_profiles, :reference_phone_number, :string
  end
end
