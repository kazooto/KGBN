class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :profile, limit: 300

      t.timestamps
    end
  end
end
