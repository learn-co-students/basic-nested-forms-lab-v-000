require 'rails_helper'
require 'capybara/rspec'

describe "the recipe form", :type => :feature do
  it "sets the title" do
    visit '/recipes/new'
    fill_in :recipe_title, with: 'Chocolate Cake'
    find('input[name="commit"]').click
    expect(Recipe.last.title).to eq 'Chocolate Cake'
  end


end
