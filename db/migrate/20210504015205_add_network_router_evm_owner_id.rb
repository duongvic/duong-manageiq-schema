class AddNetworkRouterEvmOwnerId < ActiveRecord::Migration[5.2]
  def change
    add_column :network_routers, :evm_owner_id, :bigint
    add_index "network_routers", ["evm_owner_id"], :name => "index_network_routers_on_evm_owner_id"
  end
end
