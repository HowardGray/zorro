class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :company
      t.string :location
      t.date :startdate
      t.string :applyurl
      t.string :applyemail
      t.string :jobtype
      t.string :salaryrate
      t.string :companyurl

      t.timestamps
    end
  end
end
