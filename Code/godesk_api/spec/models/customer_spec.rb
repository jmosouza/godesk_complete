require 'rails_helper'
require 'support/shared_examples_for_user'

RSpec.describe Customer, type: :model do

  # see support/shared_examples_for_user
  include_examples 'user'

end
