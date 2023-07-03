class AddEvmOwnerToVolumeBackup < ActiveRecord::Migration[5.2]
  def change
    add_column :cloud_volume_backups, :evm_owner_id, :bigint
    add_index "cloud_volume_backups", ["evm_owner_id"], :name => "index_cloud_volume_backups_on_evm_owner_id"
  end
end
