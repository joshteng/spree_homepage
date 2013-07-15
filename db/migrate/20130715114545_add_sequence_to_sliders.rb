class AddSequenceToSliders < ActiveRecord::Migration
  def change
    add_column :sliders, :sequence, :integer
  end
end
