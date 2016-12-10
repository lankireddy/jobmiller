class CreateEducationalDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :educational_details do |t|
      t.integer :user_id
      t.string :basic_qualification
      t.integer :year_of_passing_BQ
      t.float :percentage_BQ
      t.string :university_BQ
      t.string :post_graduation
      t.float :percentage
      t.integer :year_of_passing
      t.string :university

      t.timestamps
    end
  end
end
