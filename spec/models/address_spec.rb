require 'rails_helper'

describe Address, type: :model do
  describe 'associations' do
    it {should belong_to(:student)}
  end
end
