class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.text :descriptions
      t.integer :decision_id

      t.timestamps

    end
  end
end
