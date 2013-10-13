class AddUserIdToBeneficiary < ActiveRecord::Migration
  def change
    add_column :beneficiaries, :user_id, :integer
  end
end
