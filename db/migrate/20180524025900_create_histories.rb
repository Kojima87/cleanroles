class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.date :date, null: false, default: -> { 'NOW()' }
      t.string :member_name, null: false
      t.string :role_name, null: false

      t.timestamps
    end
  end
end
