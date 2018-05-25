class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, default: 'New Task'
      t.text :details, default: ''
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
