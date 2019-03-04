class CreateGardners < ActiveRecord::Migration[5.2]
  def change
    create_table :gardners do |t|
      t.string :name
      t.string :number
      t.integer :plot_num

      t.timestamps
    end
  end
end
