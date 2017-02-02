class CreateBillSummaries < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_summaries do |t|
      t.text :Title
      t.text :PaymentDate
      t.text :Description
      t.text :Amount

      t.timestamps
    end
  end
end
