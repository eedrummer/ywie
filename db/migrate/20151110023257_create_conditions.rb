class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.date :onset
      t.string :name
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
