class CreateSnaps < ActiveRecord::Migration[5.2]
  def change
    create_table :snaps do |t|
      t.string :name, null: false, default: ""
      t.text :detail, null: false, default: ""
      t.string :image

      t.timestamps
    end
  end
end
