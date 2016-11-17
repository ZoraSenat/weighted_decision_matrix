class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_url
      t.string :industry

      t.timestamps

    end
  end
end
