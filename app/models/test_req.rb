class TestReq < ActiveRecord::Base

	 has_many :test_req_transitions
  # Initialize the state machine
  def state_machine
    @state_machine ||= RequestWorkflowMachine.new(self, transition_class: TestReqTransition)
  end

  # Optionally delegate some methods
  delegate :can_transition_to?, :transition_to!, :transition_to, :current_state,
           to: :state_machine
end
