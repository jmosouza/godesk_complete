# These examples are common for all User subclasses.
# See admin, attendant and customer in /specs.

RSpec.shared_examples 'user' do

  it 'requires a username' do
    u = described_class.new password: '123456'
    expect(u.save).to be false
    expect(u.errors[:username]).not_to be_empty
  end

  it 'requires a password' do
    u = described_class.new username: 'john'
    expect(u.save).to be false
    expect(u.errors[:password]).not_to be_empty
  end

  it 'does not persist the password' do
    described_class.create! username: 'john', password: '123'
    expect(described_class.last.password).to be_nil
  end

  it 'has many tickets' do
    expect(described_class.instance_methods).to include :tickets
  end

  it 'has many messages in a ticket' do
    expect(described_class.instance_methods).to include :ticket_messages
  end

end