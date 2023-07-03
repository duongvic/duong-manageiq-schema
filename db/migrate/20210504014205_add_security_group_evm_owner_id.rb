class AddSecurityGroupEvmOwnerId < ActiveRecord::Migration[5.2]
  def change
    add_column :security_groups, :evm_owner_id, :bigint
    add_index "security_groups", ["evm_owner_id"], :name => "index_security_groups_on_evm_owner_id"
  end
end
