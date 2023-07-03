class CreateTwoFactors < ActiveRecord::Migration[5.2]
  def change
    create_table :two_factors do |t|
      t.belongs_to :user, :type => :bigint
      t.string  :otp_token
      t.integer :hotp_counter
      t.string  :status
    end
  end
end
