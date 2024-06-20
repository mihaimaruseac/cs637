class ChildrenParents < ActiveRecord::Migration
  create_table :children_parents, :id => false do |t|
    t.references :child, :null => false
    t.references :parent, :null => false
  end

  add_index(:children_parents, [:child_id, :parent_id], :unique => true)
end
