class ChangeUserProfileRefColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_profiles, :reference_name, :ref_name
    rename_column :user_profiles, :reference_phone_number, :ref_phone
    rename_column :user_profiles, :reference_email, :ref_email
  end
end
