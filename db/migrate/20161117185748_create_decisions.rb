class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.integer :user_id
      t.string :name
      t.text :description

      t.timestamps

    end
  end
end
