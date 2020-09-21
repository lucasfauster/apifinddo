class CreateTotalDia < ActiveRecord::Migration[6.0]
  def change
    create_table :total_dia do |t|
      t.decimal :total

      t.timestamps
    end
  end
end
