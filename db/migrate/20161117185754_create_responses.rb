class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.integer :vote
      t.integer :criteria_id
      t.integer :option_id

      t.timestamps

    end
  end
end
