class CreateFelveszems < ActiveRecord::Migration[7.0]
  def change
    create_table :felveszems do |t|
      t.text :content

      t.timestamps
    end
  end
end
