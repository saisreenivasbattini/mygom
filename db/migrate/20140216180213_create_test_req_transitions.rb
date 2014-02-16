class CreateTestReqTransitions < ActiveRecord::Migration
  def change
    create_table :test_req_transitions do |t|
      t.string :to_state
      t.text :metadata, default: "{}"
      t.integer :sort_key
      t.integer :test_req_id
    end

    add_index :test_req_transitions, :test_req_id
    add_index :test_req_transitions, [:sort_key, :test_req_id], unique: true
  end
end
