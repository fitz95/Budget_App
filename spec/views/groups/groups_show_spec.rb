require 'rails_helper'

RSpec.describe 'groups/show', type: :view do
  before do
    assign(:group, Group.new(name: 'Group 1'))
    assign(:group_entities, [
      GroupEntity.new(entity: Entity.new(name: 'Entity 1', amount: 10)),
      GroupEntity.new(entity: Entity.new(name: 'Entity 2', amount: 20))
    ])
  end

  it 'displays the group name' do
    render

    expect(rendered).to have_content('Group 1')
  end

  it 'displays the total amount' do
    render

    expect(rendered).to have_content('Total Amount: $30')
  end

  it 'displays the list of group entities' do
    render

    expect(rendered).to have_content('Entity 1')
    expect(rendered).to have_content('Entity 2')
  end

  it 'displays the amount of each group entity' do
    render

    expect(rendered).to have_content('Amount: $10')
    expect(rendered).to have_content('Amount: $20')
  end

  it 'displays the "New Transaction" link' do
    render

    expect(rendered).to have_link('New Transaction', href: new_group_entity_path(group_id: assigns(:group).id))
  end

  it 'displays the "Back" link' do
    render

    expect(rendered).to have_link('Back', href: groups_path)
  end
end
