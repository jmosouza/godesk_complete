##
# Base model for all types of users.
# It has a username and authenticates with a password.
#
# This class should not be instantiated directly.
# Instead, one of its subclasses should be used.
class User < ApplicationRecord

  ## :nodoc:
  # Secure the user with a password.
  has_secure_password

  ## :nodoc:
  # Validate the presence and uniqueness of the username.
  validates :username, presence: true, uniqueness: true

  ## :nodoc:
  # A user has many tickets and ticket messages.
  has_many :tickets
  has_many :ticket_messages

end
