class RequestWorkflowMachine
  include Statesman::Machine

  state :submitted, initial: true
  state :cancelled
  state :approved
  state :denied
  state :closed

  transition from: :submitted,      to: [:cancelled, :denied,:approved]
  transition from: :cancelled, to: [:submitted]
  transition from: :approved,    to: [:submitted, :cancelled,:closed]
  transition from: :denied,      to: [:submitted,:cancelled]

  # guard_transition(to: :checking_out) do |order|
  #   order.products_in_stock?
  # end

  # before_transition(from: :checking_out, to: :cancelled) do |order, transition|
  #   order.reallocate_stock
  # endT

  # before_transition(to: :purchased) do |order, transition|
  #   PaymentService.new(order).submit
  # end

  # after_transition(to: :purchased) do |order, transition|
  #   MailerService.order_confirmation(order).deliver
  # end
end