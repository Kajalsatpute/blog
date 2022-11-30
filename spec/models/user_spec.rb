require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns the full name for a user' do
    user = User.create(name: 'Tina', vorname: 'Roy')
    binding.pry
    expect(user.full_name).to eq 'Tina Roy'
  end
end
