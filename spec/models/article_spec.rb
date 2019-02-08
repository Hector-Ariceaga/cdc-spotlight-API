require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:url) }
  end
end
