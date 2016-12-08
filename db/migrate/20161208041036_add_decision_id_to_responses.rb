class AddDecisionIdToResponses < ActiveRecord::Migration[5.0]
  def change
    add_column :responses, :decision_id, :integer
  end
end
