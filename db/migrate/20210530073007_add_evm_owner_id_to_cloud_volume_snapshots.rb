class AddEvmOwnerIdToCloudVolumeSnapshots < ActiveRecord::Migration[5.2]
  def change
    add_column :cloud_volume_snapshots, :evm_owner_id, :bigint
    add_index "cloud_volume_snapshots", ["evm_owner_id"], :name => "index_cloud_volume_snapshots_on_evm_owner_id"
  end
end
