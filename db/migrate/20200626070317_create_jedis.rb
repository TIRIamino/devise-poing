class CreateJedis < ActiveRecord::Migration[6.0]
  def change
    create_table :jedis do |t|
      t.string :name
      t.string :force

      t.timestamps
    end
  end
end
