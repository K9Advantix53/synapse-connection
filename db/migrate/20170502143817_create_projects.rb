class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title, null:false
      t.text :description, null:false
      t.integer :owner_id

      t.timestamps
    end
  end
end
