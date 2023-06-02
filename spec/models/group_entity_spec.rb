require 'rails_helper'

RSpec.describe GroupEntity, type: :model do
  describe 'GroupEntity model' do
    let(:user) { User.create(name: 'Debas', email: 'debas@example.com', password: '123456') }
    let(:entity) { Entity.create(user_id: user.id, name: 'Entity Name', amount: 10) }
    let(:group) { Group.create(user_id: user.id, name: 'Group Name', icon: 'icon.png') }
    subject { GroupEntity.new(group_id: group.id, entity_id: entity.id) }
  
    before { subject.save }
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a group' do
      subject.group_id = nil
      expect(subject).to_not be_valid
    end
  
    it 'is not valid without an entity' do
      subject.entity_id = nil
      expect(subject).to_not be_valid
    end
  end
end
