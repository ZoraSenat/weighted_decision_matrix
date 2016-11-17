class AddDecisionCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :decisions_count, :integer
  end
end
