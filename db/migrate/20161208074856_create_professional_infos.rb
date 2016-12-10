class CreateProfessionalInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :professional_infos do |t|
      t.integer :user_id
      t.float :total_exp
      t.float :annual_salary
      t.string :functional_area
      t.string :company_name
      t.string :key_skills
      t.string :resume_title
      t.text :text_resume

      t.timestamps
    end
  end
end
