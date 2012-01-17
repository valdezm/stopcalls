class CreateIntakeForms < ActiveRecord::Migration
  def change
    create_table :intake_forms do |t|
      t.boolean :sued
      t.boolean :garnashed
      t.string :name_of_collector
      t.decimal :how_much_debt_price, :precision => 10, :scale => 2
      t.decimal :total_debt, :precision => 10, :scale => 2
      t.decimal :max_amount_afford, :precision => 10, :scale => 2
      t.boolean :judgements
      t.boolean :law_suit_inv_real
      t.boolean :law_suit_inv_cc
      t.integer :user_id
      t.timestamps
    end
  end
end
