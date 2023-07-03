class AddEvmOwnerToAuditEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :audit_events, :evm_owner_id, :bigint
    add_index "audit_events", ["evm_owner_id"], :name => "index_audit_events_on_evm_owner_id"
  end
end
