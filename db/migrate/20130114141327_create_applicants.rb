class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :last_name
      t.string :first_name
      t.string :course
      t.date :grad_date
      t.string :contact_number
      t.integer :app_type
      t.string :email
      t.date :start_date

      t.timestamps
    end
  end
end
