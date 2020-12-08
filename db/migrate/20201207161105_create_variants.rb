class CreateVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :variants do |t|
      t.string :color
      t.string :size
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
