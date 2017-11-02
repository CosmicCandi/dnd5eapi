class CreateDamageTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :damage_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
