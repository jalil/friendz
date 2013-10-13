class AddEmailToBeneficiary < ActiveRecord::Migration
  def change
    add_column :beneficiaries, :email, :string
  end
end
