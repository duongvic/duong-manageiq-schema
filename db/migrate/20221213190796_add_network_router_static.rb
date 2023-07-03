class AddNetworkRouterStatic < ActiveRecord::Migration[5.2]
  def change
    create_table :network_router_statics do |t|
      t.string      :destination
      t.string      :nexthop
      t.string      :ems_ref
      t.bigint      :ems_id
      t.string      :network_router_id
      t.datetime    :created_at, :null => false
    end
  end
end
