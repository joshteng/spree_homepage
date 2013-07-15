class AddVisibleToSliders < ActiveRecord::Migration
  def change
    add_column :spree_sliders, :visible, :boolean, default: false
    add_index :spree_sliders, :visible
  end
end
