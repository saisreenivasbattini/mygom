class TestReqTransition < ActiveRecord::Base
  include Statesman::Adapters::ActiveRecordTransition

  
  belongs_to :test_req, inverse_of: :test_req_transitions
end
