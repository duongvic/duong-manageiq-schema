class AddVipAddressToLoadBalancers < ActiveRecord::Migration[5.2]
  def change
    add_column :load_balancers, :vip_address, :string
  end
end
