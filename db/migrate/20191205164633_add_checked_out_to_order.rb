class AddCheckedOutToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :checkedout, :boolean
  end
end
