class CreateCounties < ActiveRecord::Migration[5.1]
  def change
    create_table :counties do |t|
      t.string :name
      t.string :fips_code
      t.references :state, foreign_key: true
    end
  end
end
