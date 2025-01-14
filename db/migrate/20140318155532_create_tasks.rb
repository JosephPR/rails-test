class CreateTasks < ActiveRecord::Migration[4.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :complete
      t.belongs_to :list

      t.timestamps
    end
    add_index :tasks, :list_id
  end
end
