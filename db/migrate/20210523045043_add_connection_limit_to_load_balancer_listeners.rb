class AddConnectionLimitToLoadBalancerListeners < ActiveRecord::Migration[5.2]
  def change
    add_column :load_balancer_listeners, :connection_limit, :bigint
  end
end
