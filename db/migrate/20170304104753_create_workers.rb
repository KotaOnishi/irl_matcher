class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string "name"
      t.text "image_url"
      t.string "company"
      t.string "university"
      t.string "high_school"
      t.integer "grad_year"
      t.string "tutor"
      t.text "introduction"
      t.text "job_category"
      t.text "industry"

      t.timestamps null: false
    end
  end
end
