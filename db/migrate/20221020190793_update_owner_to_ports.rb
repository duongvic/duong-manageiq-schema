class UpdateOwnerToPorts < ActiveRecord::Migration[5.2]
  def change
    add_column :network_ports, :tenant_id, :bigint
    add_column :network_ports, :evm_owner_id, :bigint
    add_index "network_ports", ["evm_owner_id"], :name => "index_network_ports_on_evm_owner_id"
    add_index "network_ports", ["tenant_id"], :name => "index_network_ports_on_tenant_id"
  end
end
