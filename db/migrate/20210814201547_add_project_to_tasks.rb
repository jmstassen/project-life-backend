class AddProjectToTasks < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :projects, null: false, foreign_key: true, on_delete: :cascade
  end
end
