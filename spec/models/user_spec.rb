# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model' do
    subject { User.new(name: 'Debas', email: 'debas@example.com', password: '123456') }
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  
    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  
    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
  end
end
