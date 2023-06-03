require 'rails_helper'

RSpec.describe Entity, type: :model do
  describe 'Entity model' do
    let(:user) { User.create(name: 'Debas', email: 'debas@example.com', password: '123456') }
    subject { Entity.new(name: 'Entity Name', amount: 10, user_id: user.id) }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an amount' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a user' do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end
  end
end
