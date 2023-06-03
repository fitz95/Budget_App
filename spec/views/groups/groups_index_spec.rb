require 'rails_helper'

RSpec.describe 'groups/index.html.erb', type: :view do
  before(:each) do
    assign(:groups, [create(:group), create(:group)])
    assign(:group_entity_totals, { 1 => 100, 2 => 200 })
  end

  it 'displays all groups' do
    render

    expect(rendered).to have_selector('h1', text: 'Groups')
    expect(rendered).to have_selector('.group', count: 2)
  end

  it 'displays the total amount for each group' do
    render

    expect(rendered).to have_selector('.group .total-amount', text: 'Total Amount: 100', count: 1)
    expect(rendered).to have_selector('.group .total-amount', text: 'Total Amount: 200', count: 1)
  end
end
