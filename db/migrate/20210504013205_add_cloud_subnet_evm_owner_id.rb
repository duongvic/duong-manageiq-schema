class AddCloudSubnetEvmOwnerId < ActiveRecord::Migration[5.2]
  def change
    add_column :cloud_subnets, :evm_owner_id, :bigint
    add_index "cloud_subnets", ["evm_owner_id"], :name => "index_cloud_subnets_on_evm_owner_id"
  end
end
