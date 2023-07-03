class AddMoreInfoToUserProfile < ActiveRecord::Migration[5.2]
  def change
    add_column  :user_profiles, :id_number, :string
    add_column  :user_profiles, :id_issue_date, :date
    add_column  :user_profiles, :id_issue_location, :string
    add_column  :user_profiles, :account_type, :string
    add_column  :user_profiles, :user_type, :string
    add_column  :user_profiles, :tax_number, :string
    add_column  :user_profiles, :rep_name, :string
    add_column  :user_profiles, :rep_phone, :string
    add_column  :user_profiles, :rep_email, :string
  end
end
