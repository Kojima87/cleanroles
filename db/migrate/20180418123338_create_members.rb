class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name, null: false, default: ""
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
