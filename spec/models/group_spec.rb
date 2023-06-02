# spec/models/group_spec.rb

require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Group model' do
    let(:user) { User.create(name: 'Debas', email: 'debas@example.com', password: '123456') }
    subject { Group.new(name: 'Group Name', icon: 'icon.png', user_id: user.id) }
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  
    it 'is not valid without an icon' do
      subject.icon = nil
      expect(subject).to_not be_valid
    end
  
    it 'is not valid without a user' do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end
  end
end
