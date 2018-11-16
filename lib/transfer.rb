class Transfer
<<<<<<< HEAD
attr_accessor :sender, :receiver, :amount, :status
def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end 
def valid?
  @sender.valid? && receiver.valid?
end 
def execute_transaction
  if valid? && @sender.balance > amount && status == "pending"
    @sender.balance -= amount
    @receiver.balance += amount
    @status = "complete"
  else 
    reject_transfer
  end 
end 
def reject_transfer
  @status = "rejected"
  "Transaction rejected. Please check your account balance."
end 
def reverse_transfer 
  if valid? && @receiver.balance > amount && status == "complete"
    @receiver.balance -= amount
    @sender.balance += amount
    @status = "reversed"
  else 
    reject_transfer
  end 
end 
end 
=======
  def initialize(transfer)
    @transfer = transfer
  end 
end
>>>>>>> eca4bab16a5a7681144b8adcc89a1f4651b6aeba
