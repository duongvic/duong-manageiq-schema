class UpdateAuditEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :audit_events, :data, :jsonb
    add_column :audit_events, :service, :string
    add_column :audit_events, :action, :string
    add_column :audit_events, :available_resource, :jsonb
  end
end
