class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string      :company
      t.string      :address
      t.date        :date_of_birth
      t.string      :reference_name
      t.string      :reference_email
      t.bigint      :reference_phone_number
      t.bigint      :evm_owner_id
      t.timestamps
    end

    add_index "user_profiles", ["evm_owner_id"], :name => "index_user_profiles_on_evm_owner_id"
  end
end
