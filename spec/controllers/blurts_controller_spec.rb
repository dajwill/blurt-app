require 'rails_helper'

describe BlurtsController, type: :controller do
  context 'POST #like_blurt' do
    it 'creates new like' do
      blurt = Blurt.create(message: 'this is a test')
      post :like_blurt, id: blurt.id
      expect(blurt.blurt_likes.count).to eq 1
      # assert false
    end
  end
end
