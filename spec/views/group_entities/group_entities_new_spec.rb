require 'rails_helper'

RSpec.describe 'group_entities/create.html.erb', type: :view do
  before(:each) do
    assign(:group_entity, create(:group_entity))
    assign(:group_id, 1)
    assign(:groups, [create(:group)])
  end

  it 'displays the new transaction form' do
    render

    expect(rendered).to have_selector('h1', text: 'New Transaction')
    expect(rendered).to have_selector('form[action="/group_entities"][method="post"]')
    expect(rendered).to have_selector('input[type="submit"][value="Submit"]')
  end

  it 'displays the group selection dropdown' do
    render

    expect(rendered).to have_selector('label', text: 'Group ID')
    expect(rendered).to have_selector('select#group_entity_group_id')
  end

  it 'displays the entity fields' do
    render

    expect(rendered).to have_selector('label', text: 'Name')
    expect(rendered).to have_selector('input#group_entity_entity_attributes_name[type="text"]')
    expect(rendered).to have_selector('label', text: 'Amount')
    expect(rendered).to have_selector('input#group_entity_entity_attributes_amount[type="number"]')
  end

  it 'displays a link to go back to the group' do
    render

    expect(rendered).to have_link('Back to transaction', href: group_path(1))
  end
end
