class CreatePanelGroups < ActiveRecord::Migration
  def self.up
    create_table :panel_groups do |t|
      t.string :name

      t.timestamps
    end

    add_column :panels, :panel_group_id, :integer, :null => false, :default => -1
  end

  def self.down
    remove_column :panels, :panel_group_id
    drop_table :panel_groups
  end
end
