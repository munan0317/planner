class CreateSummaries < ActiveRecord::Migration[5.1]
  def change
    create_table :summaries do |t|
      t.date :date
      t.string :merchant
      t.decimal :number
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
