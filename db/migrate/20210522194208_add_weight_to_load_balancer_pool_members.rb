class AddWeightToLoadBalancerPoolMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :load_balancer_pool_members, :weight, :bigint
  end
end
