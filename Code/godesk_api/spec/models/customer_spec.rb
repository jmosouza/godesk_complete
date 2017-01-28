require 'rails_helper'

RSpec.describe Customer, type: :model do

  it 'requires a username' do
    u = Customer.new password: '123456'
    expect(u.save).to be false
    expect(u.errors[:password]).not_to be_nil
  end

  it 'requires a password' do
    u = Customer.new username: 'john'
    expect(u.save).to be false
    expect(u.errors[:username]).not_to be_nil
  end

  it 'does not persist password' do
    Customer.create! username: 'john', password: '123'
    expect(Customer.last.password).to be_nil
  end

  it 'has many tickets' do
    expect(Customer.instance_methods).to include :tickets
  end

  it 'has many messages in a ticket' do
    expect(Customer.instance_methods).to include :ticket_messages
  end

end
