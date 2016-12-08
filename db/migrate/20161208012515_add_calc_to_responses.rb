class AddCalcToResponses < ActiveRecord::Migration[5.0]
  def change
    add_column :responses, :calc, :integer
  end
end
