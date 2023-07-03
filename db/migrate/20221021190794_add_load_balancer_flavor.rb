class AddLoadBalancerFlavor < ActiveRecord::Migration[5.2]
  def change
    create_table :load_balancer_flavors do |t|
      t.string      :name, :null => false
      t.string      :ems_ref, :null => false
      t.string      :ems_id, :null => false
      t.datetime    :created_at, :null => false
    end
  end
end
