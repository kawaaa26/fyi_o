class CreateSnaps < ActiveRecord::Migration[5.2]
  def change
    create_table :snaps do |t|
      t.string :title, null: false, default: ""
      t.text :detail, null: false, default: ""
      t.string :images, array: true, default: []

      t.timestamps
    end
  end
end
