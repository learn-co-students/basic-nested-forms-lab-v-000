require 'rails_helper'
require 'capybara/rspec'

describe "the mama-goose form", :type => :feature do
  it "sets the name" do
    visit '/mamageese/new'
    fill_in :mamagoose_name, with: 'Magdelina'
    find('input[name="commit"]').click
    expect(Mamagoose.last.name).to eq 'Magdelina'
  end

  it "adds little goose babies" do
    visit '/mamageese/new'
    fill_in :mamagoose_gozlinot_attributes_0_name, with: 'Zaza'
    fill_in :mamagoose_gozlinot_attributes_0_age, with: '7'
    fill_in :mamagoose_gozlinot_attributes_1_name, with: 'Bala'
    fill_in :mamagoose_gozlinot_attributes_1_age, with: '3'
    find('input[name="commit"]').click
    expect(Mamagoose.last.gozlinot.map(&:name)).to eq ['Zaza', 'Bala']
    expect(Mamagoose.last.gozlinot.map(&:age)).to eq [7, 3]
  end
end
