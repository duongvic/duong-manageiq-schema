class AddTenantIdToCloudVolumes < ActiveRecord::Migration[5.2]
  def change
    add_column :cloud_volumes, :tenant_id, :bigint
    add_index "cloud_volumes", ["tenant_id"], :name => "index_cloud_volumes_on_tenant_id"
  end
end
