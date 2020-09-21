class CreatePedidos < ActiveRecord::Migration[6.0]
  def change
    create_table :pedidos do |t|
      t.integer :mesa
      t.boolean :status
      t.integer :produtos, array: true
      t.integer :quantidades, array: true

      t.timestamps
    end
  end
end
