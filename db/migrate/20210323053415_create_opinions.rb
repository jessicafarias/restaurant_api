class CreateOpinions < ActiveRecord::Migration[6.0]
  def change
    create_table :opinions do |t|
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
