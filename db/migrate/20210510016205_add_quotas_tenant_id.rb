class AddQuotasTenantId < ActiveRecord::Migration[5.2]
  def change
    add_column :cloud_networks, :tenant_id, :bigint
    add_index "cloud_networks", ["tenant_id"], :name => "index_cloud_networks_on_tenant_id"

    add_column :cloud_subnets, :tenant_id, :bigint
    add_index "cloud_subnets", ["tenant_id"], :name => "index_cloud_subnets_on_tenant_id"

    add_column :load_balancers, :tenant_id, :bigint
    add_index "load_balancers", ["tenant_id"], :name => "index_load_balancers_on_tenant_id"

    add_column :security_groups, :tenant_id, :bigint
    add_index "security_groups", ["tenant_id"], :name => "index_security_groups_on_tenant_id"

    add_column :firewall_rules, :tenant_id, :bigint
    add_index "firewall_rules", ["tenant_id"], :name => "index_firewall_rules_on_tenant_id"

    add_column :cloud_volume_snapshots, :tenant_id, :bigint
    add_index "cloud_volume_snapshots", ["tenant_id"], :name => "index_cloud_volume_snapshots_on_tenant_id"

    add_column :network_routers, :tenant_id, :bigint
    add_index "network_routers", ["tenant_id"], :name => "index_network_routers_on_tenant_id"
  end
end
