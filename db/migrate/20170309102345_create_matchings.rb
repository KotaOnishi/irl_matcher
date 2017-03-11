class CreateMatchings < ActiveRecord::Migration
  def change
    create_table :matchings do |t|
      t.integer :student_id
      t.integer :worker_id
      t.integer :request, default: 0, null: false, limit: 1

      t.timestamps null: false
    end
  end
end
