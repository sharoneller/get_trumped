class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :phrase
      t.date :date
      t.references :issue, index: true
      t.references :candidate, index: true

      t.timestamps
    end
  end
end
