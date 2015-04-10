class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.string :resource_type
      t.string :action_type
      t.references :project, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
