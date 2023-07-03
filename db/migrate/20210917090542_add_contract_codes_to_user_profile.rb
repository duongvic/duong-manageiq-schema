class AddContractCodesToUserProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :user_profiles, :contract_codes, :string, :array => true, :default => [], :null => false
  end
end
