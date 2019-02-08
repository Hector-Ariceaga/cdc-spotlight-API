require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validations' do
    it { should validate_presence_of(:comment) }
    it { should validate_presence_of(:review) }
    it { should validate_presence_of(:article_id) }
  end
end
