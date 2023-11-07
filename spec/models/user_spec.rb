require 'rails_helper'

RSpec.describe User do
  subject(:user) { create(:user) }

  describe '.new' do |_example|
    it 'returns parent like user' do
      expect(user).to respond_to(:sessions, :children)
    end
  end
end
