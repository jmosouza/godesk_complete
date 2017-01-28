require 'rails_helper'
require 'support/shared_examples_for_a_user'

RSpec.describe Admin, type: :model do

  it_behaves_like 'a user'

end
