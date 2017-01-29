# == Description
#
# Model for the messages inside a Ticket.
#
# == Schema Information
#
# Table name: ticket_messages
#
#  id         :integer          not null, primary key
#  body       :string(255)
#  author_id  :integer
#  ticket_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ticket::Message < ApplicationRecord
  belongs_to :ticket
end
