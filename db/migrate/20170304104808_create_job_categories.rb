class CreateJobCategories < ActiveRecord::Migration
  def change
    create_table :job_categories do |t|

      t.timestamps null: false
    end
  end
end
