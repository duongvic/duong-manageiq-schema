class AddUserDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :user_devices do |t|
      t.belongs_to  :user, :type => :bigint
      t.string      :os
      t.string      :browser
      t.string      :ip_address
      t.string      :city
      t.string      :state
      t.string      :country
      t.string      :zipcode
      t.decimal     :lat, :precision => 10, :scale => 6
      t.decimal     :long, :precision => 10, :scale => 6
      t.boolean     :authorized
      t.datetime    :created_at, :null => false
    end
  end
end
