require 'rails_helper'
describe "a recipe " do
  it 'should be able to have ratings' do
    user = FactoryGirl.create(:user) #this is to set up a test user
    login_as(user, :scope => :user)
    visit '/recipes/new'
    fill_in('Title', :with => 'chicken')
    fill_in('Author', :with => 'chicken')
    fill_in('Ingredients', :with => 'chicken')
    fill_in('Instructions', :with => 'chicken')
    click_button('Create Recipe')
    select('1', :from => 'rating[number]')
    click_button('Add Rating')
    page.should have_content('1')

  end

  it 'should display recipes ordered by average rating' do
    visit '/recipes'
    expect(Recipe.order('-average_rating asc'))
    page.should have_content('Average Rating')
  end
end
