require 'rails_helper'
describe "newest recipes" do
  it 'should display newest recipes' do
    visit '/recipes'
    page.should have_content('Newest Recipes')
    expect(recipes.newest).to eq (Recipe.order(created_at: :asc).limit(2))
  end
end
