class AddUserCountToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :users_count, :integer
  end
end
