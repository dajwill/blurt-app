require 'rails_helper'

RSpec.describe Blurt, type: :model do
  it 'has a message' do
    blurt = Blurt.create(message: 'this is a test')
    message = blurt.message
    expect(message).not_to be_empty
    # assert false
  end
end
