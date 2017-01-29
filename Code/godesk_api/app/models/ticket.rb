##
# Model for a support ticket.
# It has an author, a title and the time it was closed.
class Ticket < ApplicationRecord

  ## :nodoc:
  # A ticket belongs to an author.
  # The author must be a customer.
  belongs_to :author, class_name: Customer

  ## :nodoc:
  # Validate the presence of a title.
  validates :title, presence: true

  ##
  # Return +true+ when the +closed_at+ time is +null+.
  def is_open?
    closed_at.blank?
  end

  ##
  # Return +true+ when a call to +is_open?+ would return +false+.
  def is_closed?
    !is_open?
  end

  ##
  # Close the ticket to indicate it is finished.
  # Set the +closed_at+ time and return it.
  def close
    self.closed_at = Time.zone.now
  end

end
