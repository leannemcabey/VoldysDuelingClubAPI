class RemoveSpellsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :spells
  end
end
