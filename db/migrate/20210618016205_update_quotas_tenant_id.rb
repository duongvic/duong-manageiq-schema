class UpdateQuotasTenantId < ActiveRecord::Migration[5.2]
  def change
    add_column :cloud_volume_backups, :tenant_id, :bigint
    add_index "cloud_volume_backups", ["tenant_id"], :name => "index_cloud_volume_backups_on_tenant_id"
  end
end
