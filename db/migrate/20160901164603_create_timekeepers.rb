class CreateTimekeepers < ActiveRecord::Migration[5.0]
  def change
    create_table :timekeepers do |t|
      t.datetime :start
      t.datetime :end
      t.text :description

      t.timestamps
    end
  end
end
