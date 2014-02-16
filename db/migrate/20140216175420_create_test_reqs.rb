class CreateTestReqs < ActiveRecord::Migration
  def change
    create_table :test_reqs do |t|
      t.string :req_type
      t.string :unit
      t.string :site
      t.date :start_date
      t.date :end_date
      t.text :notes

      t.timestamps
    end
  end
end
