class UpdateLoadBalancers < ActiveRecord::Migration[5.2]
  def change
    add_column :load_balancers, :operating_status, :string
    add_column :load_balancers, :provisioning_status, :string
    add_column :load_balancer_listeners, :operating_status, :string
    add_column :load_balancer_listeners, :provisioning_status, :string
    add_column :load_balancer_pools, :operating_status, :string
    add_column :load_balancer_pools, :provisioning_status, :string
  end
end
