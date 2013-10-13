class CreateBeneficiary < ActiveRecord::Migration
  def change
    create_table :beneficiaries do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
