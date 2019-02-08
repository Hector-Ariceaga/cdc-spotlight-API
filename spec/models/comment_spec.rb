require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validations' do
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:review) }
    it { should validate_presence_of(:review).in_array([true,false]) }
  end

  context 'relationships' do
    it { should belong_to(:article)}
  end
end
