class AddMostRecentToManifestationReserveStatTransitions < ActiveRecord::Migration
  def up
    add_column :manifestation_reserve_stat_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :manifestation_reserve_stat_transitions, :most_recent
  end
end
