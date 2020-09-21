class CreateFuncionarios < ActiveRecord::Migration[6.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cargo
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
