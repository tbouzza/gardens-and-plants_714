class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :banner_url
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
