class AddTasksUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :user, index: true, foreign_key: true
  end
end
