class PrefixSliderTableName < ActiveRecord::Migration
  def up
    if table_exists?(:sliders)
      rename_table :sliders, :spree_sliders
    end
  end

  def down
    if table_exists?(:spree_sliders)
      rename_table :spree_sliders, :sliders
    end
  end
end
