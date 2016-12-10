class CreateJobseekars < ActiveRecord::Migration[5.0]
  def change
    create_table :jobseekars do |t|
      t.integer :user_id
      t.date :dob
      t.string :gender

      t.timestamps
    end
  end
end
