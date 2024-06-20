class RenameOrderToDorderInDescriptions < ActiveRecord::Migration
  def up
    rename_column :descriptions, :order, :dorder
  end

  def down
    rename_column :descriptions, :dorder, :order
  end
end
