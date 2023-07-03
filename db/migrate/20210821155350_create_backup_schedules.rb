class CreateBackupSchedules < ActiveRecord::Migration[5.2]

  class BackupSchedule < ActiveRecord::Base
    self.inheritance_column = :_type_disabled
  end

  def change
    create_table :backup_schedules do |t|
      t.string      :name
      t.string      :type
      t.string      :backup_days, :array => true
      t.bigint      :retention
      t.boolean     :default_retention
      t.bigint      :start_time
      t.string      :mode
      t.bigint      :ems_ref
      t.bigint      :ems_id
      t.bigint      :volume_id
      t.bigint      :evm_owner_id
      t.bigint      :tenant_id
      t.timestamps
    end

    add_index "backup_schedules", ["evm_owner_id"], :name => "index_backup_schedules_on_evm_owner_id"
  end
end
