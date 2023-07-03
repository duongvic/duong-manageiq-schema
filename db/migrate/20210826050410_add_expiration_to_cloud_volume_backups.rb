class AddExpirationToCloudVolumeBackups < ActiveRecord::Migration[5.2]
  def change
    add_column :cloud_volume_backups, :expiration, :timestamp
  end
end
