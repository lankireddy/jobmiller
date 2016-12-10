class CreateEmployers < ActiveRecord::Migration[5.0]
  def change
    create_table :employers do |t|
      t.integer :user_id
      t.date :doreg
      t.string :ename
      t.integer :eno
      t.string :comapnyname
      t.integer :cost

      t.timestamps
    end
  end
end
