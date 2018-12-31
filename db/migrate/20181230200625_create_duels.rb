class CreateDuels < ActiveRecord::Migration[5.2]
  def change
    create_table :duels do |t|
      t.integer :user_id
      t.boolean :win

      t.timestamps
    end
  end
end
