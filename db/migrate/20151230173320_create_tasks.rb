class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id, null: false
      t.string :task_name, null: false
      t.integer :phase, null: false

      t.timestamps
    end
  end
end
