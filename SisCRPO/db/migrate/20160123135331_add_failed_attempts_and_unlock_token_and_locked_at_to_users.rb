class AddFailedAttemptsAndUnlockTokenAndLockedAtToUsers < ActiveRecord::Migration
  def change
    ## Lockable
    add_column :users, :failed_attempts, :integer
    add_column :users, :unlock_token, :string
    add_column :users, :locked_at, :datetime
  end
end
