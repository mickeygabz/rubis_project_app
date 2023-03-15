class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :title
      t.text :description
      t.text :website
      t.text :manufacturer

      t.timestamps
    end
  end
end
