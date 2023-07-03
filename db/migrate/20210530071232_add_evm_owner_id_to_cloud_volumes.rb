class AddEvmOwnerIdToCloudVolumes < ActiveRecord::Migration[5.2]
  def change
    add_column :cloud_volumes, :evm_owner_id, :bigint
    add_index "cloud_volumes", ["evm_owner_id"], :name => "index_cloud_volumes_on_evm_owner_id"
  end
end
