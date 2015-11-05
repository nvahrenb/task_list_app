class AddListToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :list, :task_list
  end
end
