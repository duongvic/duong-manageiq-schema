class AddLbEvmOwnerId < ActiveRecord::Migration[5.2]
  def change
    add_column :load_balancers, :evm_owner_id, :bigint
    add_index "load_balancers", ["evm_owner_id"], :name => "index_load_balancers_on_evm_owner_id"
  end
end
