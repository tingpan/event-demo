class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.text :content
      t.references :project, index: true, foreign_key: true
      t.date :due
      t.integer :creator_id
      t.integer :worker_id

      t.timestamps null: false
    end
  end
end
