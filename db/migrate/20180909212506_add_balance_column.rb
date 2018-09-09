class AddBalanceColumn < ActiveRecord::Migration
  def change
    add_column :users, :balance, :integer, options={default: 0}
  end
end
