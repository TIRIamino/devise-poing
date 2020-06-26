class CreateSabrolazers < ActiveRecord::Migration[6.0]
  def change
    create_table :sabrolazers do |t|
      t.string :title
      t.integer :level
      t.string :color

      t.timestamps
    end
  end
end
