class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title, null:false
      t.text :description, null:false
      t.integer :owner_id
      t.string :language, null: false
      t.string :logo_url
      t.float :longitude
      t.float :latitude
      t.string :street, null:false
      t.string :city, null:false
      t.string :state, null:false

      t.timestamps
    end
  end
end
