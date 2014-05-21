class RenameTypeToDtypeInDescriptions < ActiveRecord::Migration
  def up
    rename_column :descriptions, :type, :dtype
  end

  def down
    rename_column :descriptions, :dtype, :type
  end
end
