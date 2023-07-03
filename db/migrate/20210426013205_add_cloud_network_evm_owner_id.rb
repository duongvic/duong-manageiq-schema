class AddCloudNetworkEvmOwnerId < ActiveRecord::Migration[5.2]
  def change
    add_column :cloud_networks, :evm_owner_id, :bigint
    add_index "cloud_networks", ["evm_owner_id"], :name => "index_cloud_networks_on_evm_owner_id"
  end
end
