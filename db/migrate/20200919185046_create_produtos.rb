class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :preco
      t.integer :quantidade

      t.timestamps
    end
  end
end
